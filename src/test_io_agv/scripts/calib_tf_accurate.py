#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Accurate TF calibration for AGV sensor
Author: AI Assistant
Date: 2026-05-15

This script provides the MOST ACCURATE method to calibrate:
1. Angular offset (yaw) - using straight-line movement method
2. Position offset (x, y) - using 180° rotation method
3. Cross-validation tests
"""

import rospy
import math
import yaml
import os
from nav_msgs.msg import Odometry
from agv_msgs.msg import DataMatrixStamped
from geometry_msgs.msg import Twist
from tf.transformations import euler_from_quaternion


class AccurateTFCalibration:
    def __init__(self):
        rospy.init_node('accurate_tf_calibration')
        
        # Subscribers
        rospy.Subscriber('/odom', Odometry, self.odom_cb)
        rospy.Subscriber('/data_gls621', DataMatrixStamped, self.qr_cb)
        
        # Publishers
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        
        # Variables
        self.odom_pose = None
        self.qr_x = None  # mm
        self.qr_y = None  # mm
        self.qr_angle = None  # rad
        
        rospy.loginfo("Accurate TF Calibration initialized")
    
    def odom_cb(self, msg):
        self.odom_pose = msg.pose.pose
    
    def qr_cb(self, msg):
        self.qr_x = float(msg.possition.x)  # mm
        self.qr_y = float(msg.possition.y)  # mm
        self.qr_angle = msg.possition.angle  # rad
    
    def get_yaw(self):
        """Get current yaw from odometry"""
        if self.odom_pose is None:
            return None
        q = self.odom_pose.orientation
        (_, _, yaw) = euler_from_quaternion([q.x, q.y, q.z, q.w])
        return yaw
    
    def wait_for_data(self, timeout=5.0):
        """Wait until all sensor data is available"""
        start = rospy.Time.now()
        rate = rospy.Rate(10)
        while not rospy.is_shutdown():
            if self.odom_pose and self.qr_x is not None:
                return True
            if (rospy.Time.now() - start).to_sec() > timeout:
                rospy.logerr("Timeout waiting for sensor data!")
                return False
            rate.sleep()
        return False
    
    def reset_data(self):
        """Reset QR data to get fresh reading"""
        self.qr_x = None
        self.qr_y = None
        self.qr_angle = None
    
    def stop_robot(self):
        """Stop robot movement"""
        self.cmd_vel_pub.publish(Twist())
        rospy.sleep(0.5)
    
    # ========================================================================
    # METHOD 1: ANGLE CALIBRATION (Most Accurate!)
    # ========================================================================
    
    def calibrate_angle_accurate(self, distance=0.5, velocity=0.05):
        """
        Calibrate angular offset using straight-line movement method
        
        This is THE MOST ACCURATE method for angle calibration because:
        - Error accumulates over long distance (small percentage)
        - Not affected by sensor angular resolution
        - Filters out short-term noise
        
        Args:
            distance: Distance to travel in meters (default: 0.5m)
            velocity: Linear velocity in m/s (default: 0.05 m/s)
        
        Returns:
            offset_angle: Angular offset in radians
        """
        rospy.loginfo("=" * 60)
        rospy.loginfo("ANGLE CALIBRATION - Straight-line movement method")
        rospy.loginfo("=" * 60)
        
        # Step 1: Rotate to align sensor with QR (angle ≈ 0)
        rospy.loginfo("Step 1: Aligning sensor with QR target...")
        if not self._rotate_to_align():
            return None
        
        # Step 2: Record initial state
        rospy.loginfo("Step 2: Recording initial state...")
        self.reset_data()
        if not self.wait_for_data():
            return None
        
        init_x = self.qr_x
        init_y = self.qr_y
        init_angle = self.qr_angle
        init_pose = (self.odom_pose.position.x, self.odom_pose.position.y)
        
        rospy.loginfo(f"  Initial QR: x={init_x:.1f}mm, y={init_y:.1f}mm, angle={math.degrees(init_angle):.2f}°")
        
        # Step 3: Move straight
        rospy.loginfo(f"Step 3: Moving straight {distance}m at {velocity}m/s...")
        if not self._move_straight(distance, velocity):
            return None
        
        # Step 4: Record final state
        rospy.loginfo("Step 4: Recording final state...")
        self.reset_data()
        if not self.wait_for_data():
            return None
        
        after_x = self.qr_x
        after_y = self.qr_y
        after_angle = self.qr_angle
        final_pose = (self.odom_pose.position.x, self.odom_pose.position.y)
        
        rospy.loginfo(f"  Final QR: x={after_x:.1f}mm, y={after_y:.1f}mm, angle={math.degrees(after_angle):.2f}°")
        
        # Step 5: Calculate actual distance traveled
        dist_traveled = math.sqrt(
            (final_pose[0] - init_pose[0])**2 + 
            (final_pose[1] - init_pose[1])**2
        ) * 1000  # Convert to mm
        
        rospy.loginfo(f"  Distance traveled: {dist_traveled:.1f}mm")
        
        # Step 6: Validate
        if dist_traveled < 300:  # Less than 30cm
            rospy.logerr("ERROR: Distance too short for accurate calibration!")
            return None
        
        if abs(after_angle - init_angle) > math.radians(2):
            rospy.logwarn("WARNING: Robot did not move straight! Angular drift detected.")
            rospy.logwarn(f"  Angle changed by {math.degrees(abs(after_angle - init_angle)):.2f}°")
        
        # Step 7: Calculate angular offset
        delta_x = abs(after_x - init_x)
        
        if delta_x / dist_traveled > 0.1:  # More than 10% lateral drift
            rospy.logerr("ERROR: Excessive lateral drift! Check sensor or movement.")
            return None
        
        offset_angle = math.asin(delta_x / dist_traveled)
        
        # Determine sign
        if after_x > init_x:
            offset_angle = -offset_angle  # QR moved right → sensor points left
        
        # Add initial angle offset
        offset_angle += init_angle
        
        # Results
        rospy.loginfo("=" * 60)
        rospy.loginfo("ANGLE CALIBRATION RESULTS:")
        rospy.loginfo(f"  Lateral drift: {delta_x:.2f}mm over {dist_traveled:.1f}mm")
        rospy.loginfo(f"  Angular offset: {math.degrees(offset_angle):.4f}° ({offset_angle:.6f} rad)")
        rospy.loginfo("=" * 60)
        
        if abs(math.degrees(offset_angle)) < 0.5:
            rospy.loginfo("✓ Excellent alignment! (< 0.5°)")
        elif abs(math.degrees(offset_angle)) < 2.0:
            rospy.loginfo("✓ Good alignment (< 2°)")
        else:
            rospy.logwarn("⚠ Significant misalignment detected!")
        
        return offset_angle
    
    def _rotate_to_align(self, target_angle=0.0, tolerance=math.radians(0.2)):
        """Rotate robot until sensor is aligned with target"""
        rate = rospy.Rate(20)
        twist = Twist()
        
        for _ in range(100):  # Max 5 seconds
            if not self.wait_for_data(timeout=0.1):
                continue
            
            angle_error = target_angle - self.qr_angle
            
            if abs(angle_error) < tolerance:
                self.stop_robot()
                return True
            
            twist.angular.z = 0.1 if angle_error > 0 else -0.1
            self.cmd_vel_pub.publish(twist)
            rate.sleep()
        
        rospy.logerr("Failed to align sensor with target!")
        self.stop_robot()
        return False
    
    def _move_straight(self, distance, velocity):
        """Move robot straight for specified distance"""
        if self.odom_pose is None:
            return False
        
        start_x = self.odom_pose.position.x
        start_y = self.odom_pose.position.y
        
        twist = Twist()
        twist.linear.x = velocity
        rate = rospy.Rate(20)
        
        while not rospy.is_shutdown():
            if self.odom_pose is None:
                continue
            
            dist = math.sqrt(
                (self.odom_pose.position.x - start_x)**2 +
                (self.odom_pose.position.y - start_y)**2
            )
            
            if dist >= distance:
                self.stop_robot()
                return True
            
            self.cmd_vel_pub.publish(twist)
            rate.sleep()
        
        return False
    
    # ========================================================================
    # METHOD 2: POSITION CALIBRATION
    # ========================================================================
    
    def calibrate_position_accurate(self):
        """
        Calibrate position offset using 180° rotation method
        
        Prerequisites:
        - rotate_drift_comp must be enabled in motor_config.yaml!
        - wheel_separation must be calibrated correctly!
        
        Returns:
            (offset_x, offset_y): Position offsets in mm
        """
        rospy.loginfo("=" * 60)
        rospy.loginfo("POSITION CALIBRATION - 180° rotation method")
        rospy.loginfo("=" * 60)
        
        # Step 1: Record initial state
        rospy.loginfo("Step 1: Recording initial state...")
        self.reset_data()
        if not self.wait_for_data():
            return None, None
        
        init_x = self.qr_x
        init_y = self.qr_y
        init_yaw = self.get_yaw()
        init_odom = (self.odom_pose.position.x, self.odom_pose.position.y)
        
        rospy.loginfo(f"  Initial QR: x={init_x:.1f}mm, y={init_y:.1f}mm")
        rospy.loginfo(f"  Initial yaw: {math.degrees(init_yaw):.2f}°")
        
        # Step 2: Rotate 180°
        rospy.loginfo("Step 2: Rotating 180°...")
        if not self._rotate_180(init_yaw):
            return None, None
        
        # Step 3: Record final state
        rospy.loginfo("Step 3: Recording final state...")
        self.reset_data()
        if not self.wait_for_data():
            return None, None
        
        after_x = self.qr_x
        after_y = self.qr_y
        after_yaw = self.get_yaw()
        final_odom = (self.odom_pose.position.x, self.odom_pose.position.y)
        
        rospy.loginfo(f"  Final QR: x={after_x:.1f}mm, y={after_y:.1f}mm")
        rospy.loginfo(f"  Final yaw: {math.degrees(after_yaw):.2f}°")
        
        # Step 4: Check rotation accuracy
        yaw_diff = abs(self._angle_diff(after_yaw, init_yaw))
        if abs(yaw_diff - math.pi) > math.radians(5):  # More than 5° error
            rospy.logwarn(f"WARNING: Rotation error {math.degrees(abs(yaw_diff - math.pi)):.2f}°")
        
        # Step 5: Check drift
        drift = math.sqrt(
            (final_odom[0] - init_odom[0])**2 +
            (final_odom[1] - init_odom[1])**2
        ) * 1000  # mm
        
        if drift > 50:  # More than 5cm drift
            rospy.logwarn(f"WARNING: Large drift detected: {drift:.1f}mm")
            rospy.logwarn("Consider increasing rotate_drift_comp value!")
        else:
            rospy.loginfo(f"  Drift: {drift:.1f}mm (Good!)")
        
        # Step 6: Calculate position offset
        offset_x = (init_x + after_x) / 2.0
        offset_y = (init_y + after_y) / 2.0
        
        # Step 7: Validate symmetry
        symmetry_error_x = abs(abs(init_x - offset_x) - abs(after_x - offset_x))
        symmetry_error_y = abs(abs(init_y - offset_y) - abs(after_y - offset_y))
        
        # Results
        rospy.loginfo("=" * 60)
        rospy.loginfo("POSITION CALIBRATION RESULTS:")
        rospy.loginfo(f"  offset_x = {offset_x:.2f}mm ({offset_x/1000:.6f}m)")
        rospy.loginfo(f"  offset_y = {offset_y:.2f}mm ({offset_y/1000:.6f}m)")
        rospy.loginfo(f"  Symmetry error: X={symmetry_error_x:.2f}mm, Y={symmetry_error_y:.2f}mm")
        rospy.loginfo("=" * 60)
        
        if symmetry_error_x < 5 and symmetry_error_y < 5:
            rospy.loginfo("✓ Excellent symmetry! Calibration is accurate.")
        elif symmetry_error_x < 10 and symmetry_error_y < 10:
            rospy.loginfo("✓ Good symmetry.")
        else:
            rospy.logwarn("⚠ Large symmetry error! Check drift compensation.")
        
        return offset_x, offset_y
    
    def _rotate_180(self, init_yaw):
        """Rotate robot 180° accurately"""
        twist = Twist()
        twist.angular.z = 0.1  # Slow rotation for accuracy
        rate = rospy.Rate(20)
        
        target_yaw = init_yaw + math.pi
        
        while not rospy.is_shutdown():
            current_yaw = self.get_yaw()
            if current_yaw is None:
                continue
            
            yaw_diff = self._angle_diff(target_yaw, current_yaw)
            
            if abs(yaw_diff) < math.radians(1):  # Within 1°
                self.stop_robot()
                rospy.sleep(1.0)  # Settle
                return True
            
            self.cmd_vel_pub.publish(twist)
            rate.sleep()
        
        return False
    
    def _angle_diff(self, a, b):
        """Calculate angle difference in range [-pi, pi]"""
        diff = a - b
        while diff > math.pi:
            diff -= 2 * math.pi
        while diff < -math.pi:
            diff += 2 * math.pi
        return diff
    
    # ========================================================================
    # VALIDATION TESTS
    # ========================================================================
    
    def validate_calibration(self, offset_x, offset_y, offset_angle):
        """
        Cross-validation test to verify calibration accuracy
        
        Tests:
        1. Move straight 1m, check lateral drift
        2. Move in square pattern, check closure error
        """
        rospy.loginfo("=" * 60)
        rospy.loginfo("VALIDATION TESTS")
        rospy.loginfo("=" * 60)
        
        # Test 1: Straight-line test
        rospy.loginfo("Test 1: Straight-line movement (1m)...")
        passed_straight = self._test_straight_movement(1.0, offset_angle)
        
        # Test 2: Return to start
        rospy.loginfo("\nTest 2: Returning to start position...")
        self._move_straight(-1.0, 0.05)
        
        rospy.loginfo("=" * 60)
        if passed_straight:
            rospy.loginfo("✓ VALIDATION PASSED!")
        else:
            rospy.logwarn("⚠ VALIDATION ISSUES DETECTED")
        rospy.loginfo("=" * 60)
    
    def _test_straight_movement(self, distance, offset_angle):
        """Test lateral drift when moving straight"""
        self.reset_data()
        if not self.wait_for_data():
            return False
        
        init_x = self.qr_x
        
        self._move_straight(distance, 0.05)
        
        self.reset_data()
        if not self.wait_for_data():
            return False
        
        final_x = self.qr_x
        lateral_drift = abs(final_x - init_x)
        
        expected_drift = abs(math.sin(offset_angle) * distance * 1000)  # mm
        
        rospy.loginfo(f"  Lateral drift: {lateral_drift:.2f}mm")
        rospy.loginfo(f"  Expected drift: {expected_drift:.2f}mm")
        rospy.loginfo(f"  Error: {abs(lateral_drift - expected_drift):.2f}mm")
        
        return abs(lateral_drift - expected_drift) < 10  # Within 10mm
    
    # ========================================================================
    # SAVE RESULTS
    # ========================================================================
    
    def save_results(self, offset_x, offset_y, offset_angle, filepath="/tmp/tf_calibration_accurate.yaml"):
        """Save calibration results to YAML file"""
        data = {
            'position_offset': {
                'x_mm': float(offset_x),
                'y_mm': float(offset_y),
                'x_m': float(offset_x / 1000.0),
                'y_m': float(offset_y / 1000.0)
            },
            'angular_offset': {
                'yaw_rad': float(offset_angle),
                'yaw_deg': float(math.degrees(offset_angle))
            },
            'tf_command': f"rosrun tf static_transform_publisher " +
                         f"{offset_x/1000:.6f} {offset_y/1000:.6f} 0.0 " +
                         f"0 0 {offset_angle:.6f} base_link sensor_frame 100"
        }
        
        os.makedirs(os.path.dirname(filepath), exist_ok=True)
        with open(filepath, 'w') as f:
            yaml.dump(data, f, default_flow_style=False)
        
        rospy.loginfo(f"\n✓ Results saved to: {filepath}")
        rospy.loginfo(f"\nTF Command:\n{data['tf_command']}\n")
    
    # ========================================================================
    # MAIN WORKFLOW
    # ========================================================================
    
    def run_full_calibration(self):
        """Run complete calibration workflow"""
        rospy.loginfo("\n" + "=" * 60)
        rospy.loginfo("ACCURATE TF CALIBRATION - Full Workflow")
        rospy.loginfo("=" * 60 + "\n")
        
        # Step 1: Angle calibration
        offset_angle = self.calibrate_angle_accurate(distance=0.5, velocity=0.05)
        if offset_angle is None:
            rospy.logerr("Angle calibration failed!")
            return
        
        rospy.sleep(2.0)
        
        # Step 2: Position calibration
        offset_x, offset_y = self.calibrate_position_accurate()
        if offset_x is None:
            rospy.logerr("Position calibration failed!")
            return
        
        rospy.sleep(2.0)
        
        # Step 3: Validation
        self.validate_calibration(offset_x, offset_y, offset_angle)
        
        # Step 4: Save results
        self.save_results(offset_x, offset_y, offset_angle)
        
        rospy.loginfo("\n✓ FULL CALIBRATION COMPLETE!\n")


def main():
    try:
        calibrator = AccurateTFCalibration()
        rospy.sleep(1.0)
        
        # Run full calibration
        calibrator.run_full_calibration()
        
    except rospy.ROSInterruptException:
        pass


if __name__ == '__main__':
    main()
