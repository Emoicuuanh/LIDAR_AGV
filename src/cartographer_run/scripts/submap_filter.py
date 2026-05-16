#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# filepath: /home/hai-td/amr_ws/src/cartographer_run/scripts/submap_filter.py

"""
ROS Node để echo 1 topic /submap_list và lưu toàn bộ nội dung raw ra file JSON
Echo topic /submap_list type cartographer_ros_msgs/SubmapList
Lưu toàn bộ message mà không lọc bất kỳ thông tin nào
"""

import rospy
import json
import os
from cartographer_ros_msgs.msg import SubmapList

class SubmapFilter:
    def __init__(self):
        """Khởi tạo ROS node và subscriber"""
        rospy.init_node('submap_filter', anonymous=True)

        self.received_data = False
        self.output_file = os.path.expanduser("~/amr_ws/src/cartographer_run/full_submap_list_raw.json")

        # Subscriber cho topic /submap_list
        self.submap_subscriber = rospy.Subscriber(
            '/submap_list',
            SubmapList,
            self.submap_callback
        )

        rospy.loginfo("Submap Filter Node started. Listening to /submap_list...")
        rospy.loginfo("Will save FULL raw submap_list to: %s", self.output_file)

    def submap_callback(self, msg):
        """
        Callback function để lưu toàn bộ nội dung raw của SubmapList message

        Args:
            msg (SubmapList): Message chứa toàn bộ danh sách submaps
        """
        if self.received_data:
            return  # Chỉ xử lý 1 lần

        # Chuyển đổi toàn bộ message sang format JSON (không lọc gì)
        full_msg_data = {
            "header": {
                "seq": msg.header.seq,
                "stamp": {
                    "secs": msg.header.stamp.secs,
                    "nsecs": msg.header.stamp.nsecs,
                    "timestamp_float": msg.header.stamp.to_sec()
                },
                "frame_id": msg.header.frame_id
            },
            "total_submaps_in_message": len(msg.submap),
            "submaps_by_trajectory": {},
            "all_submaps": []
        }

        # Thống kê theo trajectory
        trajectory_count = {}

        # Lưu toàn bộ submaps
        for submap in msg.submap:
            # Đếm theo trajectory
            traj_id = submap.trajectory_id
            if traj_id not in trajectory_count:
                trajectory_count[traj_id] = 0
            trajectory_count[traj_id] += 1

            # Lưu toàn bộ thông tin submap
            submap_full_info = {
                "trajectory_id": submap.trajectory_id,
                "submap_index": submap.submap_index,
                "submap_version": submap.submap_version,
                "is_frozen": submap.is_frozen,
                "pose": {
                    "position": {
                        "x": submap.pose.position.x,
                        "y": submap.pose.position.y,
                        "z": submap.pose.position.z
                    },
                    "orientation": {
                        "x": submap.pose.orientation.x,
                        "y": submap.pose.orientation.y,
                        "z": submap.pose.orientation.z,
                        "w": submap.pose.orientation.w
                    }
                }
            }
            full_msg_data["all_submaps"].append(submap_full_info)

        # Thống kê theo trajectory
        full_msg_data["submaps_by_trajectory"] = trajectory_count
        full_msg_data["total_trajectories"] = len(trajectory_count)

        # Lưu vào file JSON
        try:
            with open(self.output_file, 'w', encoding='utf-8') as f:
                json.dump(full_msg_data, f, indent=2, ensure_ascii=False)

            rospy.loginfo("Successfully saved FULL raw SubmapList message:")
            rospy.loginfo("  Total submaps: %d", len(msg.submap))
            rospy.loginfo("  Total trajectories: %d", len(trajectory_count))
            rospy.loginfo("  Trajectories: %s", list(trajectory_count.keys()))
            rospy.loginfo("  Frame ID: %s", msg.header.frame_id)
            rospy.loginfo("  File saved to: %s", self.output_file)

            print(f"\n=== FULL SUBMAP LIST SUMMARY ===")
            print(f"Total submaps: {len(msg.submap)}")
            print(f"Total trajectories: {len(trajectory_count)}")
            print(f"Submaps per trajectory: {trajectory_count}")
            print(f"Header frame_id: {msg.header.frame_id}")
            print(f"Header timestamp: {msg.header.stamp.to_sec()}")
            print(f"File saved to: {self.output_file}")
            print("="*40)

            self.received_data = True
            rospy.signal_shutdown("Full data saved successfully")

        except Exception as e:
            rospy.logerr("Failed to save file: %s", str(e))

    def run(self):
        """Chạy node và đợi nhận dữ liệu"""
        try:
            rospy.spin()
        except KeyboardInterrupt:
            rospy.loginfo("Shutting down Submap Filter Node...")

def main():
    """Main function"""
    try:
        submap_filter = SubmapFilter()
        submap_filter.run()
    except rospy.ROSInterruptException:
        pass

if __name__ == '__main__':
    main()