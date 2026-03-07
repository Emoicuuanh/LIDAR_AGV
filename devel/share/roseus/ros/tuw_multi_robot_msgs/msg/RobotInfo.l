;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RobotInfo)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RobotInfo (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))

(in-package "ROS")
;;//! \htmlinclude RobotInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_NA*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*MODE_NA* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*MODE_NA* 0)
(intern "*MODE_IDLE*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*MODE_IDLE* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*MODE_IDLE* 1)
(intern "*MODE_SEGMENT_FOLLOWING*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*MODE_SEGMENT_FOLLOWING* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*MODE_SEGMENT_FOLLOWING* 2)
(intern "*MODE_PICKUP*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*MODE_PICKUP* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*MODE_PICKUP* 3)
(intern "*STATUS_DRIVING*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*STATUS_DRIVING* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*STATUS_DRIVING* 0)
(intern "*STATUS_STOPPED*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*STATUS_STOPPED* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*STATUS_STOPPED* 1)
(intern "*STATUS_DONE*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*STATUS_DONE* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*STATUS_DONE* 2)
(intern "*STATUS_BROKEN*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*STATUS_BROKEN* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*STATUS_BROKEN* 3)
(intern "*GOOD_EMPTY*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*GOOD_EMPTY* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*GOOD_EMPTY* -1)
(intern "*GOOD_NA*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*GOOD_NA* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*GOOD_NA* -2)
(intern "*SHAPE_CIRCLE*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*SHAPE_CIRCLE* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*SHAPE_CIRCLE* 0)
(intern "*SHAPE_RECTANGLE*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*SHAPE_RECTANGLE* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*SHAPE_RECTANGLE* 1)
(intern "*ORDER_NONE*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*ORDER_NONE* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*ORDER_NONE* 0)
(intern "*ORDER_APPROACH*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*ORDER_APPROACH* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*ORDER_APPROACH* 1)
(intern "*ORDER_PICKUP*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*ORDER_PICKUP* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*ORDER_PICKUP* 2)
(intern "*ORDER_TRANSPORT*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*ORDER_TRANSPORT* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*ORDER_TRANSPORT* 3)
(intern "*ORDER_DROP*" (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(shadow '*ORDER_DROP* (find-package "TUW_MULTI_ROBOT_MSGS::ROBOTINFO"))
(defconstant tuw_multi_robot_msgs::RobotInfo::*ORDER_DROP* 4)

(defun tuw_multi_robot_msgs::RobotInfo-to-symbol (const)
  (cond
        ((= const 0) 'tuw_multi_robot_msgs::RobotInfo::*MODE_NA*)
        ((= const 1) 'tuw_multi_robot_msgs::RobotInfo::*MODE_IDLE*)
        ((= const 2) 'tuw_multi_robot_msgs::RobotInfo::*MODE_SEGMENT_FOLLOWING*)
        ((= const 3) 'tuw_multi_robot_msgs::RobotInfo::*MODE_PICKUP*)
        ((= const 0) 'tuw_multi_robot_msgs::RobotInfo::*STATUS_DRIVING*)
        ((= const 1) 'tuw_multi_robot_msgs::RobotInfo::*STATUS_STOPPED*)
        ((= const 2) 'tuw_multi_robot_msgs::RobotInfo::*STATUS_DONE*)
        ((= const 3) 'tuw_multi_robot_msgs::RobotInfo::*STATUS_BROKEN*)
        ((= const -1) 'tuw_multi_robot_msgs::RobotInfo::*GOOD_EMPTY*)
        ((= const -2) 'tuw_multi_robot_msgs::RobotInfo::*GOOD_NA*)
        ((= const 0) 'tuw_multi_robot_msgs::RobotInfo::*SHAPE_CIRCLE*)
        ((= const 1) 'tuw_multi_robot_msgs::RobotInfo::*SHAPE_RECTANGLE*)
        ((= const 0) 'tuw_multi_robot_msgs::RobotInfo::*ORDER_NONE*)
        ((= const 1) 'tuw_multi_robot_msgs::RobotInfo::*ORDER_APPROACH*)
        ((= const 2) 'tuw_multi_robot_msgs::RobotInfo::*ORDER_PICKUP*)
        ((= const 3) 'tuw_multi_robot_msgs::RobotInfo::*ORDER_TRANSPORT*)
        ((= const 4) 'tuw_multi_robot_msgs::RobotInfo::*ORDER_DROP*)
        (t nil)))

(defclass tuw_multi_robot_msgs::RobotInfo
  :super ros::object
  :slots (_header _robot_name _pose _velocity _shape _layout_map _shape_variables _sync _mode _status _detail_status _good_id _order_id _order_status _auto_mode _pause _init_pose _allow_estimate_pose _current_action_type _direction_move _state_move _mission_group ))

(defmethod tuw_multi_robot_msgs::RobotInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_name __robot_name) "")
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:shape __shape) 0)
    ((:layout_map __layout_map) 0)
    ((:shape_variables __shape_variables) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:sync __sync) (instance tuw_multi_robot_msgs::RoutePrecondition :init))
    ((:mode __mode) "")
    ((:status __status) "")
    ((:detail_status __detail_status) "")
    ((:good_id __good_id) 0)
    ((:order_id __order_id) 0)
    ((:order_status __order_status) 0)
    ((:auto_mode __auto_mode) nil)
    ((:pause __pause) nil)
    ((:init_pose __init_pose) nil)
    ((:allow_estimate_pose __allow_estimate_pose) nil)
    ((:current_action_type __current_action_type) "")
    ((:direction_move __direction_move) "")
    ((:state_move __state_move) "")
    ((:mission_group __mission_group) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_name (string __robot_name))
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _shape (round __shape))
   (setq _layout_map (round __layout_map))
   (setq _shape_variables __shape_variables)
   (setq _sync __sync)
   (setq _mode (string __mode))
   (setq _status (string __status))
   (setq _detail_status (string __detail_status))
   (setq _good_id (round __good_id))
   (setq _order_id (round __order_id))
   (setq _order_status (round __order_status))
   (setq _auto_mode __auto_mode)
   (setq _pause __pause)
   (setq _init_pose __init_pose)
   (setq _allow_estimate_pose __allow_estimate_pose)
   (setq _current_action_type (string __current_action_type))
   (setq _direction_move (string __direction_move))
   (setq _state_move (string __state_move))
   (setq _mission_group (string __mission_group))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:layout_map
   (&optional __layout_map)
   (if __layout_map (setq _layout_map __layout_map)) _layout_map)
  (:shape_variables
   (&optional __shape_variables)
   (if __shape_variables (setq _shape_variables __shape_variables)) _shape_variables)
  (:sync
   (&rest __sync)
   (if (keywordp (car __sync))
       (send* _sync __sync)
     (progn
       (if __sync (setq _sync (car __sync)))
       _sync)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:detail_status
   (&optional __detail_status)
   (if __detail_status (setq _detail_status __detail_status)) _detail_status)
  (:good_id
   (&optional __good_id)
   (if __good_id (setq _good_id __good_id)) _good_id)
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:order_status
   (&optional __order_status)
   (if __order_status (setq _order_status __order_status)) _order_status)
  (:auto_mode
   (&optional (__auto_mode :null))
   (if (not (eq __auto_mode :null)) (setq _auto_mode __auto_mode)) _auto_mode)
  (:pause
   (&optional (__pause :null))
   (if (not (eq __pause :null)) (setq _pause __pause)) _pause)
  (:init_pose
   (&optional (__init_pose :null))
   (if (not (eq __init_pose :null)) (setq _init_pose __init_pose)) _init_pose)
  (:allow_estimate_pose
   (&optional (__allow_estimate_pose :null))
   (if (not (eq __allow_estimate_pose :null)) (setq _allow_estimate_pose __allow_estimate_pose)) _allow_estimate_pose)
  (:current_action_type
   (&optional __current_action_type)
   (if __current_action_type (setq _current_action_type __current_action_type)) _current_action_type)
  (:direction_move
   (&optional __direction_move)
   (if __direction_move (setq _direction_move __direction_move)) _direction_move)
  (:state_move
   (&optional __state_move)
   (if __state_move (setq _state_move __state_move)) _state_move)
  (:mission_group
   (&optional __mission_group)
   (if __mission_group (setq _mission_group __mission_group)) _mission_group)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_name
    4 (length _robot_name)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; int32 _shape
    4
    ;; uint32 _layout_map
    4
    ;; float32[] _shape_variables
    (* 4    (length _shape_variables)) 4
    ;; tuw_multi_robot_msgs/RoutePrecondition _sync
    (send _sync :serialization-length)
    ;; string _mode
    4 (length _mode)
    ;; string _status
    4 (length _status)
    ;; string _detail_status
    4 (length _detail_status)
    ;; int32 _good_id
    4
    ;; int32 _order_id
    4
    ;; int32 _order_status
    4
    ;; bool _auto_mode
    1
    ;; bool _pause
    1
    ;; bool _init_pose
    1
    ;; bool _allow_estimate_pose
    1
    ;; string _current_action_type
    4 (length _current_action_type)
    ;; string _direction_move
    4 (length _direction_move)
    ;; string _state_move
    4 (length _state_move)
    ;; string _mission_group
    4 (length _mission_group)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; int32 _shape
       (write-long _shape s)
     ;; uint32 _layout_map
       (write-long _layout_map s)
     ;; float32[] _shape_variables
     (write-long (length _shape_variables) s)
     (dotimes (i (length _shape_variables))
       (sys::poke (elt _shape_variables i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; tuw_multi_robot_msgs/RoutePrecondition _sync
       (send _sync :serialize s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _detail_status
       (write-long (length _detail_status) s) (princ _detail_status s)
     ;; int32 _good_id
       (write-long _good_id s)
     ;; int32 _order_id
       (write-long _order_id s)
     ;; int32 _order_status
       (write-long _order_status s)
     ;; bool _auto_mode
       (if _auto_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _pause
       (if _pause (write-byte -1 s) (write-byte 0 s))
     ;; bool _init_pose
       (if _init_pose (write-byte -1 s) (write-byte 0 s))
     ;; bool _allow_estimate_pose
       (if _allow_estimate_pose (write-byte -1 s) (write-byte 0 s))
     ;; string _current_action_type
       (write-long (length _current_action_type) s) (princ _current_action_type s)
     ;; string _direction_move
       (write-long (length _direction_move) s) (princ _direction_move s)
     ;; string _state_move
       (write-long (length _state_move) s) (princ _state_move s)
     ;; string _mission_group
       (write-long (length _mission_group) s) (princ _mission_group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; int32 _shape
     (setq _shape (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _layout_map
     (setq _layout_map (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _shape_variables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_variables (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _shape_variables i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; tuw_multi_robot_msgs/RoutePrecondition _sync
     (send _sync :deserialize buf ptr-) (incf ptr- (send _sync :serialization-length))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _detail_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _good_id
     (setq _good_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _order_id
     (setq _order_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _order_status
     (setq _order_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _auto_mode
     (setq _auto_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pause
     (setq _pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _init_pose
     (setq _init_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _allow_estimate_pose
     (setq _allow_estimate_pose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _current_action_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_action_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _direction_move
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction_move (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state_move
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_move (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mission_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mission_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RobotInfo :md5sum-) "cc7493e48479d00d2e68762d70218df7")
(setf (get tuw_multi_robot_msgs::RobotInfo :datatype-) "tuw_multi_robot_msgs/RobotInfo")
(setf (get tuw_multi_robot_msgs::RobotInfo :definition-)
      "#################################################################
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



(provide :tuw_multi_robot_msgs/RobotInfo "cc7493e48479d00d2e68762d70218df7")


