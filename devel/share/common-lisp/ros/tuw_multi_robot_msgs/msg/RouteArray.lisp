; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RouteArray.msg.html

(cl:defclass <RouteArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id_request
    :reader id_request
    :initarg :id_request
    :type cl:string
    :initform "")
   (routes
    :reader routes
    :initarg :routes
    :type (cl:vector tuw_multi_robot_msgs-msg:Route)
   :initform (cl:make-array 0 :element-type 'tuw_multi_robot_msgs-msg:Route :initial-element (cl:make-instance 'tuw_multi_robot_msgs-msg:Route))))
)

(cl:defclass RouteArray (<RouteArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouteArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouteArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RouteArray> is deprecated: use tuw_multi_robot_msgs-msg:RouteArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RouteArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id_request-val :lambda-list '(m))
(cl:defmethod id_request-val ((m <RouteArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:id_request-val is deprecated.  Use tuw_multi_robot_msgs-msg:id_request instead.")
  (id_request m))

(cl:ensure-generic-function 'routes-val :lambda-list '(m))
(cl:defmethod routes-val ((m <RouteArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:routes-val is deprecated.  Use tuw_multi_robot_msgs-msg:routes instead.")
  (routes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouteArray>) ostream)
  "Serializes a message object of type '<RouteArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id_request))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'routes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'routes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouteArray>) istream)
  "Deserializes a message object of type '<RouteArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id_request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'routes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'routes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tuw_multi_robot_msgs-msg:Route))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouteArray>)))
  "Returns string type for a message object of type '<RouteArray>"
  "tuw_multi_robot_msgs/RouteArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouteArray)))
  "Returns string type for a message object of type 'RouteArray"
  "tuw_multi_robot_msgs/RouteArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouteArray>)))
  "Returns md5sum for a message object of type '<RouteArray>"
  "68e00687fc15821fd35f16dce9cc143b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouteArray)))
  "Returns md5sum for a message object of type 'RouteArray"
  "68e00687fc15821fd35f16dce9cc143b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouteArray>)))
  "Returns full string definition for message of type '<RouteArray>"
  (cl:format cl:nil "Header header # time of route generation~%string id_request~%Route[] routes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Route~%#################################################################~%## used to guide a single vehicle along segments~%#################################################################~%Header header # time of route generation~%string robot_name~%string id_request~%RouteSegment[] segments # route segments a robot has to follow~%================================================================================~%MSG: tuw_multi_robot_msgs/RouteSegment~%#################################################################~%## Describes a segment on a route with: start, end, width~%## and preconditions for synchronisation to other robots~%#################################################################~%~%int32 segment_id                        # the unique identifier of a segment~%RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment~%geometry_msgs/Pose start                # startpoint of the segment~%geometry_msgs/Pose end                  # endpoint of the segment~%string start_properties~%string end_properties~%float32 width                           # width of the segment~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route~%## with such a message~%## The specific segments of a route are marked with such~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%uint32 current_segment_id~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouteArray)))
  "Returns full string definition for message of type 'RouteArray"
  (cl:format cl:nil "Header header # time of route generation~%string id_request~%Route[] routes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tuw_multi_robot_msgs/Route~%#################################################################~%## used to guide a single vehicle along segments~%#################################################################~%Header header # time of route generation~%string robot_name~%string id_request~%RouteSegment[] segments # route segments a robot has to follow~%================================================================================~%MSG: tuw_multi_robot_msgs/RouteSegment~%#################################################################~%## Describes a segment on a route with: start, end, width~%## and preconditions for synchronisation to other robots~%#################################################################~%~%int32 segment_id                        # the unique identifier of a segment~%RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment~%geometry_msgs/Pose start                # startpoint of the segment~%geometry_msgs/Pose end                  # endpoint of the segment~%string start_properties~%string end_properties~%float32 width                           # width of the segment~%~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route~%## with such a message~%## The specific segments of a route are marked with such~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%uint32 current_segment_id~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouteArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'id_request))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'routes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouteArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RouteArray
    (cl:cons ':header (header msg))
    (cl:cons ':id_request (id_request msg))
    (cl:cons ':routes (routes msg))
))
