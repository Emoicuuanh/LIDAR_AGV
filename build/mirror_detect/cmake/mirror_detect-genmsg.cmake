# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mirror_detect: 10 messages, 1 services")

set(MSG_I_FLAGS "-Imirror_detect:/home/mkac/mav_ws/src/mirror_detect/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Ipcl_msgs:/opt/ros/noetic/share/pcl_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mirror_detect_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg" "geometry_msgs/Point:pcl_msgs/ModelCoefficients:pcl_msgs/PointIndices:geometry_msgs/Quaternion:std_msgs/Int32:std_msgs/Float32:std_msgs/ColorRGBA:std_msgs/Header:visualization_msgs/Marker:geometry_msgs/Vector3:sensor_msgs/PointCloud2:geometry_msgs/Pose:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg" "geometry_msgs/Point:pcl_msgs/ModelCoefficients:pcl_msgs/PointIndices:geometry_msgs/Quaternion:std_msgs/Int32:std_msgs/Float32:std_msgs/ColorRGBA:std_msgs/Header:mirror_detect/Line:visualization_msgs/Marker:geometry_msgs/Vector3:sensor_msgs/PointCloud2:geometry_msgs/Pose:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg" "pcl_msgs/ModelCoefficients:std_msgs/ColorRGBA:mirror_detect/Line:mirror_detect/LineArray:geometry_msgs/PoseStamped:sensor_msgs/PointCloud2:sensor_msgs/PointField:mirror_detect/ICP:std_msgs/Float32:geometry_msgs/TransformStamped:mirror_detect/BoundingBox:geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Transform:std_msgs/Header:visualization_msgs/Marker:std_msgs/Bool:geometry_msgs/Pose:pcl_msgs/PointIndices:std_msgs/Int32:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg" "pcl_msgs/ModelCoefficients:std_msgs/ColorRGBA:mirror_detect/Line:mirror_detect/LineArray:geometry_msgs/PoseStamped:sensor_msgs/PointCloud2:sensor_msgs/PointField:mirror_detect/ICP:std_msgs/Float32:geometry_msgs/TransformStamped:mirror_detect/BoundingBox:geometry_msgs/Vector3:mirror_detect/Cluster:geometry_msgs/Quaternion:geometry_msgs/Transform:std_msgs/Header:visualization_msgs/Marker:std_msgs/Bool:geometry_msgs/Pose:pcl_msgs/PointIndices:std_msgs/Int32:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg" "geometry_msgs/Quaternion:std_msgs/ColorRGBA:std_msgs/Header:visualization_msgs/Marker:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg" "geometry_msgs/Point:pcl_msgs/ModelCoefficients:pcl_msgs/PointIndices:geometry_msgs/Quaternion:std_msgs/Int32:std_msgs/Float32:std_msgs/ColorRGBA:std_msgs/Header:mirror_detect/Line:visualization_msgs/Marker:mirror_detect/BoundingBox:geometry_msgs/Vector3:sensor_msgs/PointCloud2:geometry_msgs/Pose:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg" "geometry_msgs/Quaternion:std_msgs/ColorRGBA:geometry_msgs/Transform:std_msgs/Header:visualization_msgs/Marker:geometry_msgs/TransformStamped:geometry_msgs/Vector3:geometry_msgs/PoseStamped:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg" "geometry_msgs/Quaternion:std_msgs/Float32:std_msgs/ColorRGBA:visualization_msgs/Marker:std_msgs/Header:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg" "nav_msgs/Path:geometry_msgs/PoseArray:geometry_msgs/Twist:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Vector3:geometry_msgs/PoseStamped:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv" NAME_WE)
add_custom_target(_mirror_detect_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mirror_detect" "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)
_generate_msg_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)

### Generating Services
_generate_srv_cpp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
)

### Generating Module File
_generate_module_cpp(mirror_detect
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mirror_detect_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mirror_detect_generate_messages mirror_detect_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv" NAME_WE)
add_dependencies(mirror_detect_generate_messages_cpp _mirror_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirror_detect_gencpp)
add_dependencies(mirror_detect_gencpp mirror_detect_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirror_detect_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)
_generate_msg_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)

### Generating Services
_generate_srv_eus(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
)

### Generating Module File
_generate_module_eus(mirror_detect
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mirror_detect_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mirror_detect_generate_messages mirror_detect_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv" NAME_WE)
add_dependencies(mirror_detect_generate_messages_eus _mirror_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirror_detect_geneus)
add_dependencies(mirror_detect_geneus mirror_detect_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirror_detect_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)
_generate_msg_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)

### Generating Services
_generate_srv_lisp(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
)

### Generating Module File
_generate_module_lisp(mirror_detect
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mirror_detect_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mirror_detect_generate_messages mirror_detect_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv" NAME_WE)
add_dependencies(mirror_detect_generate_messages_lisp _mirror_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirror_detect_genlisp)
add_dependencies(mirror_detect_genlisp mirror_detect_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirror_detect_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)
_generate_msg_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)

### Generating Services
_generate_srv_nodejs(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
)

### Generating Module File
_generate_module_nodejs(mirror_detect
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mirror_detect_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mirror_detect_generate_messages mirror_detect_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv" NAME_WE)
add_dependencies(mirror_detect_generate_messages_nodejs _mirror_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirror_detect_gennodejs)
add_dependencies(mirror_detect_gennodejs mirror_detect_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirror_detect_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)
_generate_msg_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)

### Generating Services
_generate_srv_py(mirror_detect
  "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
)

### Generating Module File
_generate_module_py(mirror_detect
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mirror_detect_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mirror_detect_generate_messages mirror_detect_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Line.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Cluster.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ClusterArray.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/BoundingBox.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Dock.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/ICP.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/LineOfSight.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/msg/Plan.msg" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/mirror_detect/srv/HubService.srv" NAME_WE)
add_dependencies(mirror_detect_generate_messages_py _mirror_detect_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mirror_detect_genpy)
add_dependencies(mirror_detect_genpy mirror_detect_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mirror_detect_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mirror_detect
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mirror_detect_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mirror_detect_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET pcl_msgs_generate_messages_cpp)
  add_dependencies(mirror_detect_generate_messages_cpp pcl_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mirror_detect_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(mirror_detect_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(mirror_detect_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(mirror_detect_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mirror_detect
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mirror_detect_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mirror_detect_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET pcl_msgs_generate_messages_eus)
  add_dependencies(mirror_detect_generate_messages_eus pcl_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mirror_detect_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(mirror_detect_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(mirror_detect_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(mirror_detect_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mirror_detect
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mirror_detect_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mirror_detect_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET pcl_msgs_generate_messages_lisp)
  add_dependencies(mirror_detect_generate_messages_lisp pcl_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mirror_detect_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(mirror_detect_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(mirror_detect_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(mirror_detect_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mirror_detect
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mirror_detect_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mirror_detect_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET pcl_msgs_generate_messages_nodejs)
  add_dependencies(mirror_detect_generate_messages_nodejs pcl_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mirror_detect_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(mirror_detect_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(mirror_detect_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(mirror_detect_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mirror_detect
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mirror_detect_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mirror_detect_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET pcl_msgs_generate_messages_py)
  add_dependencies(mirror_detect_generate_messages_py pcl_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mirror_detect_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(mirror_detect_generate_messages_py visualization_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(mirror_detect_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(mirror_detect_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
