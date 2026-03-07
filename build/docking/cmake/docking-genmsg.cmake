# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "docking: 17 messages, 1 services")

set(MSG_I_FLAGS "-Idocking:/home/mkac/mav_ws/src/docking/msg;-Idocking:/home/mkac/mav_ws/devel/share/docking/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Ipcl_msgs:/opt/ros/noetic/share/pcl_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(docking_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Line.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/Line.msg" "std_msgs/Float32:geometry_msgs/Quaternion:std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:std_msgs/Int32:sensor_msgs/PointField:visualization_msgs/Marker:geometry_msgs/Vector3:pcl_msgs/PointIndices:pcl_msgs/ModelCoefficients:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineArray.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/LineArray.msg" "std_msgs/Float32:geometry_msgs/Quaternion:sensor_msgs/PointCloud2:std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:std_msgs/Int32:sensor_msgs/PointField:visualization_msgs/Marker:geometry_msgs/Vector3:pcl_msgs/PointIndices:pcl_msgs/ModelCoefficients:docking/Line"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Cluster.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/Cluster.msg" "std_msgs/Float32:std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:docking/Line:visualization_msgs/Marker:geometry_msgs/Transform:std_msgs/Bool:docking/ICP:docking/LineArray:sensor_msgs/PointField:pcl_msgs/ModelCoefficients:geometry_msgs/Quaternion:geometry_msgs/TransformStamped:std_msgs/Int32:geometry_msgs/Vector3:docking/BoundingBox:pcl_msgs/PointIndices:geometry_msgs/PoseStamped:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg" "std_msgs/Float32:std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:docking/Cluster:docking/Line:visualization_msgs/Marker:geometry_msgs/Transform:std_msgs/Bool:docking/ICP:docking/LineArray:sensor_msgs/PointField:pcl_msgs/ModelCoefficients:geometry_msgs/Quaternion:geometry_msgs/TransformStamped:std_msgs/Int32:geometry_msgs/Vector3:docking/BoundingBox:pcl_msgs/PointIndices:geometry_msgs/PoseStamped:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg" "std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Vector3:visualization_msgs/Marker:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Dock.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/Dock.msg" "std_msgs/Float32:geometry_msgs/Quaternion:sensor_msgs/PointCloud2:std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:std_msgs/Int32:sensor_msgs/PointField:visualization_msgs/Marker:geometry_msgs/Vector3:docking/BoundingBox:pcl_msgs/PointIndices:pcl_msgs/ModelCoefficients:docking/Line"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ICP.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/ICP.msg" "std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Vector3:visualization_msgs/Marker:geometry_msgs/Transform:geometry_msgs/Quaternion:geometry_msgs/TransformStamped:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg" "std_msgs/Float32:std_msgs/ColorRGBA:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Vector3:visualization_msgs/Marker:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Plan.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/msg/Plan.msg" "nav_msgs/Path:geometry_msgs/PoseArray:geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Twist:geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg" "docking/DockingActionFeedback:actionlib_msgs/GoalID:docking/DockingFeedback:docking/DockingGoal:std_msgs/Header:actionlib_msgs/GoalStatus:docking/DockingResult:docking/DockingActionGoal:docking/DockingActionResult"
)

get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg" "std_msgs/Header:docking/DockingGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg" "std_msgs/Header:docking/DockingResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg" "std_msgs/Header:docking/DockingFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg" ""
)

get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg" ""
)

get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg" ""
)

get_filename_component(_filename "/home/mkac/mav_ws/src/docking/srv/DockService.srv" NAME_WE)
add_custom_target(_docking_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "docking" "/home/mkac/mav_ws/src/docking/srv/DockService.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Cluster.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/src/docking/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)
_generate_msg_cpp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)

### Generating Services
_generate_srv_cpp(docking
  "/home/mkac/mav_ws/src/docking/srv/DockService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
)

### Generating Module File
_generate_module_cpp(docking
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(docking_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(docking_generate_messages docking_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Line.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Cluster.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Dock.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ICP.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Plan.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/srv/DockService.srv" NAME_WE)
add_dependencies(docking_generate_messages_cpp _docking_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(docking_gencpp)
add_dependencies(docking_gencpp docking_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS docking_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Cluster.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/src/docking/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)
_generate_msg_eus(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)

### Generating Services
_generate_srv_eus(docking
  "/home/mkac/mav_ws/src/docking/srv/DockService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
)

### Generating Module File
_generate_module_eus(docking
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(docking_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(docking_generate_messages docking_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Line.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Cluster.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Dock.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ICP.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Plan.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/srv/DockService.srv" NAME_WE)
add_dependencies(docking_generate_messages_eus _docking_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(docking_geneus)
add_dependencies(docking_geneus docking_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS docking_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Cluster.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/src/docking/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)
_generate_msg_lisp(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)

### Generating Services
_generate_srv_lisp(docking
  "/home/mkac/mav_ws/src/docking/srv/DockService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
)

### Generating Module File
_generate_module_lisp(docking
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(docking_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(docking_generate_messages docking_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Line.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Cluster.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Dock.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ICP.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Plan.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/srv/DockService.srv" NAME_WE)
add_dependencies(docking_generate_messages_lisp _docking_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(docking_genlisp)
add_dependencies(docking_genlisp docking_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS docking_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Cluster.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/src/docking/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)
_generate_msg_nodejs(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)

### Generating Services
_generate_srv_nodejs(docking
  "/home/mkac/mav_ws/src/docking/srv/DockService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
)

### Generating Module File
_generate_module_nodejs(docking
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(docking_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(docking_generate_messages docking_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Line.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Cluster.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Dock.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ICP.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Plan.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/srv/DockService.srv" NAME_WE)
add_dependencies(docking_generate_messages_nodejs _docking_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(docking_gennodejs)
add_dependencies(docking_gennodejs docking_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS docking_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/Line.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/LineArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/Cluster.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/src/docking/msg/Cluster.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/mkac/mav_ws/src/docking/msg/ICP.msg;/home/mkac/mav_ws/src/docking/msg/LineArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/Dock.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/PointIndices.msg;/opt/ros/noetic/share/pcl_msgs/cmake/../msg/ModelCoefficients.msg;/home/mkac/mav_ws/src/docking/msg/Line.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/ICP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/visualization_msgs/cmake/../msg/Marker.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/src/docking/msg/Plan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)
_generate_msg_py(docking
  "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)

### Generating Services
_generate_srv_py(docking
  "/home/mkac/mav_ws/src/docking/srv/DockService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
)

### Generating Module File
_generate_module_py(docking
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(docking_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(docking_generate_messages docking_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Line.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Cluster.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ClusterArray.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/BoundingBox.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Dock.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/MinMaxPoint.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/ICP.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/LineOfSight.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/msg/Plan.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingAction.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingActionFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingGoal.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingResult.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/devel/share/docking/msg/DockingFeedback.msg" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/docking/srv/DockService.srv" NAME_WE)
add_dependencies(docking_generate_messages_py _docking_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(docking_genpy)
add_dependencies(docking_genpy docking_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS docking_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/docking
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(docking_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(docking_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET pcl_msgs_generate_messages_cpp)
  add_dependencies(docking_generate_messages_cpp pcl_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(docking_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(docking_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(docking_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(docking_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/docking
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(docking_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(docking_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET pcl_msgs_generate_messages_eus)
  add_dependencies(docking_generate_messages_eus pcl_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(docking_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(docking_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(docking_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(docking_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/docking
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(docking_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(docking_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET pcl_msgs_generate_messages_lisp)
  add_dependencies(docking_generate_messages_lisp pcl_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(docking_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(docking_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(docking_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(docking_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/docking
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(docking_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(docking_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET pcl_msgs_generate_messages_nodejs)
  add_dependencies(docking_generate_messages_nodejs pcl_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(docking_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(docking_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(docking_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(docking_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/docking
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(docking_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(docking_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET pcl_msgs_generate_messages_py)
  add_dependencies(docking_generate_messages_py pcl_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(docking_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(docking_generate_messages_py visualization_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(docking_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(docking_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
