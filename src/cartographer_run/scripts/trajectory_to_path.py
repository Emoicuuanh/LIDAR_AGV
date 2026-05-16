#!/usr/bin/env python
import rospy
from visualization_msgs.msg import MarkerArray, Marker
from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped

class MarkerArrayToPath:
    def __init__(self):
        rospy.init_node('markerarray_to_path_converter', anonymous=True)

        self.path_pub = rospy.Publisher('/move_base/GlobalPlanner/plan', Path, queue_size=10)
        rospy.Subscriber('/trajectory_node_list', MarkerArray, self.marker_callback)

        self.frame_id = "map"  # Hoặc "odom" tùy theo hệ quy chiếu bạn dùng

    def marker_callback(self, marker_array):
        path = Path()
        path.header.stamp = rospy.Time.now()
        path.header.frame_id = self.frame_id

        for marker in marker_array.markers:
            if marker.type == Marker.SPHERE or marker.type == Marker.CUBE:
                # SPHERE thường được dùng cho node
                pose_stamped = PoseStamped()
                pose_stamped.header = marker.header
                pose_stamped.pose.position = marker.pose.position
                pose_stamped.pose.orientation = marker.pose.orientation
                path.poses.append(pose_stamped)

            elif marker.type == Marker.LINE_STRIP:
                # LINE_STRIP có nhiều điểm nhưng không có orientation
                for pt in marker.points:
                    pose_stamped = PoseStamped()
                    pose_stamped.header = marker.header
                    pose_stamped.pose.position = pt
                    pose_stamped.pose.orientation.w = 1.0  # default orientation
                    path.poses.append(pose_stamped)

        self.path_pub.publish(path)

    def run(self):
        rospy.spin()

if __name__ == '__main__':
    try:
        node = MarkerArrayToPath()
        node.run()
    except rospy.ROSInterruptException:
        pass
