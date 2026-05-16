#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import sys
import json
import yaml
import threading
import argparse
import rospy
import rospkg
import tf
import copy
from pathlib import Path
import time
from nav_msgs.msg import OccupancyGrid
from dynamic_reconfigure.server import Server
from geometry_msgs.msg import (
    Pose,
    PoseStamped,
    PoseArray,
    PoseWithCovarianceStamped,
)
from std_msgs.msg import Int8, String, Empty
from std_stamped_msgs.msg import (
    StringStamped,
    StringFeedback,
    StringResult,
    StringAction,
)
from std_stamped_msgs.srv import StringService, StringServiceResponse

slam_manager_dir = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, slam_manager_dir)
from process_manager import ProcessManager, parse_launch_command

common_func_dir = os.path.join(
    rospkg.RosPack().get_path("agv_common_library"), "scripts"
)
if not os.path.isdir(common_func_dir):
    common_func_dir = os.path.join(
        rospkg.RosPack().get_path("agv_common_library"), "release"
    )
sys.path.insert(0, common_func_dir)

agv_mongodb_dir = os.path.join(
    rospkg.RosPack().get_path("agv_mongodb"), "scripts"
)
if not os.path.isdir(agv_mongodb_dir):
    agv_mongodb_dir = os.path.join(
        rospkg.RosPack().get_path("agv_mongodb"), "release"
    )
sys.path.insert(0, agv_mongodb_dir)

from mongodb import mongodb
from module_manager import ModuleServer, ModuleClient, ModuleStatus
from common_function import (
    EnumString,
    lockup_pose,
    offset_pose_x,
    distance_two_pose,
    delta_angle,
    dict_to_obj,
    merge_two_dicts,
    get_line_info,
    getframeinfo,
    stack,
)


def get_node_list():
    """Return list of running ROS nodes."""
    return [line.strip() for line in os.popen("rosnode list").readlines()]


def kill_rosnode(node_name):
    """Try to kill a ROS node. Return True if success, else False."""
    result = os.popen(f"rosnode kill {node_name}").read()
    return f"killed {node_name}" in result

def kill_nodes_and_verify(nodes_to_kill, max_retries=3):
    for attempt in range(max_retries):
        running_nodes = get_node_list()
        remaining_nodes = [n for n in nodes_to_kill if n in running_nodes]
        rospy.loginfo(f"Remaining nodes: {remaining_nodes}")

        if not remaining_nodes:
            rospy.loginfo("All nodes killed successfully.")
            return True

        for node in remaining_nodes:
            success = kill_rosnode(node)
            if success:
                rospy.loginfo(f"Killed node \"{node}\".")
            else:
                rospy.logerr(f"Failed to kill node \"{node}\" (attempt {attempt + 1}).")

        time.sleep(1)  # Delay before retry

    # Final check
    running_nodes = get_node_list()
    still_running = [n for n in nodes_to_kill if n in running_nodes]
    if still_running:
        rospy.logwarn(f"Some nodes could not be killed: {still_running}")
        return False

    return True



class MainState(EnumString):
    NONE = -1
    INIT = 0
    SWITCHING_MAPPING = 1
    MAPPING = 2
    SWITCHING_LOCALIZATION = 3
    LOCALIZING = 4
    ERROR = 5
    INIT_LOCALIZING = 6
    INIT_MAPPING = 7
    ERROR_MAPPING = 8
    ERROR_LOCALIZING = 9
    INIT_STATIC_MAP = 10
    SWITCHING_STATIC_MAP = 11
    STATIC_MAP_LOADED = 12
    ERROR_LOAD_STATIC_MAP = 13
    MAPPING_FINISHED = 14


class SlamManager(object):
    def __init__(self, name, *args, **kwargs):
        self.init_variable(*args, **kwargs)
        rospy.on_shutdown(self.shutdown)
        # Initial
        self.config_file = kwargs["config_file"]
        self.slam_init(self.config_file)
        # Publisher
        self.reset_odom_pub = rospy.Publisher(
            "/reset_odom", Empty, queue_size=5
        )
        self.initial_pose_pub = rospy.Publisher(
            "/initialpose", PoseWithCovarianceStamped, queue_size=5
        )
        # Subscriber
        rospy.Subscriber("/robot_status", StringStamped, self.robot_status_cb)
        rospy.Subscriber(
            "/mapping_request", StringStamped, self.mapping_request_cb
        )
        rospy.Subscriber(
            "/map_load_request", StringStamped, self.map_load_request_cb
        )
        rospy.Subscriber(
            "/static_map_load_request", StringStamped, self.static_map_load_request_cb
        )
        rospy.Subscriber(
            "/map_save_request", StringStamped, self.map_save_request_cb
        )
        rospy.Subscriber(
            "/temp_savemap_request", StringStamped, self.map_temp_savemap_cb
        )
        rospy.Subscriber("/map", OccupancyGrid, self.map_cb)

        # ModuleServer
        self._asm = ModuleServer(name)
        # Service
        rospy.Service("/check_map", StringService, self.handle_check_map)
        rospy.Service("/mapping_request", StringService, self.handle_mapping_request)
        rospy.Service("/map_load_request", StringService, self.handle_map_load_request)
        rospy.Service("/static_map_load_request", StringService, self.handle_static_map_load_request)
        rospy.Service("/map_save_request", StringService, self.handle_map_save_request)
        rospy.Service("/temp_savemap_request", StringService, self.handle_temp_savemap_request)
        # Loop
        self.loop()

    def check_map_topic_connection(self):
        """
        Check /map topic publisher/subscriber connection status
        Returns: dict with connection info
        """
        try:
            topic_name = "/map"

            # Get publisher info using ROS Master API
            try:
                # Get the master API
                master = rospy.get_master()

                # Get system state (publishers, subscribers, services)
                code, msg, state = master.getSystemState()

                # state[0] = publishers, state[1] = subscribers, state[2] = services
                # Each is a list of [topic_name, [node_list]]
                publishers = state[0]

                # Find publishers for /map topic
                map_pubs = []
                for topic, nodes in publishers:
                    if topic == topic_name:
                        map_pubs = nodes
                        break

                num_publishers = len(map_pubs)

            except Exception as e:
                rospy.logwarn(f"Could not get publisher info: {e}")
                num_publishers = 0
                map_pubs = []

            info = {
                "topic": topic_name,
                "num_publishers": num_publishers,
                "publishers": map_pubs,
                "map_received": self.map_received,
                "map_publisher_id": self.map_publisher_id
            }

            rospy.loginfo("=" * 60)
            rospy.loginfo("📡 /map TOPIC CONNECTION STATUS:")
            rospy.loginfo(f"  • Number of publishers: {num_publishers}")
            if map_pubs:
                rospy.loginfo(f"  • Publisher nodes: {map_pubs}")
            else:
                rospy.logwarn(f"  • No publishers found for {topic_name}")
            rospy.loginfo(f"  • Map received by subscriber: {self.map_received}")
            rospy.loginfo(f"  • Current map publisher ID: {self.map_publisher_id}")
            rospy.loginfo("=" * 60)

            return info

        except Exception as e:
            rospy.logerr(f"Error checking map topic connection: {e}")
            import traceback
            rospy.logerr(traceback.format_exc())
            return None

    """
    #### ##    ## #### ######## ####    ###    ##
     ##  ###   ##  ##     ##     ##    ## ##   ##
     ##  ####  ##  ##     ##     ##   ##   ##  ##
     ##  ## ## ##  ##     ##     ##  ##     ## ##
     ##  ##  ####  ##     ##     ##  ######### ##
     ##  ##   ###  ##     ##     ##  ##     ## ##
    #### ##    ## ####    ##    #### ##     ## ########
    """

    def init_variable(self, *args, **kwargs):
        myargv = rospy.myargv(argv=sys.argv)
        print(myargv)
        self.subfix = ""
        if myargv[0][-3:] == ".py":
            self.subfix = "py"
        if myargv[0][-4:] == ".bin":
            self.subfix = "bin"
        rospy.loginfo("Subfix: {}".format(self.subfix))
        self.simulation = kwargs["simulation"]
        rospy.loginfo("simulation: {}".format(self.simulation))
        self.simulation_str = "true" if self.simulation else "false"
        # TF
        self.tf_listener = tf.TransformListener()
        self.map_frame = "map"
        self.odom_frame = "odom"
        self.robot_base = "base_footprint"
        # Flag and state
        self.main_state = MainState.INIT
        self.prev_state = MainState.NONE
        self.mapping_request = False
        self.load_map_request = False
        self.load_static_map_request = False
        self.current_map = ""
        self.save_map_done = False
        self.map_received = False
        self.map_publisher_id = ""
        self.prev_map_publisher_id = ""
        self.time_from_last_tf_normal = 0.0
        self.map_load_requesting = ""
        self.first_localization = False
        self.transfrom_error_cnt = 0
        self.load_map_cnt = 0
        self.mapping_cnt = 0
        self.mapping_req_cnt = 0
        self.load_map_req_cnt = 0
        self.cal_localization_time = False
        self.cal_load_mapping_time = False
        self.transform_error = False
        self.last_transform_normal = rospy.get_time()
        self.mapping_timeout = 30
        self.localization_timeout = 10
        # DB config
        mongodb_address = rospy.get_param("/mongodb_address")
        rospy.loginfo(mongodb_address)
        self.db = mongodb(mongodb_address)
        #
        self.initial_pose = PoseWithCovarianceStamped()
        # fmt: off
        self.initial_pose.pose.covariance = [
            0.25, 0.0, 0.0, 0.0, 0.0, 0.0,
            0.0, 0.25, 0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
            0.0, 0.0, 0.0, 0.0, 0.0, 0.06853892326654787,
        ]
        # fmt: on
        self.first_init_pose = True
        self.save_last_pose = False
        self.last_time_update_last_pose = rospy.get_time()
        # Process manager for launching nodes
        self.process_manager = ProcessManager()

        # Diagnostic check throttling
        self.last_map_check_time = 0.0

    def slam_init(self, cfg_file):
        try:
            with open(cfg_file) as file:
                self.slam_config_dict = yaml.load(file, Loader=yaml.Loader)
                if "load_map_timeout" in self.slam_config_dict["mapping"]:
                    self.mapping_timeout = self.slam_config_dict["mapping"]["load_map_timeout"]
                if "load_map_timeout" in self.slam_config_dict["localization"]:
                    self.localization_timeout = self.slam_config_dict["localization"]["load_map_timeout"]
                self.slam_static_node = self.slam_config_dict["localization"]["static_map_node"] if "static_map_node" in self.slam_config_dict["localization"] else []
        except Exception as e:
            rospy.logerr("slam_init: {}".format(e))

    def shutdown(self):
        # Clean shutdown of all processes
        rospy.loginfo("Shutting down SLAM Manager...")

        # Stop process manager
        if hasattr(self, 'process_manager'):
            self.process_manager.stop(timeout=10.0)

        print("Shutdown: {}".format(rospy.get_name()))

    """
    ######## ##     ## ##    ##  ######  ######## ####  #######  ##    ##
    ##       ##     ## ###   ## ##    ##    ##     ##  ##     ## ###   ##
    ##       ##     ## ####  ## ##          ##     ##  ##     ## ####  ##
    ######   ##     ## ## ## ## ##          ##     ##  ##     ## ## ## ##
    ##       ##     ## ##  #### ##          ##     ##  ##     ## ##  ####
    ##       ##     ## ##   ### ##    ##    ##     ##  ##     ## ##   ###
    ##        #######  ##    ##  ######     ##    ####  #######  ##    ##
    """

    def load_tf(self):
        if "transform" in self.slam_config_dict:
            rospy.loginfo("Load TF")
            nodes = get_node_list()
            for n in self.slam_config_dict["transform"]["ros_node"]:
                if n in nodes:
                    kill_rosnode(n)

            # Parse launch command and use RoslaunchAPIManager
            launch_cmd = self.slam_config_dict["transform"]["launch_file"]
            package, launch_file = parse_launch_command(launch_cmd)

            if package and launch_file:
                args = [
                    ("simulation", self.simulation_str),
                    ("subfix", self.subfix)
                ]
                rospy.loginfo(f"Launching TF: {package}/{launch_file}")
                # Note: TF launch is separate, not managed by main process_manager
                # Could use a separate manager if needed
                success = self.process_manager.launch_file(package, launch_file, args)
                if not success:
                    rospy.logerr("Failed to launch TF")
            else:
                rospy.logerr(f"Invalid transform launch command: {launch_cmd}")
        else:
            rospy.logwarn("transform is not config")

    def do_mapping(self):
        rospy.loginfo("Begin mapping")

        # Stop any existing processes managed by process_manager
        self.process_manager.stop()

        # Dùng self.process_manager.stop() là đủ rồi nhưng đề phòng có node
        # không được launch bằng slam_manager
        all_nodes = (
            self.slam_config_dict["mapping"]["ros_node"]
            + self.slam_config_dict["localization"]["ros_node"]
            + self.slam_static_node
        )
        kill_nodes_and_verify(all_nodes)

        rospy.loginfo(10 * "-" + "MAPPING" + 10 * "-")

        self.map_publisher_id = ""

        # Parse launch command and use RoslaunchAPIManager
        launch_cmd = self.slam_config_dict["mapping"]["launch_file"]
        package, launch_file = parse_launch_command(launch_cmd)

        if package and launch_file:
            args = [
                ("simulation", self.simulation_str),
                ("subfix", self.subfix)
            ]
            rospy.loginfo(f"Launching mapping: {package}/{launch_file}")
            success = self.process_manager.launch_file(package, launch_file, args)

            if not success:
                rospy.logerr("Failed to start mapping process")
        else:
            rospy.logerr(f"Invalid mapping launch command: {launch_cmd}")

    def do_map_save(self, map_file, complete_event=None):
        rospy.loginfo("Save map file: {}".format(map_file))
        try:
            self.slam_init(self.config_file)
            cmd = "{} --map_file {} --finish_trajectory true".format(
                self.slam_config_dict["mapping"]["map_save_cmd"], map_file
            )
            rospy.loginfo(cmd)
            os.system(cmd)
            self.current_map = map_file
            rospy.loginfo("Map save image successful")
            self.save_map_done = True
            if complete_event:
                complete_event.set()
        except Exception as e:
            rospy.logerr("do_map_save error: {}".format(e))
            if complete_event:
                complete_event.set()

    def do_temp_map_save(self, map_file, complete_event=None):
        rospy.loginfo("Save map file: {}".format(map_file))
        try:
            self.slam_init(self.config_file)
            cmd = "{} --map_file {} --finish_trajectory false".format(
                self.slam_config_dict["mapping"]["map_save_cmd"], map_file
            )
            rospy.loginfo(cmd)
            os.system(cmd)
            rospy.loginfo("Temp map save image successful")
            if complete_event:
                complete_event.set()
        except Exception as e:
            rospy.logerr("do_temp_map_save error: {}".format(e))
            if complete_event:
                complete_event.set()

    def do_map_load(self, map_file):
        rospy.loginfo("Load map file: {}".format(map_file))

        # Stop any existing processes managed by process_manager
        self.process_manager.stop()

        # Dùng self.process_manager.stop() là đủ rồi nhưng đề phòng có node
        # không được launch bằng slam_manager
        all_nodes = (
            self.slam_config_dict["mapping"]["ros_node"]
            + self.slam_config_dict["localization"]["ros_node"]
            + self.slam_static_node
        )
        kill_nodes_and_verify(all_nodes)

        rospy.loginfo(10 * "-" + "LOCALIZATION" + 10 * "-")

        self.map_publisher_id = ""
        self.current_map = map_file
        aruco_file_path = map_file + ".json"
        initial_pose_x, initial_pose_y, initial_pose_a = self.get_initial_pose()

        # Parse launch command and use RoslaunchAPIManager
        launch_cmd = self.slam_config_dict["localization"]["launch_file"]
        package, launch_file = parse_launch_command(launch_cmd)

        if package and launch_file:
            args = [
                ("simulation", self.simulation_str),
                ("map_file", map_file),
                ("initial_pose_x", str(initial_pose_x)),
                ("initial_pose_y", str(initial_pose_y)),
                ("initial_pose_a", str(initial_pose_a)),
                ("aruco_file_path", aruco_file_path),
                ("subfix", self.subfix)
            ]
            rospy.loginfo(f"Launching localization: {package}/{launch_file}")
            success = self.process_manager.launch_file(package, launch_file, args)

            if not success:
                rospy.logerr("Failed to start localization process")
        else:
            rospy.logerr(f"Invalid localization launch command: {launch_cmd}")

    def do_map_static_load(self, map_file):
        rospy.loginfo("Load static map file: {}".format(map_file))

        # Stop any existing processes managed by process_manager
        self.process_manager.stop()

        # Dùng self.process_manager.stop() là đủ rồi nhưng đề phòng có node
        # không được launch bằng slam_manager
        all_nodes = (
            self.slam_config_dict["mapping"]["ros_node"]
            + self.slam_config_dict["localization"]["ros_node"]
            + self.slam_static_node
        )
        kill_nodes_and_verify(all_nodes)

        rospy.loginfo(10 * "-" + "EDITING_MAP" + 10 * "-")

        self.map_publisher_id = ""
        self.current_map = map_file

        # Parse launch command and use RoslaunchAPIManager
        launch_cmd = self.slam_config_dict["localization"]["launch_static_map"]
        package, launch_file = parse_launch_command(launch_cmd)

        if package and launch_file:
            args = [
                ("simulation", self.simulation_str),
                ("map_file", map_file),
                ("subfix", self.subfix)
            ]
            rospy.loginfo(f"Launching static map: {package}/{launch_file}")
            success = self.process_manager.launch_file(package, launch_file, args)

            if not success:
                rospy.logerr("Failed to start static map process")
        else:
            rospy.logerr(f"Invalid static map launch command: {launch_cmd}")

    def begin_load_static_map(self, map_file):
        rospy.loginfo("Begin load static map: {}".format(map_file))
        # self.load_map_cnt += 1
        # rospy.loginfo("Load map time: {}".format(self.load_map_cnt))
        self.first_static_localization = True
        self.map_static_load_thread = threading.Thread(
            target=self.do_map_static_load, args=(map_file,)
        )
        self.map_static_load_thread.start()

    def begin_load_map(self, map_file):
        # self.load_map_cnt += 1
        # rospy.loginfo("Load map time: {}".format(self.load_map_cnt))
        self.first_localization = True
        self.map_load_thread = threading.Thread(
            target=self.do_map_load, args=(map_file,)
        )
        self.map_load_thread.start()
        self.tf_thread = threading.Thread(target=self.load_tf, args=())
        self.tf_thread.start()

    def begin_mapping(self):
        # self.mapping_cnt += 1
        # rospy.loginfo("Switch mapping time: {}".format(self.mapping_cnt))
        self.reset_odom_pub.publish(Empty())
        self.first_localization = True
        # self.initial_pose.header.stamp = rospy.Time.now()
        # self.initial_pose_pub.publish(self.initial_pose)
        self.tf_thread = threading.Thread(target=self.load_tf, args=())
        self.tf_thread.start()
        self.mapping_thread = threading.Thread(target=self.do_mapping)
        self.mapping_thread.start()

    def get_initial_pose(self):
        return 0.0, 0.0, 0.0

    def check_and_gen_map(self, map_file, force_gen_map=False):
        rospy.loginfo(10 * "-" + "CHECK AND GEN MAP" + 10 * "-")
        self.slam_init(self.config_file)
        # TODO: When need download map?
        file_check = (
            map_file
            + "."
            + self.slam_config_dict["localization"]["map_file_ext"]
        )
        rospy.loginfo("Check map: {}".format(file_check))
        caller = getframeinfo(stack()[1][0])
        rospy.logwarn("Call check_and_gen_map from: {} [{}] in function {}".format(
            os.path.basename(caller.filename), caller.lineno, caller.function
        ))
        if Path(file_check).exists() and not force_gen_map:
            return True
        else:
            if not force_gen_map:
                rospy.logwarn(
                    "The requesting map is not exist. Try to create file: {}".format(
                        file_check
                    )
                )
            else:
                rospy.loginfo("Force gen map: {}".format(file_check))

            if "map_file_ext" in self.slam_config_dict["localization"]:
                map_file_ext = ""
                map_file_ext = self.slam_config_dict["localization"]["map_file_ext"]
                # TODO: Check other file exist?
                if "image_file_input" in self.slam_config_dict["localization"]:
                    image_file_input = self.slam_config_dict["localization"][
                        "image_file_input"
                    ]
                if (
                    "download_image_map"
                    in self.slam_config_dict["localization"]
                ):
                    download_image_map = self.slam_config_dict["localization"][
                        "download_image_map"
                    ]
                else:
                    download_image_map = True
                if download_image_map:
                    rospy.loginfo(
                        'Need download "{}" map'.format(image_file_input)
                    )
                    if map_file_ext != "":
                        rospy.loginfo("Need download map_file_ext: {}".format(map_file_ext))
                else:
                    rospy.logwarn("Don't need download image map")
                if not Path(file_check).exists() or force_gen_map:
                    map_info = {}
                    # NOTE: Download from db
                    if download_image_map:
                        rospy.loginfo("Download map first time")
                        map_info = self.download_map_img(map_file, image_file_input) # Download from db
                        if map_file_ext != "":
                            file_name = map_file + "." + map_file_ext
                            # Do chưa có tính năng cập nhật file pbstream đã chỉnh sửa từ bộ nhớ vào DB
                            # nên chỉ download pbstream nếu lần đầu chưa có pbstream
                            if not Path(file_name).exists():
                                [map_dir, map_name] = map_file.rsplit("/", 1)
                                rospy.loginfo("Download map_file_ext: {}{}.{}".format(map_dir, map_name, map_file_ext))
                                self.db.downloadFile(map_name, file_name, "map", map_file_ext)
                            else:
                                rospy.logwarn("File {} already exists. No need download".format(file_name))

                    # NOTE: Check xem đã download thành công chưa? If map_file_ext = pbstream, no need check
                    downloaded_file = map_file + "." + image_file_input
                    if map_file_ext == "pbstream":
                        downloaded_file = map_file + "." + map_file_ext
                    begin_download = rospy.get_time()
                    cnt = 0
                    while (
                        download_image_map
                        and not Path(downloaded_file).exists()
                        and rospy.get_time() - begin_download < 3.0
                    ):
                        cnt += 1
                        rospy.loginfo("Re-download map time: {}".format(cnt))
                        # Download from db
                        map_info = self.download_map_img(map_file, image_file_input) # Download from db
                        rospy.Rate(5.0).sleep()
                    if (
                        not Path(downloaded_file).exists()
                        and download_image_map
                    ):
                        rospy.logerr(
                            "Downloaded image file not exist: {}".format(
                                downloaded_file
                            )
                        )
                        return False

                    # NOTE: Convert map (for mrtp)
                    if (
                        "convert_map_cmd"
                        in self.slam_config_dict["localization"]
                    ):
                        convert_map_cmd = self.slam_config_dict["localization"][
                            "convert_map_cmd"
                        ]
                        rospy.loginfo("Creating file: {}".format(file_check))
                        if (
                        "method"
                            in self.slam_config_dict["localization"]
                        ):
                            if self.slam_config_dict["localization"]["method"] == "cartographer":
                                # TODO: Chỉ cần không khai báo convert_map_cmd trong slam_config là được
                                if map_info == {} or map_info is None:
                                    rospy.logwarn("Cartographer map info is empty. No need convert map")
                                    return True
                            origin_x = map_info["info"]["origin"]["position"]["x"]
                            origin_y = map_info["info"]["origin"]["position"]["y"]
                            resolution = map_info["info"]["resolution"]
                            map_width = map_info["info"]["width"] * resolution
                            map_height = map_info["info"]["height"] * resolution
                            cx = origin_x + map_width / 2.0
                            cy = origin_y + map_height / 2.0
                            # image2gridmap -w -i $1.$2 --res $3 -o $4.gridmap --cx $5 --cy $6
                            # image2gridmap [-w] [–py <0.0>] [–px <0.0>] [–cy <0.0>] [–cx <0.0>] -r <0.1> [-o <map.gridmap.gz>] -i <map_image.png> [–] [–version] [-h]
                            cmd = "{} {} {} {} {} {} {}".format(
                                convert_map_cmd,
                                map_file,
                                image_file_input,
                                resolution,
                                map_file,
                                cx,
                                cy,
                            )
                            rospy.logwarn("Convert map cmd: {}".format(cmd))
                            os.system(cmd)
                        else:
                            cmd = "{} {} {} {}".format(convert_map_cmd, map_file, image_file_input, map_file)
                            rospy.logwarn("Convert map cmd: {}".format(cmd))
                            os.system(cmd)

            if Path(file_check).exists():
                return True
            else:
                rospy.logerr("Create file error: {}".format(file_check))
                return False

    def download_map_img(self, map_file, image_file_type):
        [map_dir, map_name] = map_file.rsplit("/", 1)
        rospy.loginfo(
            'Downloading map: "{}.{}" to "{}"'.format(
                map_name, image_file_type, map_dir
            )
        )

        map_info = self.db.downloadMapImage(map_name, map_dir, image_file_type)
        return map_info

    def check_position(self):
        current_pose = lockup_pose(
            self.tf_listener, self.map_frame, self.robot_base
        )
        if current_pose == None:
            self.transfrom_error_cnt += 1
            if (
                self.transfrom_error_cnt >= 5
                and rospy.get_time() - self.last_transform_normal >= 1.0
            ):
                self.transform_error = True
            return
        self.first_localization = False
        self.transfrom_error_cnt = 0
        self.last_transform_normal = rospy.get_time()
        self.transform_error = False

    """
     ######     ###    ##       ##       ########     ###     ######  ##    ##
    ##    ##   ## ##   ##       ##       ##     ##   ## ##   ##    ## ##   ##
    ##        ##   ##  ##       ##       ##     ##  ##   ##  ##       ##  ##
    ##       ##     ## ##       ##       ########  ##     ## ##       #####
    ##       ######### ##       ##       ##     ## ######### ##       ##  ##
    ##    ## ##     ## ##       ##       ##     ## ##     ## ##    ## ##   ##
     ######  ##     ## ######## ######## ########  ##     ##  ######  ##    ##
    """

    def robot_status_cb(self, msg):
        robot_status = json.loads(msg.data)
        if "status" in robot_status:
            if robot_status["status"] == "WAITING_INIT_POSE":
                self.first_init_pose = True
            if robot_status["status"] != "WAITING_INIT_POSE" and robot_status["status"] != "ERROR":
                self.save_last_pose = True
            else:
                self.save_last_pose = False

    def mapping_request_cb(self, msg):
        # self.mapping_req_cnt += 1
        # rospy.loginfo("Mapping request time: {}".format(self.mapping_req_cnt))
        self.mapping_request = True

    def map_load_request_cb(self, msg):
        rospy.loginfo(10 * "-" + "REQUEST LOAD MAP" + 10 * "-")
        # self.load_map_req_cnt += 1
        # rospy.loginfo("Load map request time: {}".format(self.load_map_req_cnt))
        if self.check_and_gen_map(msg.data, force_gen_map=True):
            self.load_map_request = True
            self.map_load_requesting = msg.data
        else:
            rospy.logerr("Map file not exist: {}".format(msg.data))

    def static_map_load_request_cb(self, msg):
        rospy.loginfo(10 * "-" + "REQUEST LOAD STATIC MAP" + 10 * "-")
        # self.load_map_req_cnt += 1
        # rospy.loginfo("Load map request time: {}".format(self.load_map_req_cnt))
        self.load_static_map_request = True
        self.map_load_requesting = msg.data

    def map_save_request_cb(self, msg):
        complete_event = threading.Event()
        map_save_thread = threading.Thread(
            target=self.do_map_save, args=(msg.data, complete_event)
        )
        map_save_thread.start()
        # Wait for thread to complete with timeout (30 seconds)
        success = complete_event.wait(timeout=30.0)
        if success:
            rospy.loginfo("Map save completed successfully")
            return True
        else:
            rospy.logerr("Map save timeout or failed")
            return False

    def map_temp_savemap_cb(self, msg):
        complete_event = threading.Event()
        temp_map_save_thread = threading.Thread(
            target=self.do_temp_map_save, args=(msg.data, complete_event)
        )
        temp_map_save_thread.start()
        # Wait for thread to complete with timeout (30 seconds)
        success = complete_event.wait(timeout=30.0)
        if success:
            rospy.loginfo("Temp map save completed successfully")
            return True
        else:
            rospy.logerr("Temp map save timeout or failed")
            return False

    def map_cb(self, msg):
        self.map_received = True
        if self.map_publisher_id == "":
            rospy.logwarn('Map publish id received: {}'.format(msg._connection_header["callerid"]))
        self.map_publisher_id = msg._connection_header["callerid"]
        if self.prev_map_publisher_id != self.map_publisher_id:
            rospy.loginfo("New map callerid: {}".format(self.map_publisher_id))
        self.prev_map_publisher_id = self.map_publisher_id

    def handle_check_map(self, req):
        if self.check_and_gen_map(req.request):
            return StringServiceResponse("OK")
        else:
            return StringServiceResponse("NG")

    def handle_mapping_request(self, req):
        try:
            rospy.loginfo("Mapping request service handle")
            self.mapping_request_cb(StringStamped(data=req.request))
            return StringServiceResponse("SUCCESS")
        except Exception as e:
            rospy.logerr("handle_mapping_request error: {}".format(e))
            return StringServiceResponse("FAILED")

    def handle_map_load_request(self, req):
        try:
            rospy.loginfo("Map load request service handle: {}".format(req.request))
            self.map_load_request_cb(StringStamped(data=req.request))
            return StringServiceResponse("SUCCESS")
        except Exception as e:
            rospy.logerr("handle_map_load_request error: {}".format(e))
            return StringServiceResponse("FAILED")

    def handle_static_map_load_request(self, req):
        try:
            rospy.loginfo("Static map load request service handle: {}".format(req.request))
            self.static_map_load_request_cb(StringStamped(data=req.request))
            return StringServiceResponse("SUCCESS")
        except Exception as e:
            rospy.logerr("handle_static_map_load_request error: {}".format(e))
            return StringServiceResponse("FAILED")

    def handle_map_save_request(self, req):
        try:
            rospy.loginfo("Map save request service handle: {}".format(req.request))
            success = self.map_save_request_cb(StringStamped(data=req.request))
            if success:
                return StringServiceResponse("SUCCESS")
            else:
                return StringServiceResponse("FAILED")
        except Exception as e:
            rospy.logerr("handle_map_save_request error: {}".format(e))
            return StringServiceResponse("FAILED")

    def handle_temp_savemap_request(self, req):
        try:
            rospy.loginfo("Temp savemap request service handle: {}".format(req.request))
            success = self.map_temp_savemap_cb(StringStamped(data=req.request))
            if success:
                return StringServiceResponse("SUCCESS")
            else:
                return StringServiceResponse("FAILED")
        except Exception as e:
            rospy.logerr("handle_temp_savemap_request error: {}".format(e))
            return StringServiceResponse("FAILED")

    """
    ##        #######   #######  ########
    ##       ##     ## ##     ## ##     ##
    ##       ##     ## ##     ## ##     ##
    ##       ##     ## ##     ## ########
    ##       ##     ## ##     ## ##
    ##       ##     ## ##     ## ##
    ########  #######   #######  ##
    """

    def loop(self):
        begin_mapping_time = rospy.get_time()
        begin_load_map_time = rospy.get_time()
        begin_load_static_map_time = rospy.get_time()
        last_localization_err = False
        # Loop
        r = rospy.Rate(5.0)
        while not rospy.is_shutdown():
            localization_error = False
            self.check_position()
            self.time_from_last_tf_normal = (
                rospy.get_time() - self.last_transform_normal
            )
            if (self.transform_error and not self.first_localization) or (
                self.transform_error
                and self.first_localization
                and self.time_from_last_tf_normal > 30.0
            ):
                localization_error = True
                if last_localization_err != localization_error:
                    rospy.logerr(
                        "TF timeout is first: {}".format(
                            self.first_localization
                        )
                    )
                last_localization_err = localization_error

            if self.main_state != self.prev_state:
                rospy.loginfo(
                    "Main state: {} -> {}".format(
                        self.prev_state.toString(), self.main_state.toString()
                    )
                )
                self.prev_state = self.main_state

            # State: INIT
            if self.main_state == MainState.INIT:
                self.save_map_done = False
                if self.load_map_request:
                    self.load_map_request = False
                    self.main_state = MainState.INIT_LOCALIZING
                if self.mapping_request:
                    self.mapping_request = False
                    self.main_state = MainState.INIT_MAPPING
                # If mrpt alive
                nodes = get_node_list()
                for n in self.slam_config_dict["localization"]["ros_node"]:
                    if n in nodes:
                        if not localization_error:
                            # Set current_map
                            if (
                                "map_file_param"
                                in self.slam_config_dict["localization"]
                            ):
                                self.current_map = rospy.get_param(
                                    self.slam_config_dict["localization"][
                                        "map_file_param"
                                    ],
                                    "",
                                )
                                if self.current_map != "":
                                    self.main_state = MainState.LOCALIZING
                                else:
                                    rospy.logerr(
                                        "ERROR_LOCALIZING: Cannot get current map"
                                    )
                                self.main_state = MainState.ERROR_LOCALIZING
                            else:
                                rospy.logerr(
                                    "ERROR_LOCALIZING: INIT WHEN LOCALIZING"
                                )
                                self.main_state = MainState.ERROR_LOCALIZING
                # If gmapping alive
                nodes = get_node_list()
                # Cartographer MAPPING and LOCALIZATION both
                for n in self.slam_config_dict["mapping"]["ros_node"]:
                    if n in nodes:
                        if not localization_error:
                            self.main_state = MainState.MAPPING
                        else:
                            rospy.logerr("ERROR_LOCALIZING: INIT WHEN MAPPING")
                            self.main_state = MainState.ERROR_MAPPING
                # TF Error
                if localization_error:
                    rospy.logerr("ERROR_LOCALIZING: INIT")
                    self.main_state = MainState.ERROR_LOCALIZING
            # State: INIT_MAPPING
            elif self.main_state == MainState.INIT_MAPPING:
                self.slam_init(self.config_file)
                self.cal_load_mapping_time = True
                self.transform_error = True
                begin_mapping_time = rospy.get_time()
                self.begin_mapping()
                self.main_state = MainState.SWITCHING_MAPPING
            # State: SWITCHING_MAPPING
            elif self.main_state == MainState.SWITCHING_MAPPING:
                # Diagnostic: Check /map connection every 2 seconds during switching
                current_time = rospy.get_time()
                if current_time - self.last_map_check_time >= 2.0:
                    self.check_map_topic_connection()
                    self.last_map_check_time = current_time

                if (
                    rospy.get_time() - begin_mapping_time > 5.0
                    and not self.transform_error
                    and self.map_publisher_id
                    == self.slam_config_dict["mapping"]["ros_node"][0]
                ):
                    self.check_map_topic_connection()
                    self.main_state = MainState.MAPPING
                if rospy.get_time() - begin_mapping_time > self.mapping_timeout:
                    rospy.logerr(f"ERROR_MAPPING: wait map timeout ({self.mapping_timeout} seconds)")
                    rospy.loginfo("Config MAPPING map publisher: {}".format(self.slam_config_dict["mapping"]["ros_node"][0]))
                    rospy.loginfo("Map publisher id received: {}".format(self.map_publisher_id))
                    # Final diagnostic check
                    self.check_map_topic_connection()
                    self.main_state = MainState.ERROR_MAPPING
                # if localization_error:
                #     rospy.logerr("ERROR_MAPPING: TF")
                #     self.main_state = MainState.ERROR_MAPPING
            # State: INIT_LOCALIZING
            elif self.main_state == MainState.INIT_LOCALIZING:
                self.slam_init(self.config_file)
                self.cal_localization_time = True
                self.transform_error = True
                begin_load_map_time = rospy.get_time()
                self.last_transform_normal = rospy.get_time()
                self.begin_load_map(self.map_load_requesting)
                self.main_state = MainState.SWITCHING_LOCALIZATION
            # State: INIT_STATIC_MAP
            elif self.main_state == MainState.INIT_STATIC_MAP:
                self.slam_init(self.config_file)
                self.cal_load_static_map_time = True
                self.transform_error = True
                begin_load_static_map_time = rospy.get_time()
                # self.last_transform_normal = rospy.get_time()
                if self.slam_static_node:
                    self.begin_load_static_map(self.map_load_requesting)
                    self.main_state = MainState.SWITCHING_STATIC_MAP
                else:
                    rospy.logerr("ERROR_LOAD_STATIC_MAP: slam_static_node is empty")
                    self.main_state = MainState.ERROR_LOAD_STATIC_MAP
            # State: SWITCHING_STATIC_MAP
            elif self.main_state == MainState.SWITCHING_STATIC_MAP:
                # Diagnostic: Check /map connection every 2 seconds during switching
                current_time = rospy.get_time()
                if current_time - self.last_map_check_time >= 2.0:
                    self.check_map_topic_connection()
                    self.last_map_check_time = current_time

                if (
                    rospy.get_time() - begin_load_static_map_time > 5.0
                    and self.map_publisher_id
                    == self.slam_static_node[0]
                ):
                    self.check_map_topic_connection()
                    self.main_state = MainState.STATIC_MAP_LOADED
                load_map_time = rospy.get_time() - begin_load_static_map_time
                if load_map_time > self.localization_timeout:
                    rospy.logerr("ERROR_LOAD_STATIC_MAP: Wait static map timeout: {} seconds".format(round(load_map_time, 2)))
                    rospy.loginfo("Config EDITING_MAP map publisher: {}".format(self.slam_static_node[0]))
                    rospy.loginfo("Map publisher id received: {}".format(self.map_publisher_id))
                    # Final diagnostic check
                    self.check_map_topic_connection()
                    self.main_state = MainState.ERROR_LOAD_STATIC_MAP
                # if localization_error:
                #     rospy.logerr("ERROR_LOCALIZING: TF")
                #     self.main_state = MainState.ERROR_LOCALIZING
            # State: STATIC_MAP_LOADED
            elif self.main_state == MainState.STATIC_MAP_LOADED:
                if self.cal_load_static_map_time:
                    self.cal_load_static_map_time = False
                    rospy.loginfo(10 * "-" + "STATIC MAP LOADED" + 10 * "-")
                    rospy.loginfo(
                        "Switched to STATIC_MAP_LOADED take: {} seconds".format(
                            round(rospy.get_time() - begin_load_static_map_time, 2)
                        )
                    )
                if self.load_map_request:
                    self.load_map_request = False
                    self.main_state = MainState.INIT_LOCALIZING
                if self.mapping_request:
                    self.mapping_request = False
                    self.main_state = MainState.INIT_MAPPING
            # State: ERROR_LOAD_STATIC_MAP
            elif self.main_state == MainState.ERROR_LOAD_STATIC_MAP:
                if self.load_map_request:
                    self.load_map_request = False
                    self.main_state = MainState.INIT_LOCALIZING
                if self.mapping_request:
                    self.mapping_request = False
                    self.main_state = MainState.INIT_MAPPING
                if self.load_static_map_request:
                    self.load_static_map_request = False
                    self.main_state = MainState.INIT_STATIC_MAP
            # State: SWITCHING_LOCALIZATION
            elif self.main_state == MainState.SWITCHING_LOCALIZATION:
                # Diagnostic: Check /map connection every 2 seconds during switching
                current_time = rospy.get_time()
                if current_time - self.last_map_check_time >= 2.0:
                    self.check_map_topic_connection()
                    self.last_map_check_time = current_time

                if (
                    rospy.get_time() - begin_load_map_time > 5.0
                    and not self.transform_error
                    and self.map_publisher_id
                    == self.slam_config_dict["localization"]["ros_node"][0]
                ):
                    self.check_map_topic_connection()
                    self.main_state = MainState.LOCALIZING
                if rospy.get_time() - begin_load_map_time > self.localization_timeout:
                    rospy.logerr(f"ERROR_LOCALIZING: wait map timeout ({self.localization_timeout} seconds)")
                    rospy.loginfo("Transform error: {} ".format(self.transform_error))
                    rospy.loginfo("Config LOCALIZATION map publisher: {}".format(self.slam_config_dict["localization"]["ros_node"][0]))
                    rospy.loginfo("Map publisher id received: {}".format(self.map_publisher_id))
                    # Final diagnostic check
                    self.check_map_topic_connection()
                    self.main_state = MainState.ERROR_LOCALIZING
                # if localization_error:
                #     rospy.logerr("ERROR_LOCALIZING: TF")
                #     self.main_state = MainState.ERROR_LOCALIZING
            # State: MAPPING_FINISHED
            elif self.main_state == MainState.MAPPING_FINISHED:
                if self.load_map_request:
                    self.load_map_request = False
                    self.main_state = MainState.INIT_LOCALIZING
                if self.mapping_request:
                    self.mapping_request = False
                    self.main_state = MainState.INIT_MAPPING
            # State: MAPPING
            elif self.main_state == MainState.MAPPING:
                if self.cal_load_mapping_time:
                    self.cal_load_mapping_time = False
                    rospy.loginfo("+++++++++++++++++++++++++++++++++++++++++++")
                    rospy.loginfo(
                        "Switched to MAPPING take: {} seconds".format(
                            round(rospy.get_time() - begin_mapping_time, 2)
                        )
                    )
                    rospy.loginfo("---------------------------")
                if self.save_map_done:
                    self.save_map_done = False
                    self.main_state = MainState.MAPPING_FINISHED
                if self.load_map_request:
                    self.load_map_request = False
                    self.main_state = MainState.INIT_LOCALIZING
                if self.mapping_request:
                    self.mapping_request = False
                    self.main_state = MainState.INIT_MAPPING
            # State: LOCALIZING
            elif self.main_state == MainState.LOCALIZING:
                if (rospy.get_time() - self.last_time_update_last_pose > 1) and self.save_last_pose:
                    current_pose = lockup_pose(self.tf_listener, self.map_frame, self.robot_base)
                    if current_pose is not None:
                        data = {"pose": {"position": {"x": current_pose.position.x, "y": current_pose.position.y, "z": 0},"orientation": {"x": current_pose.orientation.x,"y": current_pose.orientation.y,"z": current_pose.orientation.z,"w": current_pose.orientation.w}}}
                        if current_pose.position.x != 0 or current_pose.position.y != 0:
                            self.last_time_update_last_pose = rospy.get_time()
                            self.db.saveLastPose(data)
                # if self.first_init_pose:
                #     self.first_init_pose = False
                #     pose = self.db.loadLastPose()
                #     if pose is not None:
                #         self.initial_pose.header.stamp = rospy.Time.now()
                #         self.initial_pose.pose.pose.position.x = pose["position"]["x"]
                #         self.initial_pose.pose.pose.position.y = pose["position"]["y"]
                #         self.initial_pose.pose.pose.position.z = 0
                #         self.initial_pose.pose.pose.orientation.x = pose["orientation"]["x"]
                #         self.initial_pose.pose.pose.orientation.y = pose["orientation"]["y"]
                #         self.initial_pose.pose.pose.orientation.z = pose["orientation"]["z"]
                #         self.initial_pose.pose.pose.orientation.w = pose["orientation"]["w"]
                #         self.initial_pose_pub.publish(self.initial_pose)
                if self.cal_localization_time:
                    self.cal_localization_time = False
                    rospy.loginfo("vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv")
                    rospy.loginfo(
                        "Switched to LOCALIZING take: {} seconds".format(
                            round(rospy.get_time() - begin_load_map_time, 2)
                        )
                    )
                    rospy.loginfo("LOCALIZING map callerid: {}".format(self.map_publisher_id))
                if self.load_map_request:
                    self.load_map_request = False
                    self.main_state = MainState.INIT_LOCALIZING
                    continue
                if self.load_static_map_request:
                    self.load_static_map_request = False
                    if self.slam_static_node:
                        self.main_state = MainState.INIT_STATIC_MAP
                    else:
                        rospy.logerr("ERROR_LOAD_STATIC_MAP: slam_static_node is empty")
                        self.main_state = MainState.ERROR_LOAD_STATIC_MAP
                    continue
                if self.mapping_request:
                    self.mapping_request = False
                    self.main_state = MainState.INIT_MAPPING
                    continue
                if localization_error:
                    rospy.logerr("ERROR_LOCALIZING: TF")
                    self.main_state = MainState.ERROR_LOCALIZING
                    continue
            # State: ERROR
            elif self.main_state == MainState.ERROR:
                pass
            # State: ERROR_MAPPING
            elif self.main_state == MainState.ERROR_MAPPING:
                if not self.transform_error:
                    self.main_state = MainState.MAPPING
                if self.load_map_request:
                    self.load_map_request = False
                    self.main_state = MainState.INIT_LOCALIZING
                if self.mapping_request:
                    self.mapping_request = False
                    self.main_state = MainState.INIT_MAPPING
                # If mrpt alive
                nodes = get_node_list()
                for n in self.slam_config_dict["localization"]["ros_node"]:
                    if n in nodes:
                        if not last_localization_err:
                            if (
                                "map_file_param"
                                in self.slam_config_dict["localization"]
                            ):
                                self.current_map = rospy.get_param(
                                    self.slam_config_dict["localization"][
                                        "map_file_param"
                                    ]
                                )
                                self.main_state = MainState.LOCALIZING
                # If gmapping alive
                nodes = get_node_list()
                for n in self.slam_config_dict["mapping"]["ros_node"]:
                    if n in nodes:
                        if not last_localization_err:
                            self.main_state = MainState.MAPPING
            # State: ERROR_LOCALIZING
            elif self.main_state == MainState.ERROR_LOCALIZING:
                if not localization_error:
                    self.main_state = MainState.LOCALIZING
                if self.load_map_request:
                    self.load_map_request = False
                    self.main_state = MainState.INIT_LOCALIZING
                if self.mapping_request:
                    self.mapping_request = False
                    self.main_state = MainState.INIT_MAPPING
                # If mrpt alive
                nodes = get_node_list()
                for n in self.slam_config_dict["localization"]["ros_node"]:
                    if n in nodes:
                        if not localization_error:
                            if (
                                "map_file_param"
                                in self.slam_config_dict["localization"]
                            ):
                                self.current_map = rospy.get_param(
                                    self.slam_config_dict["localization"][
                                        "map_file_param"
                                    ],
                                    "",
                                )
                                if self.current_map != "":
                                    self.main_state = MainState.LOCALIZING
                                else:
                                    self.main_state = MainState.ERROR_LOCALIZING
                # If gmapping alive
                nodes = get_node_list()
                for n in self.slam_config_dict["mapping"]["ros_node"]:
                    if n in nodes:
                        if not localization_error:
                            self.main_state = MainState.MAPPING

            msg = StringStamped()
            msg.data = {
                "status": "",
                "state": self.main_state.toString(),
                "current_map": self.current_map,
                "mapping_method": self.slam_config_dict["mapping"]["method"],
                "localization_method": self.slam_config_dict["localization"]["method"],
                "tf_time_normal": str(round(self.time_from_last_tf_normal)),
            }
            msg.data = json.dumps(msg.data)
            msg.stamp = rospy.Time.now()
            self._asm.module_status_pub.publish(msg)
            r.sleep()


def parse_opts():
    from optparse import OptionParser

    parser = OptionParser()
    parser.add_option(
        "-s",
        "--simulation",
        action="store_true",
        dest="simulation",
        default=False,
    )
    parser.add_option(
        "-c",
        "--config_file",
        dest="config_file",
        default=os.path.join(
            rospkg.RosPack().get_path("slam_manager"), "cfg", "slam_config.yaml"
        ),
    )
    parser.add_option(
        "-d",
        "--ros_debug",
        action="store_true",
        dest="log_debug",
        default=False,
        help="log_level=rospy.DEBUG",
    )

    (options, args) = parser.parse_args()
    print("Options:\n{}".format(options))
    print("Args:\n{}".format(args))
    return (options, args)


def main():
    (options, args) = parse_opts()
    log_level = None
    if options.log_debug:
        log_level = rospy.DEBUG

    rospy.init_node("slam_manager", log_level=log_level)
    rospy.loginfo("Init node " + rospy.get_name())

    # git un track db config file
    # [config_dir, db_config] = options.db_config.rsplit('/', 1)
    # print("Change dir to: \"{}\" and run \"git update-index --assume-unchanged {}\"".format(config_dir, db_config))
    # os.chdir(config_dir)
    # os.system("git update-index --assume-unchanged " + db_config)

    SlamManager(rospy.get_name(), **vars(options))


if __name__ == "__main__":
    main()
