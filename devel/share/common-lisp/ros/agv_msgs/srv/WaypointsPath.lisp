; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude WaypointsPath-request.msg.html

(cl:defclass <WaypointsPath-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WaypointsPath-request (<WaypointsPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointsPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointsPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<WaypointsPath-request> is deprecated: use agv_msgs-srv:WaypointsPath-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointsPath-request>) ostream)
  "Serializes a message object of type '<WaypointsPath-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointsPath-request>) istream)
  "Deserializes a message object of type '<WaypointsPath-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointsPath-request>)))
  "Returns string type for a service object of type '<WaypointsPath-request>"
  "agv_msgs/WaypointsPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointsPath-request)))
  "Returns string type for a service object of type 'WaypointsPath-request"
  "agv_msgs/WaypointsPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointsPath-request>)))
  "Returns md5sum for a message object of type '<WaypointsPath-request>"
  "2db582d2ba373ee4ec120bf4766af126")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointsPath-request)))
  "Returns md5sum for a message object of type 'WaypointsPath-request"
  "2db582d2ba373ee4ec120bf4766af126")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointsPath-request>)))
  "Returns full string definition for message of type '<WaypointsPath-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointsPath-request)))
  "Returns full string definition for message of type 'WaypointsPath-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointsPath-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointsPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointsPath-request
))
;//! \htmlinclude WaypointsPath-response.msg.html

(cl:defclass <WaypointsPath-response> (roslisp-msg-protocol:ros-message)
  ((Waypoints
    :reader Waypoints
    :initarg :Waypoints
    :type (cl:vector agv_msgs-msg:WaypointGlobal)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:WaypointGlobal :initial-element (cl:make-instance 'agv_msgs-msg:WaypointGlobal)))
   (use_lidar
    :reader use_lidar
    :initarg :use_lidar
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WaypointsPath-response (<WaypointsPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointsPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointsPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<WaypointsPath-response> is deprecated: use agv_msgs-srv:WaypointsPath-response instead.")))

(cl:ensure-generic-function 'Waypoints-val :lambda-list '(m))
(cl:defmethod Waypoints-val ((m <WaypointsPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:Waypoints-val is deprecated.  Use agv_msgs-srv:Waypoints instead.")
  (Waypoints m))

(cl:ensure-generic-function 'use_lidar-val :lambda-list '(m))
(cl:defmethod use_lidar-val ((m <WaypointsPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:use_lidar-val is deprecated.  Use agv_msgs-srv:use_lidar instead.")
  (use_lidar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointsPath-response>) ostream)
  "Serializes a message object of type '<WaypointsPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Waypoints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_lidar) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointsPath-response>) istream)
  "Deserializes a message object of type '<WaypointsPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:WaypointGlobal))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'use_lidar) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointsPath-response>)))
  "Returns string type for a service object of type '<WaypointsPath-response>"
  "agv_msgs/WaypointsPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointsPath-response)))
  "Returns string type for a service object of type 'WaypointsPath-response"
  "agv_msgs/WaypointsPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointsPath-response>)))
  "Returns md5sum for a message object of type '<WaypointsPath-response>"
  "2db582d2ba373ee4ec120bf4766af126")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointsPath-response)))
  "Returns md5sum for a message object of type 'WaypointsPath-response"
  "2db582d2ba373ee4ec120bf4766af126")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointsPath-response>)))
  "Returns full string definition for message of type '<WaypointsPath-response>"
  (cl:format cl:nil "WaypointGlobal[] Waypoints~%bool use_lidar~%~%================================================================================~%MSG: agv_msgs/WaypointGlobal~%geometry_msgs/PoseStamped Pose~%float64 radius~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointsPath-response)))
  "Returns full string definition for message of type 'WaypointsPath-response"
  (cl:format cl:nil "WaypointGlobal[] Waypoints~%bool use_lidar~%~%================================================================================~%MSG: agv_msgs/WaypointGlobal~%geometry_msgs/PoseStamped Pose~%float64 radius~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointsPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointsPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointsPath-response
    (cl:cons ':Waypoints (Waypoints msg))
    (cl:cons ':use_lidar (use_lidar msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WaypointsPath)))
  'WaypointsPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WaypointsPath)))
  'WaypointsPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointsPath)))
  "Returns string type for a service object of type '<WaypointsPath>"
  "agv_msgs/WaypointsPath")