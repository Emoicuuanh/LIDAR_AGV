; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RobotInfoArray.msg.html

(cl:defclass <RobotInfoArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_info
    :reader robot_info
    :initarg :robot_info
    :type (cl:vector tuw_multi_robot_msgs-msg:RobotInfo)
   :initform (cl:make-array 0 :element-type 'tuw_multi_robot_msgs-msg:RobotInfo :initial-element (cl:make-instance 'tuw_multi_robot_msgs-msg:RobotInfo))))
)

(cl:defclass RobotInfoArray (<RobotInfoArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInfoArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInfoArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RobotInfoArray> is deprecated: use tuw_multi_robot_msgs-msg:RobotInfoArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_info-val :lambda-list '(m))
(cl:defmethod robot_info-val ((m <RobotInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:robot_info-val is deprecated.  Use tuw_multi_robot_msgs-msg:robot_info instead.")
  (robot_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInfoArray>) ostream)
  "Serializes a message object of type '<RobotInfoArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robot_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInfoArray>) istream)
  "Deserializes a message object of type '<RobotInfoArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_multi_robot_msgs-msg:RobotInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInfoArray>)))
  "Returns string type for a message object of type '<RobotInfoArray>"
  "tuw_multi_robot_msgs/RobotInfoArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInfoArray)))
  "Returns string type for a message object of type 'RobotInfoArray"
  "tuw_multi_robot_msgs/RobotInfoArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInfoArray>)))
  "Returns md5sum for a message object of type '<RobotInfoArray>"
  "8499af4683f82d8a5f5431edfe73ca8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInfoArray)))
  "Returns md5sum for a message object of type 'RobotInfoArray"
  "8499af4683f82d8a5f5431edfe73ca8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInfoArray>)))
  "Returns full string definition for message of type '<RobotInfoArray>"
  (cl:format cl:nil "Header header # time of route generation~%RobotInfo[] robot_info~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RobotInfo~%#################################################################~%## Presents dynamic parameters of a robot~%#################################################################~%~%Header header                            # the creation time~%string robot_name                        # the name of the robot (used in preconditions and topics)~%geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header~%geometry_msgs/Twist velocity             # velocity of the robot (linear and angular)~%int32 shape                              # the shape of the robots (see enums)~%uint32 layout_map~%float32[] shape_variables                # shape variables to define width height, ...~%RoutePrecondition sync                   # the current position in the last received plan (-1 means none)~%string   mode                             # the mode of operation~%string   status                           # the status of the robot~%string detail_status~%int32   good_id                          # the good id attached to the robot~%int32   order_id                         # the order id scheduled to this robot (-1: none)~%int32   order_status                     # the status of the assigned order~%~%# mode~%int32 MODE_NA = 0                   # undefined mode~%int32 MODE_IDLE = 1                 # robot is idle~%int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following~%int32 MODE_PICKUP = 3               # robot is picking up goods~%~%# status~%int32 STATUS_DRIVING = 0             # robot is driving~%int32 STATUS_STOPPED = 1            # robot has stopped~%int32 STATUS_DONE = 2               # robot has finished its last job~%int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task~%~%# good_id~%int32 GOOD_EMPTY = -1               # no goods attached~%int32 GOOD_NA = -2                  # undefined good~%~%# shape~%int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars~%int32 SHAPE_RECTANGLE = 1~%~%# order_status~%int32 ORDER_NONE = 0                # no order assigned~%int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order~%int32 ORDER_PICKUP = 2              # the robot picks up a good at the station~%int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another~%int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order~%~%bool auto_mode~%bool pause~%bool init_pose~%bool allow_estimate_pose~%string current_action_type~%string direction_move~%string state_move~%string mission_group~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route~%## with such a message~%## The specific segments of a route are marked with such~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%uint32 current_segment_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInfoArray)))
  "Returns full string definition for message of type 'RobotInfoArray"
  (cl:format cl:nil "Header header # time of route generation~%RobotInfo[] robot_info~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RobotInfo~%#################################################################~%## Presents dynamic parameters of a robot~%#################################################################~%~%Header header                            # the creation time~%string robot_name                        # the name of the robot (used in preconditions and topics)~%geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header~%geometry_msgs/Twist velocity             # velocity of the robot (linear and angular)~%int32 shape                              # the shape of the robots (see enums)~%uint32 layout_map~%float32[] shape_variables                # shape variables to define width height, ...~%RoutePrecondition sync                   # the current position in the last received plan (-1 means none)~%string   mode                             # the mode of operation~%string   status                           # the status of the robot~%string detail_status~%int32   good_id                          # the good id attached to the robot~%int32   order_id                         # the order id scheduled to this robot (-1: none)~%int32   order_status                     # the status of the assigned order~%~%# mode~%int32 MODE_NA = 0                   # undefined mode~%int32 MODE_IDLE = 1                 # robot is idle~%int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following~%int32 MODE_PICKUP = 3               # robot is picking up goods~%~%# status~%int32 STATUS_DRIVING = 0             # robot is driving~%int32 STATUS_STOPPED = 1            # robot has stopped~%int32 STATUS_DONE = 2               # robot has finished its last job~%int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task~%~%# good_id~%int32 GOOD_EMPTY = -1               # no goods attached~%int32 GOOD_NA = -2                  # undefined good~%~%# shape~%int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars~%int32 SHAPE_RECTANGLE = 1~%~%# order_status~%int32 ORDER_NONE = 0                # no order assigned~%int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order~%int32 ORDER_PICKUP = 2              # the robot picks up a good at the station~%int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another~%int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order~%~%bool auto_mode~%bool pause~%bool init_pose~%bool allow_estimate_pose~%string current_action_type~%string direction_move~%string state_move~%string mission_group~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route~%## with such a message~%## The specific segments of a route are marked with such~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%uint32 current_segment_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInfoArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInfoArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInfoArray
    (cl:cons ':header (header msg))
    (cl:cons ':robot_info (robot_info msg))
))
