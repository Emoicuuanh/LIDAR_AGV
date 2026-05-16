#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# filepath: /home/hai-td/amr_ws/src/cartographer_run/scripts/submap_image_simple.py

"""
ROS Node đơn giản để gọi service /submap_query từ cartographer_ros
Lấy một vài submaps đầu tiên trong Trajectory 0 và ghép chúng lại
Lưu dữ liệu nhận được ra file ảnh PNG
"""

import rospy
import numpy as np
from PIL import Image
import os
import cv2
import gzip
import math
from datetime import datetime
from sensor_msgs.msg import Image as ROSImage
from cv_bridge import CvBridge
from cartographer_ros_msgs.srv import SubmapQuery, SubmapQueryRequest
from cartographer_ros_msgs.msg import StatusResponse, StatusCode

class SubmapImageSimpleNode:
    def __init__(self):
        """Khởi tạo ROS node"""
        rospy.init_node('submap_image_simple_node', anonymous=True)

        # Parameters
        self.trajectory_id = rospy.get_param('~trajectory_id', 0)
        self.start_submap = rospy.get_param('~start_submap', 0)
        self.num_submaps = rospy.get_param('~num_submaps', 10)
        base_output_dir = rospy.get_param('~output_dir', os.path.expanduser("~/amr_ws/src/cartographer_run/"))
        self.publish_image = rospy.get_param('~publish_image', True)

        # Tạo thư mục con với timestamp yyMMdd_hhmmss
        timestamp = datetime.now().strftime("%y%m%d_%H%M%S")
        self.output_dir = os.path.join(base_output_dir, timestamp)

        # Tạo thư mục nếu chưa tồn tại
        try:
            os.makedirs(self.output_dir, exist_ok=True)
            rospy.loginfo("Created output directory: %s", self.output_dir)
        except Exception as e:
            rospy.logerr("Failed to create output directory %s: %s", self.output_dir, str(e))
            # Fallback to base directory
            self.output_dir = base_output_dir

        # CV Bridge for image conversion
        self.bridge = CvBridge()

        # Publisher cho rviz
        if self.publish_image:
            self.image_pub = rospy.Publisher('/submap_image_simple', ROSImage, queue_size=1, latch=True)

        rospy.loginfo("Submap Image Simple Node initialized")
        rospy.loginfo("Trajectory ID: %d", self.trajectory_id)
        rospy.loginfo("Submap range: %d to %d", self.start_submap, self.start_submap + self.num_submaps - 1)
        rospy.loginfo("Output directory: %s", self.output_dir)
        rospy.loginfo("Images will be displayed on screen using OpenCV")

    def query_submap(self, submap_index):
        """Gọi service /submap_query để lấy dữ liệu submap"""
        service_name = '/submap_query'

        try:
            # Tạo service proxy
            submap_query_service = rospy.ServiceProxy(service_name, SubmapQuery)

            # Tạo request
            req = SubmapQueryRequest()
            req.trajectory_id = self.trajectory_id
            req.submap_index = submap_index

            rospy.loginfo("Querying submap %d...", submap_index)

            # Gọi service
            response = submap_query_service(req)

            # Kiểm tra response status
            if response.status.code != StatusCode.OK:
                rospy.logwarn("Service call failed for submap %d: %d, %s",
                           submap_index, response.status.code, response.status.message)
                return None

            rospy.loginfo("Submap %d: version=%d, textures=%d",
                         submap_index, response.submap_version, len(response.textures))
            return response

        except rospy.ServiceException as e:
            rospy.logwarn("Service call failed for submap %d: %s", submap_index, str(e))
            return None

    def texture_to_image(self, texture, submap_index):
        """Chuyển đổi SubmapTexture thành numpy array image"""
        try:
            # Lấy thông tin từ texture
            width = texture.width
            height = texture.height
            resolution = texture.resolution
            cells = texture.cells

            expected_size = width * height
            actual_size = len(cells)

            rospy.loginfo("Submap %d: %dx%d, expected: %d, actual: %d",
                         submap_index, width, height, expected_size, actual_size)

            cells_array = None

            # Thử nhiều cách giải mã dữ liệu
            if actual_size == expected_size:
                # Dữ liệu không nén
                cells_array = np.array(cells, dtype=np.uint8)
                rospy.loginfo("Submap %d: using uncompressed data", submap_index)
            elif actual_size == expected_size * 2:
                # Có thể là dữ liệu gấp đôi (2 bytes per pixel)
                try:
                    cells_array = np.array(cells, dtype=np.uint8)[::2]  # Lấy mỗi byte thứ 2
                    rospy.loginfo("Submap %d: using every 2nd byte", submap_index)
                except:
                    pass
            else:
                # Thử giải nén gzip
                try:
                    cells_bytes = bytes(cells)
                    decompressed = gzip.decompress(cells_bytes)
                    decompressed_array = np.frombuffer(decompressed, dtype=np.uint8)

                    rospy.loginfo("Submap %d: decompressed gzip %d -> %d",
                                 submap_index, actual_size, len(decompressed_array))

                    # Kiểm tra nếu decompressed data có đúng 2x expected size
                    if len(decompressed_array) == expected_size * 2:
                        # Cố định sử dụng every_2nd_byte_from_0 (bytes ở vị trí 0, 2, 4, 6...)
                        cells_array = decompressed_array[::2]
                        rospy.loginfo("Submap %d: using every_2nd_byte_from_0 (fixed selection)", submap_index)

                    elif len(decompressed_array) == expected_size:
                        # Kích thước đúng
                        cells_array = decompressed_array
                        rospy.loginfo("Submap %d: using decompressed data directly", submap_index)
                    else:
                        # Kích thước không khớp, sẽ crop/pad ở bước sau
                        cells_array = decompressed_array
                        rospy.loginfo("Submap %d: decompressed size mismatch, will adjust", submap_index)

                except Exception as e:
                    rospy.logdebug("Submap %d: gzip failed: %s", submap_index, str(e))

            # Nếu vẫn không match, thử resize/crop
            if cells_array is not None and len(cells_array) != expected_size:
                if len(cells_array) > expected_size:
                    # Crop nếu quá lớn
                    cells_array = cells_array[:expected_size]
                    rospy.loginfo("Submap %d: cropped to fit", submap_index)
                else:
                    # Pad nếu quá nhỏ
                    pad_size = expected_size - len(cells_array)
                    cells_array = np.pad(cells_array, (0, pad_size), 'constant', constant_values=128)
                    rospy.loginfo("Submap %d: padded to fit", submap_index)

            # Nếu vẫn không có dữ liệu hợp lệ
            if cells_array is None or len(cells_array) != expected_size:
                rospy.logwarn("Submap %d: cannot process, size mismatch", submap_index)
                return None, None, None

            # Reshape thành image 2D
            image_array = cells_array.reshape((height, width))

            # Debug: Kiểm tra layout dữ liệu
            self.debug_image_layout(image_array, submap_index)

            rospy.loginfo("Submap %d: successfully converted to %s image",
                         submap_index, image_array.shape)

            return image_array, resolution, texture.slice_pose

        except Exception as e:
            rospy.logwarn("Submap %d: error converting texture: %s", submap_index, str(e))
            return None, None, None

    def debug_image_layout(self, image_array, submap_index):
        """Debug function để kiểm tra layout của image"""
        try:
            height, width = image_array.shape

            # Tính toán statistics
            unique_values = np.unique(image_array)
            non_zero_pixels = np.count_nonzero(image_array != 128)  # 128 = unknown

            rospy.loginfo("Submap %d debug: shape=(%d,%d), unique_values=%d, non_unknown_pixels=%d",
                         submap_index, height, width, len(unique_values), non_zero_pixels)

            # Kiểm tra nếu có pattern lạ (như 2 phần riêng biệt)
            # Chia image thành 2 nửa và kiểm tra
            left_half = image_array[:, :width//2]
            right_half = image_array[:, width//2:]

            left_non_unknown = np.count_nonzero(left_half != 128)
            right_non_unknown = np.count_nonzero(right_half != 128)

            rospy.loginfo("Submap %d debug: left_half_pixels=%d, right_half_pixels=%d",
                         submap_index, left_non_unknown, right_non_unknown)

            # Kiểm tra nếu có vấn đề chồng lấn - pattern lạ ở giữa
            middle_col = image_array[:, width//2]
            middle_non_unknown = np.count_nonzero(middle_col != 128)

            if middle_non_unknown > height * 0.1:  # Nếu có quá nhiều pixel không unknown ở giữa
                rospy.logwarn("Submap %d: Possible overlapping detected at middle column", submap_index)

        except Exception as e:
            rospy.logdebug("Debug error for submap %d: %s", submap_index, str(e))

    def get_submap_pose_from_list(self, submap_index):
        """Lấy pose của submap từ topic /submap_list"""
        try:
            from cartographer_ros_msgs.msg import SubmapList

            # Lấy 1 message từ /submap_list
            submap_list_msg = rospy.wait_for_message('/submap_list', SubmapList, timeout=5.0)

            # Tìm submap với index tương ứng
            for submap in submap_list_msg.submap:
                if submap.trajectory_id == self.trajectory_id and submap.submap_index == submap_index:
                    return submap.pose

            rospy.logwarn("Submap %d not found in /submap_list", submap_index)
            return None

        except Exception as e:
            rospy.logwarn("Error getting submap pose from list: %s", str(e))
            return None

    def quaternion_to_yaw(self, qx, qy, qz, qw):
        """Chuyển quaternion sang yaw angle (radians)"""
        import math
        return math.atan2(2.0 * (qw * qz + qx * qy), 1.0 - 2.0 * (qy * qy + qz * qz))

    def draw_coordinate_axes(self, image_array, texture, submap_index):
        """
        Vẽ trục tọa độ lên hình ảnh submap theo đúng transform chain
        T_map_image = T_map_submap * T_submap_slice
        """
        try:
            import math

            # Lấy submap_pose từ /submap_list
            submap_pose = self.get_submap_pose_from_list(submap_index)
            if submap_pose is None:
                rospy.logwarn("Submap %d: Cannot get submap pose, skipping axes drawing", submap_index)
                return np.stack([image_array, image_array, image_array], axis=2)

            # Convert grayscale to RGB để vẽ màu
            height, width = image_array.shape
            rgb_image = np.stack([image_array, image_array, image_array], axis=2)

            resolution = texture.resolution
            slice_pose = texture.slice_pose

            # Transform chain theo pseudo-code đúng:
            # T_map_submap (from /submap_list)
            T_map_submap_x = submap_pose.position.x
            T_map_submap_y = submap_pose.position.y
            T_map_submap_yaw = self.quaternion_to_yaw(submap_pose.orientation.x, submap_pose.orientation.y,
                                                     submap_pose.orientation.z, submap_pose.orientation.w)

            # T_submap_slice (from /submap_query texture.slice_pose)
            T_submap_slice_x = slice_pose.position.x
            T_submap_slice_y = slice_pose.position.y
            T_submap_slice_yaw = self.quaternion_to_yaw(slice_pose.orientation.x, slice_pose.orientation.y,
                                                       slice_pose.orientation.z, slice_pose.orientation.w)

            # Compose transforms: T_map_image = T_map_submap * T_submap_slice
            cos_submap = math.cos(T_map_submap_yaw)
            sin_submap = math.sin(T_map_submap_yaw)

            # T_map_image
            T_map_image_x = T_map_submap_x + cos_submap * T_submap_slice_x - sin_submap * T_submap_slice_y
            T_map_image_y = T_map_submap_y + sin_submap * T_submap_slice_x + cos_submap * T_submap_slice_y
            T_map_image_yaw = T_map_submap_yaw + T_submap_slice_yaw

            # Xoay toàn bộ ảnh đi góc T_map_submap_yaw - 90 degrees
            rotation_angle_degrees = math.degrees(T_map_submap_yaw) - 90
            rospy.loginfo("Submap %d: Rotating image by %.3f degrees", submap_index, rotation_angle_degrees)

            # Lấy center của ảnh gốc
            center = (width // 2, height // 2)

            # Tạo rotation matrix
            rotation_matrix = cv2.getRotationMatrix2D(center, rotation_angle_degrees, 1.0)

            # Tính kích thước ảnh mới sau khi xoay
            cos_val = abs(rotation_matrix[0, 0])
            sin_val = abs(rotation_matrix[0, 1])
            new_width = int((height * sin_val) + (width * cos_val))
            new_height = int((height * cos_val) + (width * sin_val))

            # Điều chỉnh translation để ảnh xoay nằm trong frame mới
            rotation_matrix[0, 2] += (new_width / 2) - center[0]
            rotation_matrix[1, 2] += (new_height / 2) - center[1]

            # Xoay ảnh
            rotated_image = cv2.warpAffine(rgb_image, rotation_matrix, (new_width, new_height),
                                         borderMode=cv2.BORDER_CONSTANT, borderValue=(128, 128, 128))

            rospy.loginfo("Submap %d: Original size (%dx%d) -> Rotated size (%dx%d)",
                         submap_index, width, height, new_width, new_height)

            # Cập nhật kích thước và sử dụng ảnh đã xoay
            rgb_image = rotated_image
            width, height = new_width, new_height

            # Image dimensions in world coordinates (cập nhật sau khi xoay)
            W = width * resolution   # meters (texture width in world)
            H = height * resolution  # meters (texture height in world)

            rospy.loginfo("Submap %d: W=%.3fm, H=%.3fm, T_map_image=(%.3f,%.3f,%.3frad)",
                         submap_index, W, H, T_map_image_x, T_map_image_y, T_map_image_yaw)
            rospy.loginfo("  slice_pose_px: (%d, %d), slice_pose_world: (%.3f, %.3f)",
                         int(T_submap_slice_x / resolution), int(T_submap_slice_y / resolution),
                         T_submap_slice_x, T_submap_slice_y)

            # Theo RViz, image pixel (0,0) tương ứng với T_map_image
            # Không có offset, T_map_image chính là góc của texture
            image_origin_world_x = T_map_image_x
            image_origin_world_y = T_map_image_y

            # Center của image trong pixel coordinates
            center_x_px = width // 2
            center_y_px = height // 2

            # Độ dài trục
            axis_length = min(width, height) // 8

            # Vẽ coordinate frame tại T_map_image (có thể ở góc image)
            # Tính vị trí T_map_image trong pixel coordinates
            image_origin_px_x = 0  # T_map_image tương ứng với pixel (0,0)
            image_origin_px_y = 0

            # 1. Vẽ chấm tròn tại gốc ảnh đã xoay (top-left pixel 0,0) - màu CYAN
            cv2.circle(rgb_image, (0, 0), 8, (0, 255, 255), -1)
            cv2.putText(rgb_image, 'ROTATED_IMAGE_TOP_LEFT', (10, 25), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 255), 2)

            # 2. Vẽ chấm tròn tại slice_pose position - màu MAGENTA
            # slice_pose chính là center của texture trong submap frame
            # Sử dụng XY swapped (đây là điểm slice đúng)
            # Cần transform tọa độ slice theo rotation đã áp dụng
            original_slice_x = int(T_submap_slice_y / resolution)
            original_slice_y = int(T_submap_slice_x / resolution)

            # Transform slice position theo rotation matrix
            slice_point = np.array([original_slice_x, original_slice_y, 1])
            transformed_slice = rotation_matrix.dot(slice_point)
            slice_px_swapped_x = int(transformed_slice[0])
            slice_px_swapped_y = int(transformed_slice[1])

            rospy.loginfo("  slice_pose pixels: original=(%d,%d) -> rotated=(%d,%d)",
                         original_slice_x, original_slice_y, slice_px_swapped_x, slice_px_swapped_y)

            # Vẽ điểm slice đúng
            if 0 <= slice_px_swapped_x < width and 0 <= slice_px_swapped_y < height:
                cv2.circle(rgb_image, (slice_px_swapped_x, slice_px_swapped_y), 8, (255, 0, 255), -1)  # Magenta
                cv2.putText(rgb_image, 'SLICE_CENTER', (slice_px_swapped_x + 10, slice_px_swapped_y - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.4, (255, 0, 255), 2)

                # Vẽ trục tọa độ tại điểm slice center
                # Độ dài trục nhỏ hơn cho slice center
                slice_axis_length = axis_length // 2

                # Vẽ trục tọa độ tại slice center trong ảnh đã xoay
                # Sau khi xoay ảnh đi T_map_submap_yaw, trục tọa độ giờ đây chỉ cần vẽ theo hướng chuẩn

                # Trục X tại slice center (màu đỏ) - xoay đi T_map_submap_yaw
                slice_x_end_x = slice_px_swapped_x + int(slice_axis_length * math.cos(-T_map_submap_yaw))
                slice_x_end_y = slice_px_swapped_y + int(slice_axis_length * math.sin(-T_map_submap_yaw))
                cv2.line(rgb_image, (slice_px_swapped_x, slice_px_swapped_y), (slice_x_end_x, slice_x_end_y), (0, 0, 255), 2)
                cv2.putText(rgb_image, 'X_slice', (slice_x_end_x + 2, slice_x_end_y), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (0, 0, 255), 1)

                # Trục Y tại slice center (màu xanh lá) - lệch 90 độ so với trục X
                slice_y_end_x = slice_px_swapped_x + int(slice_axis_length * math.cos(-T_map_submap_yaw - math.pi/2))
                slice_y_end_y = slice_px_swapped_y + int(slice_axis_length * math.sin(-T_map_submap_yaw - math.pi/2))
                cv2.line(rgb_image, (slice_px_swapped_x, slice_px_swapped_y), (slice_y_end_x, slice_y_end_y), (0, 255, 0), 2)
                cv2.putText(rgb_image, 'Y_slice', (slice_y_end_x + 2, slice_y_end_y), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (0, 255, 0), 1)            # Tính toán vị trí của submap origin trong image coordinates
            # Submap origin relative to image origin (T_map_image)
            submap_rel_x = T_map_submap_x - T_map_image_x
            submap_rel_y = T_map_submap_y - T_map_image_y

            # Convert to pixel coordinates - cần rotate về image frame
            cos_img = math.cos(-T_map_image_yaw)  # Inverse rotation
            sin_img = math.sin(-T_map_image_yaw)

            # Rotate to image coordinates
            submap_img_x = cos_img * submap_rel_x - sin_img * submap_rel_y
            submap_img_y = sin_img * submap_rel_x + cos_img * submap_rel_y

            # Convert to pixel coordinates và transform theo rotation
            original_submap_px_x = int(submap_img_x / resolution)
            original_submap_px_y = int(submap_img_y / resolution)

            # Transform submap position theo rotation matrix
            submap_point = np.array([original_submap_px_x, original_submap_px_y, 1])
            transformed_submap = rotation_matrix.dot(submap_point)
            submap_px_x = int(transformed_submap[0])
            submap_px_y = int(transformed_submap[1])

            # Vẽ submap origin nếu nằm trong image bounds
            if 0 <= submap_px_x < width and 0 <= submap_px_y < height:
                # Trục của submap frame trong ảnh đã xoay
                # Sau khi xoay ảnh, submap yaw relative to rotated image frame là 0
                submap_yaw_in_rotated_img = 0  # Vì đã xoay ảnh để align với submap

                submap_x_end_x = submap_px_x + int(axis_length//2 * math.cos(submap_yaw_in_rotated_img))
                submap_x_end_y = submap_px_y + int(axis_length//2 * math.sin(submap_yaw_in_rotated_img))

                submap_y_end_x = submap_px_x + int(axis_length//2 * math.cos(submap_yaw_in_rotated_img + math.pi/2))
                submap_y_end_y = submap_px_y + int(axis_length//2 * math.sin(submap_yaw_in_rotated_img + math.pi/2))

                # Vẽ trục X submap (màu đỏ nhạt)
                cv2.line(rgb_image, (submap_px_x, submap_px_y), (submap_x_end_x, submap_x_end_y), (128, 0, 0), 2)
                cv2.putText(rgb_image, 'X_sub', (submap_x_end_x + 2, submap_x_end_y), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (128, 0, 0), 1)

                # Vẽ trục Y submap (màu xanh nhạt)
                cv2.line(rgb_image, (submap_px_x, submap_px_y), (submap_y_end_x, submap_y_end_y), (0, 128, 0), 2)
                cv2.putText(rgb_image, 'Y_sub', (submap_y_end_x + 2, submap_y_end_y), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (0, 128, 0), 1)

                # Vẽ origin của submap (màu trắng)
                cv2.circle(rgb_image, (submap_px_x, submap_px_y), 4, (255, 255, 255), -1)
                cv2.putText(rgb_image, 'SUBMAP_ORIGIN', (submap_px_x + 5, submap_px_y + 15), cv2.FONT_HERSHEY_SIMPLEX, 0.3, (255, 255, 255), 1)
            else:
                rospy.logwarn("Submap origin at pixel (%d, %d) is outside image bounds", submap_px_x, submap_px_y)

            # Log thông tin transform
            rospy.loginfo("Submap %d Transform Chain:", submap_index)
            rospy.loginfo("  slice_pose: pos=(%.3f, %.3f, %.3f), quat=(%.3f, %.3f, %.3f, %.3f)",
                         texture.slice_pose.position.x, texture.slice_pose.position.y, texture.slice_pose.position.z,
                         texture.slice_pose.orientation.x, texture.slice_pose.orientation.y,
                         texture.slice_pose.orientation.z, texture.slice_pose.orientation.w)
            rospy.loginfo("  T_map_submap: (%.3f, %.3f, %.3f°)", T_map_submap_x, T_map_submap_y, math.degrees(T_map_submap_yaw))
            rospy.loginfo("  T_submap_slice: (%.3f, %.3f, %.3f°)", T_submap_slice_x, T_submap_slice_y, math.degrees(T_submap_slice_yaw))
            rospy.loginfo("  T_map_image: (%.3f, %.3f, %.3f°)", T_map_image_x, T_map_image_y, math.degrees(T_map_image_yaw))
            rospy.loginfo("  image_size: %.3fx%.3fm, resolution: %.3fm/px", W, H, resolution)
            rospy.loginfo("  submap_rel_world: (%.3f, %.3f)m", submap_rel_x, submap_rel_y)
            rospy.loginfo("  submp_rel_img: (%.3f, %.3f)m", submap_img_x, submap_img_y)
            rospy.loginfo("  submap_in_image: (%d, %d)px", submap_px_x, submap_px_y)
            rospy.loginfo("  submap_yaw_in_img: %.3f° (%.3f° - %.3f°)", math.degrees(T_map_submap_yaw - T_map_image_yaw), math.degrees(T_map_submap_yaw), math.degrees(T_map_image_yaw))

            return rgb_image

        except Exception as e:
            rospy.logwarn("Submap %d: error drawing coordinate axes: %s", submap_index, str(e))
            # Return grayscale converted to RGB
            return np.stack([image_array, image_array, image_array], axis=2)

    def display_submap_images(self, submap_data_list):
        """Hiển thị từng submap lên màn hình bằng OpenCV"""
        displayed_count = 0

        for i, (submap_index, image, resolution, pose, texture) in enumerate(submap_data_list):
            try:
                # Tạo enhanced image
                enhanced_image = self.enhance_contrast(image)
                if enhanced_image is None:
                    enhanced_image = image

                # Tạo image với trục tọa độ (RGB)
                image_with_axes = self.draw_coordinate_axes(enhanced_image, texture, submap_index)

                # Resize nếu ảnh quá lớn để hiển thị
                height, width = image_with_axes.shape[:2]
                max_display_size = 800
                if width > max_display_size or height > max_display_size:
                    scale = max_display_size / max(width, height)
                    new_width = int(width * scale)
                    new_height = int(height * scale)
                    image_with_axes = cv2.resize(image_with_axes, (new_width, new_height))
                    rospy.loginfo("Resized submap %d for display: %dx%d -> %dx%d",
                                 submap_index, width, height, new_width, new_height)

                # Thêm text thông tin lên ảnh
                info_text = [
                    f"Submap {submap_index} (Trajectory {self.trajectory_id})",
                    f"Size: {texture.width}x{texture.height} pixels",
                    f"Resolution: {texture.resolution:.3f} m/pixel",
                    f"Real size: {texture.width*texture.resolution:.2f}x{texture.height*texture.resolution:.2f} m",
                    f"Slice pose: ({texture.slice_pose.position.x:.3f}, {texture.slice_pose.position.y:.3f}, {texture.slice_pose.position.z:.3f})",
                    f"Slice orientation: ({texture.slice_pose.orientation.x:.3f}, {texture.slice_pose.orientation.y:.3f}, {texture.slice_pose.orientation.z:.3f}, {texture.slice_pose.orientation.w:.3f})",
                    "Red=X axis, Green=Y axis, White=Origin",
                    "Press any key for next, ESC to exit"
                ]

                y_offset = 25
                for j, text in enumerate(info_text):
                    cv2.putText(image_with_axes, text, (10, y_offset + j*20),
                               cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 0), 1)

                # Hiển thị ảnh
                window_name = f"Submap {submap_index}"
                try:
                    cv2.imshow(window_name, image_with_axes)
                    rospy.loginfo("Displaying submap %d. Press any key to continue, ESC to exit.", submap_index)

                    # Đợi user input
                    key = cv2.waitKey(0) & 0xFF
                    cv2.destroyWindow(window_name)
                except Exception as display_error:
                    rospy.logerr("OpenCV display error: %s", str(display_error))
                    rospy.loginfo("Saving image instead...")
                    # Fallback: save to file
                    fallback_path = os.path.join(self.output_dir, f"submap_{submap_index}_display.png")
                    cv2.imwrite(fallback_path, image_with_axes)
                    rospy.loginfo("Saved to: %s", fallback_path)
                    key = ord('q')  # Continue to next

                if key == 27:  # ESC key
                    rospy.loginfo("User pressed ESC, stopping display.")
                    break

                displayed_count += 1

            except Exception as e:
                rospy.logerr("Error displaying submap %d: %s", submap_index, str(e))

        cv2.destroyAllWindows()
        return displayed_count

    def enhance_contrast(self, image_array):
        """Tăng cường contrast cho image để dễ nhìn hơn"""
        try:
            # Normalize về 0-255, bỏ qua unknown pixels (128)
            known_pixels = image_array[image_array != 128]
            if len(known_pixels) == 0:
                return image_array

            min_val = np.min(known_pixels)
            max_val = np.max(known_pixels)

            if max_val > min_val:
                enhanced = image_array.copy().astype(np.float32)
                mask = enhanced != 128
                enhanced[mask] = ((enhanced[mask] - min_val) * 255.0 / (max_val - min_val))
                enhanced = enhanced.astype(np.uint8)
            else:
                enhanced = image_array.copy()

            return enhanced

        except Exception as e:
            rospy.logerr("Error enhancing contrast: %s", str(e))
            return image_array

    def publish_image_topic(self, image_array):
        """Publish image ra topic để hiển thị trên rviz"""
        try:
            if not self.publish_image:
                return

            # Chuyển đổi numpy array thành ROS Image message
            ros_image = self.bridge.cv2_to_imgmsg(image_array, encoding="mono8")
            ros_image.header.stamp = rospy.Time.now()
            ros_image.header.frame_id = "map"

            # Publish
            self.image_pub.publish(ros_image)
            rospy.loginfo("Published image to topic /submap_image_simple")

        except Exception as e:
            rospy.logerr("Error publishing image: %s", str(e))

    def process_submaps(self):
        """Xử lý chính: lấy submaps và lưu thành file"""
        # Đợi service sẵn sàng
        service_name = '/submap_query'
        try:
            rospy.loginfo("Waiting for service %s...", service_name)
            rospy.wait_for_service(service_name, timeout=10.0)
        except rospy.ROSException:
            rospy.logerr("Service %s not available", service_name)
            return False

        # Query submaps
        submap_data_list = []
        success_count = 0

        for i in range(self.num_submaps):
            submap_index = self.start_submap + i

            response = self.query_submap(submap_index)
            if response is None:
                continue

            # Xử lý từng texture trong response
            for texture in response.textures:
                image_array, resolution, pose = self.texture_to_image(texture, submap_index)
                if image_array is not None:
                    # Lưu cả texture object để vẽ trục tọa độ
                    submap_data_list.append((submap_index, image_array, resolution, pose, texture))
                    success_count += 1
                    break  # Chỉ lấy texture đầu tiên

        rospy.loginfo("Successfully processed %d submaps", success_count)

        if not submap_data_list:
            rospy.logerr("No valid submap data found")
            return False

        # Hiển thị từng submap lên màn hình
        displayed_count = self.display_submap_images(submap_data_list)

        # Publish submap đầu tiên ra topic
        if submap_data_list:
            first_image = submap_data_list[0][1]  # image array
            self.publish_image_topic(first_image)

        return displayed_count > 0

    def run(self):
        """Chạy node"""
        try:
            rospy.loginfo("Starting simple submap processing...")

            success = self.process_submaps()

            if success:
                rospy.loginfo("Simple submap processing completed successfully!")

                # Keep node alive để publish topic
                if self.publish_image:
                    rospy.loginfo("Node will keep running to publish image topic...")
                    rospy.spin()
                else:
                    rospy.loginfo("Images saved. Node shutting down...")
            else:
                rospy.logerr("Simple submap processing failed!")

        except KeyboardInterrupt:
            rospy.loginfo("Shutting down Submap Image Simple Node...")
        except Exception as e:
            rospy.logerr("Unexpected error: %s", str(e))

def main():
    """Main function"""
    try:
        node = SubmapImageSimpleNode()
        node.run()
    except rospy.ROSInterruptException:
        pass

if __name__ == '__main__':
    main()