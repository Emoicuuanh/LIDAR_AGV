#!/usr/bin/env python
import rospy
import os
import sys
import subprocess
from std_srvs.srv import Empty
from cartographer_ros_msgs.srv import FinishTrajectory, FinishTrajectoryRequest
from cartographer_ros_msgs.srv import WriteState, WriteStateRequest

import argparse

def main():
    rospy.init_node('cartographer_save_map_node')

    # Sử dụng argparse để xử lý đối số
    parser = argparse.ArgumentParser(description='Save cartographer map')
    parser.add_argument('--map_file', type=str, help='Full path to map file (without extension)')
    parser.add_argument('--finish_trajectory', type=str, default='true', help='Whether to finish trajectory (true/false)')

    # Parse tham số, bỏ qua các tham số ROS mặc định
    args, unknown = parser.parse_known_args()

    # Hỗ trợ cả cách nhập cũ hoặc bắt buộc nhập qua tham số
    map_file = args.map_file
    if not map_file:
        if len(sys.argv) > 1 and not sys.argv[1].startswith('--'):
            map_file = sys.argv[1]
        else:
            rospy.logerr("Usage: rosrun cartographer_run save_map.py --map_file /full/path/to/map_file [--finish_trajectory true/false]")
            return

    finish_trajectory = args.finish_trajectory.lower() == 'true'
    rospy.loginfo("Map file path: %s", map_file)
    rospy.loginfo("Finish trajectory: %s", finish_trajectory)

    rospy.loginfo("Waiting for services...")
    if finish_trajectory:
        rospy.wait_for_service('/finish_trajectory')
    rospy.wait_for_service('/write_state')
    rospy.loginfo("Required services available.")

    # 1. Finish trajectory (optional)
    if finish_trajectory:
        try:
            finish_srv = rospy.ServiceProxy('/finish_trajectory', FinishTrajectory)
            req = FinishTrajectoryRequest()
            req.trajectory_id = 0
            rospy.loginfo("Calling /finish_trajectory...")
            finish_srv(req)
            rospy.loginfo("Finished trajectory.")
        except rospy.ServiceException as e:
            rospy.logerr("Failed to call /finish_trajectory: %s", e)
            return

        rospy.sleep(1.0)

    # 2. Save pbstream
    try:
        write_srv = rospy.ServiceProxy('/write_state', WriteState)
        req = WriteStateRequest()
        req.filename = map_file + ".pbstream"
        rospy.loginfo(req.filename)
        rospy.loginfo("Calling /write_state to save: %s", req.filename)
        write_srv(req)
        rospy.loginfo("Saved pbstream.")
    except rospy.ServiceException as e:
        rospy.logerr("Failed to call /write_state: %s", e)
        return

    rospy.sleep(1.0)

    # 3. Call map_saver
    map_saver_cmd = "rosrun map_server map_saver -f {}".format(map_file)
    rospy.loginfo("Executing: %s", map_saver_cmd)
    ret = os.system(map_saver_cmd)
    if ret == 0:
        rospy.loginfo("Map saved successfully.")
    else:
        rospy.logerr("Map saver command failed with code: %d", ret)

if __name__ == '__main__':
    main()
