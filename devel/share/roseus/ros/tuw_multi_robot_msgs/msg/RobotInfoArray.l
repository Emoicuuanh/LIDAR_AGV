;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RobotInfoArray)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RobotInfoArray (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFOARRAY")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFOARRAY"))

(in-package "ROS")
;;//! \htmlinclude RobotInfoArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::RobotInfoArray
  :super ros::object
  :slots (_header _robot_info ))

(defmethod tuw_multi_robot_msgs::RobotInfoArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_info __robot_info) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_info __robot_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_info
   (&rest __robot_info)
   (if (keywordp (car __robot_info))
       (send* _robot_info __robot_info)
     (progn
       (if __robot_info (setq _robot_info (car __robot_info)))
       _robot_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tuw_multi_robot_msgs/RobotInfo[] _robot_info
    (apply #'+ (send-all _robot_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tuw_multi_robot_msgs/RobotInfo[] _robot_info
     (write-long (length _robot_info) s)
     (dolist (elem _robot_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tuw_multi_robot_msgs/RobotInfo[] _robot_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_info (let (r) (dotimes (i n) (push (instance tuw_multi_robot_msgs::RobotInfo :init) r)) r))
     (dolist (elem- _robot_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RobotInfoArray :md5sum-) "8499af4683f82d8a5f5431edfe73ca8f")
(setf (get tuw_multi_robot_msgs::RobotInfoArray :datatype-) "tuw_multi_robot_msgs/RobotInfoArray")
(setf (get tuw_multi_robot_msgs::RobotInfoArray :definition-)
      "Header header # time of route generation
RobotInfo[] robot_info
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: tuw_multi_robot_msgs/RobotInfo
#################################################################
## Presents dynamic parameters of a robot
#################################################################

Header header                            # the creation time
string robot_name                        # the name of the robot (used in preconditions and topics)
geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header
geometry_msgs/Twist velocity             # velocity of the robot (linear and angular)
int32 shape                              # the shape of the robots (see enums)
uint32 layout_map
float32[] shape_variables                # shape variables to define width height, ...
RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
string   mode                             # the mode of operation
string   status                           # the status of the robot
string detail_status
int32   good_id                          # the good id attached to the robot
int32   order_id                         # the order id scheduled to this robot (-1: none)
int32   order_status                     # the status of the assigned order

# mode
int32 MODE_NA = 0                   # undefined mode
int32 MODE_IDLE = 1                 # robot is idle
int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following
int32 MODE_PICKUP = 3               # robot is picking up goods

# status
int32 STATUS_DRIVING = 0             # robot is driving
int32 STATUS_STOPPED = 1            # robot has stopped
int32 STATUS_DONE = 2               # robot has finished its last job
int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task

# good_id
int32 GOOD_EMPTY = -1               # no goods attached
int32 GOOD_NA = -2                  # undefined good

# shape
int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars
int32 SHAPE_RECTANGLE = 1

# order_status
int32 ORDER_NONE = 0                # no order assigned
int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order
int32 ORDER_PICKUP = 2              # the robot picks up a good at the station
int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another
int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order

bool auto_mode
bool pause
bool init_pose
bool allow_estimate_pose
string current_action_type
string direction_move
string state_move
string mission_group

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: tuw_multi_robot_msgs/RoutePrecondition
#################################################################
## Route Preconditions are used to sync robots on a route
## e.g.: Each robot publishes its current step of its route
## with such a message
## The specific segments of a route are marked with such
## preconditions to block a robot from entering a segment
## until the sync message of the other robot has the right
## route_segment_nr
#################################################################

string robot_id                  # the robot name for the precondition
int32 current_route_segment      # the segment nr of the route executed by the given robot
uint32 current_segment_id
")



(provide :tuw_multi_robot_msgs/RobotInfoArray "8499af4683f82d8a5f5431edfe73ca8f")


