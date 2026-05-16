#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
odom_move_test.py
-----------------
Script test odometry: di chuyển 1m thẳng hoặc xoay 360 độ.

Cách dùng:
  rosrun odometry_calculate odom_move_test.py move      # đi thẳng 1m
  rosrun odometry_calculate odom_move_test.py backward  # lùi 1m
  rosrun odometry_calculate odom_move_test.py rotate    # xoay 360 độ

Tham số tùy chọn (đặt trước tên lệnh):
  _linear_vel:=0.1      vận tốc tiến (m/s), mặc định 0.1
  _angular_vel:=0.3     vận tốc xoay (rad/s), mặc định 0.3
  _target_dist:=1.0     khoảng cách mục tiêu (m), mặc định 1.0
  _cmd_vel_topic:=/cmd_vel

Ví dụ:
  rosrun odometry_calculate odom_move_test.py _linear_vel:=0.15 move
  rosrun odometry_calculate odom_move_test.py _linear_vel:=0.1 backward
"""

import sys
import math
import rospy
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty
from tf.transformations import euler_from_quaternion


class OdomMoveTest(object):
    def __init__(self):
        rospy.init_node("odom_move_test", anonymous=True)

        # Lấy tham số
        self.linear_vel  = rospy.get_param("~linear_vel",  0.1)   # m/s
        self.angular_vel = rospy.get_param("~angular_vel", 0.3)   # rad/s
        self.target_dist = rospy.get_param("~target_dist", 1.0)   # m
        cmd_vel_topic    = rospy.get_param("~cmd_vel_topic", "/cmd_vel")

        self.odom_received = False
        self.start_x = 0.0
        self.start_y = 0.0
        self.start_yaw = 0.0
        self.current_x = 0.0
        self.current_y = 0.0
        self.current_yaw = 0.0
        self.odom_vx = 0.0
        self.odom_wz = 0.0

        self.cmd_pub = rospy.Publisher(cmd_vel_topic, Twist, queue_size=10)
        self.reset_odom_pub = rospy.Publisher("/reset_odom", Empty, queue_size=5)
        rospy.Subscriber("/odom", Odometry, self._odom_cb)

        rospy.loginfo("Waiting for /odom ...")
        while not rospy.is_shutdown() and not self.odom_received:
            rospy.sleep(0.05)
        rospy.loginfo("Odom received.")

    # ------------------------------------------------------------------
    def _odom_cb(self, msg):
        self.current_x = msg.pose.pose.position.x
        self.current_y = msg.pose.pose.position.y
        q = msg.pose.pose.orientation
        (_, _, yaw) = euler_from_quaternion([q.x, q.y, q.z, q.w])
        self.current_yaw = yaw
        self.odom_vx = msg.twist.twist.linear.x
        self.odom_wz = msg.twist.twist.angular.z
        self.odom_received = True

    # ------------------------------------------------------------------
    def _save_start(self):
        self.start_x   = self.current_x
        self.start_y   = self.current_y
        self.start_yaw = self.current_yaw

    def _distance_from_start(self):
        dx = self.current_x - self.start_x
        dy = self.current_y - self.start_y
        return math.sqrt(dx * dx + dy * dy)

    @staticmethod
    def _normalize_angle(angle):
        """Chuẩn hóa góc về [-pi, pi]."""
        while angle >  math.pi: angle -= 2.0 * math.pi
        while angle < -math.pi: angle += 2.0 * math.pi
        return angle

    def _angle_traveled(self):
        return self._normalize_angle(self.current_yaw - self.start_yaw)

    # ------------------------------------------------------------------
    def _reset_odom(self):
        """Reset odometry về 0 và chờ odom cập nhật lại."""
        rospy.loginfo("Resetting odom ...")
        self.odom_received = False
        # Publish vài lần để chắc chắn node odom nhận được
        for _ in range(5):
            self.reset_odom_pub.publish(Empty())
            rospy.sleep(0.05)
        # Chờ odom callback cập nhật lại sau reset
        begin = rospy.get_time()
        while not rospy.is_shutdown() and not self.odom_received:
            if rospy.get_time() - begin > 3.0:
                rospy.logwarn("Timeout waiting for odom after reset")
                break
            rospy.sleep(0.05)
        rospy.loginfo("Odom reset done. pos=({:.4f}, {:.4f}) yaw={:.4f}".format(
            self.current_x, self.current_y, self.current_yaw))

    # ------------------------------------------------------------------
    def move_straight(self, distance=None, backward=False):
        """Di chuyển thẳng 'distance' mét (mặc định target_dist).
        backward=True: lùi (dùng -abs(linear_vel)).
        """
        if distance is None:
            distance = self.target_dist
        distance = abs(distance)

        vel = -abs(self.linear_vel) if backward else abs(self.linear_vel)
        direction = "BACKWARD" if backward else "FORWARD"

        self._reset_odom()
        rospy.loginfo("=== MOVE {} {:.2f} m (vel={:.2f} m/s) ===".format(
            direction, distance, vel))

        self._save_start()
        rate = rospy.Rate(40)
        twist = Twist()
        twist.linear.x = vel

        while not rospy.is_shutdown():
            traveled = self._distance_from_start()
            rospy.loginfo_throttle(0.5, "Traveled: {:.4f} / {:.2f} m | odom vel: vx={:.4f} m/s  wz={:.4f} rad/s".format(
                traveled, distance, self.odom_vx, self.odom_wz))
            if traveled >= distance:
                break
            self.cmd_pub.publish(twist)
            rate.sleep()

        self._stop()
        rospy.loginfo("Done. Total distance traveled: {:.4f} m".format(
            self._distance_from_start()))

    # ------------------------------------------------------------------
    def rotate_360(self):
        """Xoay đúng 360 độ (2*pi rad)."""
        target_rad = 2.0 * math.pi

        self._reset_odom()
        rospy.loginfo("=== ROTATE 360 deg (vel={:.2f} rad/s) ===".format(
            self.angular_vel))

        self._save_start()
        total_rotated = 0.0
        prev_yaw = self.current_yaw
        rate = rospy.Rate(40)
        twist = Twist()
        twist.angular.z = self.angular_vel

        while not rospy.is_shutdown():
            delta = self._normalize_angle(self.current_yaw - prev_yaw)
            total_rotated += delta
            prev_yaw = self.current_yaw

            rospy.loginfo_throttle(0.5, "Rotated: {:.2f} / {:.2f} deg | odom vel: vx={:.4f} m/s  wz={:.4f} rad/s".format(
                math.degrees(abs(total_rotated)), math.degrees(target_rad), self.odom_vx, self.odom_wz))

            if abs(total_rotated) >= target_rad:
                break
            self.cmd_pub.publish(twist)
            rate.sleep()

        self._stop()
        rospy.loginfo("Done. Total rotated: {:.2f} deg".format(
            math.degrees(abs(total_rotated))))

    # ------------------------------------------------------------------
    def _stop(self):
        """Dừng robot."""
        stop_twist = Twist()
        for _ in range(5):
            self.cmd_pub.publish(stop_twist)
            rospy.sleep(0.05)
        rospy.loginfo("Robot stopped.")


# ======================================================================
def main():
    # Lọc các tham số ROS (bắt đầu bằng __ hoặc _ và chứa :=) khỏi argv
    argv = [a for a in sys.argv[1:] if not a.startswith("__") and ":=" not in a]

    if not argv:
        print(__doc__)
        print("ERROR: Cần truyền lệnh: 'move', 'backward' hoặc 'rotate'")
        sys.exit(1)

    cmd = argv[0].lower()
    if cmd not in ("move", "backward", "rotate"):
        print("ERROR: Lệnh không hợp lệ '{}'. Dùng 'move', 'backward' hoặc 'rotate'.".format(cmd))
        sys.exit(1)

    node = OdomMoveTest()

    if cmd == "move":
        node.move_straight(backward=False)
    elif cmd == "backward":
        node.move_straight(backward=True)
    elif cmd == "rotate":
        node.rotate_360()


if __name__ == "__main__":
    main()
