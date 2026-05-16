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
import scipy.ndimage

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
            # Normalize pixel values to 0-255 range

            raw_image = cells_array.reshape((texture.height, texture.width))

            # Hiển thị ảnh raw bằng OpenCV
            cv2.imshow("Raw Texture Image", raw_image)
            cv2.waitKey(0)
            cv2.destroyAllWindows()
            # Normalize pixel values to 0-255 range

            if cells_array is not None:
                # Create a mask to exclude unknown pixels (128)
                mask = cells_array != 128


                if np.any(mask):  # Check if there are any known pixels
                    min_val = np.min(cells_array[mask])
                    max_val = np.max(cells_array[mask])

                    if max_val > min_val:
                        # Normalize known pixels to 0-255
                        normalized_cells = cells_array.astype(np.float32)
                        normalized_cells[mask] = (normalized_cells[mask] - min_val) * (255.0 / (max_val - min_val))

                        cells_array = np.clip(normalized_cells, 0, 255).astype(np.uint8)
                    else:
                        # If all known pixels have the same value, keep them as is
                        cells_array = cells_array.astype(np.uint8)
                else:
                    rospy.logwarn("Submap %d: No valid pixels found for normalization", submap_index)

                # Ensure unknown pixels (128) remain unchanged

            # Nếu vẫn không có dữ liệu hợp lệ

            if cells_array is None or len(cells_array) != expected_size:
                rospy.logwarn("Submap %d: cannot process, size mismatch", submap_index)
                return None, None, None
            cells_array[(cells_array > 0) & (cells_array < 70)] = 0
            # Reshape thành image 2D
            image_2d = cells_array.reshape((height, width))

            # Tạo một kernel 3x3 để kiểm tra các ô lân cận
            kernel = np.ones((3, 3), dtype=np.uint8)

            # Tìm các ô có giá trị 0
            zero_mask = (image_2d == 0)

            # Đếm số lượng ô lân cận khác 0 cho mỗi ô
            neighbor_count = scipy.ndimage.convolve((image_2d != 0).astype(np.uint8), kernel, mode='constant', cval=0)

            # Thay đổi các ô 0 thành 128 nếu tất cả các ô lân cận cũng là 0
            image_2d[(zero_mask) & (neighbor_count == 0)] = 128

            # Cập nhật cells_array với kết quả
            cells_array = image_2d.flatten()  # Chuyển lại về mảng 1D nếu cần
            image_array = image_2d
            # image_array = cells_array.reshape((height, width))
            # cv2.imshow("Submap Image", image_array)
            # cv2.waitKey(0)
            # Debug: Kiểm tra layout dữ liệu
            # self.debug_image_layout(image_array, submap_index)

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

    def save_individual_images(self, submap_data_list):
        """Lưu từng submap thành file riêng"""
        saved_files = []

        for i, (submap_index, image, resolution, pose) in enumerate(submap_data_list):
            try:
                # Tạo filename
                filename = f"submap_individual_{submap_index}_traj{self.trajectory_id}.png"
                filepath = os.path.join(self.output_dir, filename)
                # cv2.imshow("Submap Image", image)
                # cv2.waitKey(0)
                # Lưu bằng PIL

                rospy.loginfo("Submap %d: image min=%d, max=%d, unique_values=%s",
                    submap_index, np.min(image), np.max(image), np.unique(image))

                pil_image = Image.fromarray(image, mode='L')  # Grayscale
                pil_image.save(filepath)

                rospy.loginfo("Saved submap %d to: %s", submap_index, filepath)
                saved_files.append(filepath)

                # Lưu bản enhanced
                enhanced_image = self.enhance_contrast(image)
                if enhanced_image is not None:
                    enhanced_filename = f"submap_individual_enhanced_{submap_index}_traj{self.trajectory_id}.png"
                    enhanced_filepath = os.path.join(self.output_dir, enhanced_filename)
                    pil_enhanced = Image.fromarray(enhanced_image, mode='L')
                    pil_enhanced.save(enhanced_filepath)
                    rospy.loginfo("Saved enhanced submap %d to: %s", submap_index, enhanced_filepath)

            except Exception as e:
                rospy.logerr("Error saving submap %d: %s", submap_index, str(e))

        return saved_files

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
                    submap_data_list.append((submap_index, image_array, resolution, pose))
                    success_count += 1
                    break  # Chỉ lấy texture đầu tiên

        rospy.loginfo("Successfully processed %d submaps", success_count)

        if not submap_data_list:
            rospy.logerr("No valid submap data found")
            return False

        # Lưu từng submap riêng biệt
        saved_files = self.save_individual_images(submap_data_list)

        # Publish submap đầu tiên ra topic
        if submap_data_list:
            first_image = submap_data_list[0][1]  # image array
            self.publish_image_topic(first_image)

        return len(saved_files) > 0

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