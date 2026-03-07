; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude ArrayWaypoints-request.msg.html

(cl:defclass <ArrayWaypoints-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArrayWaypoints-request (<ArrayWaypoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayWaypoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayWaypoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<ArrayWaypoints-request> is deprecated: use agv_msgs-srv:ArrayWaypoints-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayWaypoints-request>) ostream)
  "Serializes a message object of type '<ArrayWaypoints-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayWaypoints-request>) istream)
  "Deserializes a message object of type '<ArrayWaypoints-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayWaypoints-request>)))
  "Returns string type for a service object of type '<ArrayWaypoints-request>"
  "agv_msgs/ArrayWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayWaypoints-request)))
  "Returns string type for a service object of type 'ArrayWaypoints-request"
  "agv_msgs/ArrayWaypointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayWaypoints-request>)))
  "Returns md5sum for a message object of type '<ArrayWaypoints-request>"
  "e7a462d7837fb67629ef9c43385f3fb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayWaypoints-request)))
  "Returns md5sum for a message object of type 'ArrayWaypoints-request"
  "e7a462d7837fb67629ef9c43385f3fb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayWaypoints-request>)))
  "Returns full string definition for message of type '<ArrayWaypoints-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayWaypoints-request)))
  "Returns full string definition for message of type 'ArrayWaypoints-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayWaypoints-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayWaypoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayWaypoints-request
))
;//! \htmlinclude ArrayWaypoints-response.msg.html

(cl:defclass <ArrayWaypoints-response> (roslisp-msg-protocol:ros-message)
  ((Waypoints
    :reader Waypoints
    :initarg :Waypoints
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass ArrayWaypoints-response (<ArrayWaypoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArrayWaypoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArrayWaypoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<ArrayWaypoints-response> is deprecated: use agv_msgs-srv:ArrayWaypoints-response instead.")))

(cl:ensure-generic-function 'Waypoints-val :lambda-list '(m))
(cl:defmethod Waypoints-val ((m <ArrayWaypoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:Waypoints-val is deprecated.  Use agv_msgs-srv:Waypoints instead.")
  (Waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArrayWaypoints-response>) ostream)
  "Serializes a message object of type '<ArrayWaypoints-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArrayWaypoints-response>) istream)
  "Deserializes a message object of type '<ArrayWaypoints-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArrayWaypoints-response>)))
  "Returns string type for a service object of type '<ArrayWaypoints-response>"
  "agv_msgs/ArrayWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayWaypoints-response)))
  "Returns string type for a service object of type 'ArrayWaypoints-response"
  "agv_msgs/ArrayWaypointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArrayWaypoints-response>)))
  "Returns md5sum for a message object of type '<ArrayWaypoints-response>"
  "e7a462d7837fb67629ef9c43385f3fb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArrayWaypoints-response)))
  "Returns md5sum for a message object of type 'ArrayWaypoints-response"
  "e7a462d7837fb67629ef9c43385f3fb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArrayWaypoints-response>)))
  "Returns full string definition for message of type '<ArrayWaypoints-response>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] Waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArrayWaypoints-response)))
  "Returns full string definition for message of type 'ArrayWaypoints-response"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] Waypoints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArrayWaypoints-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArrayWaypoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArrayWaypoints-response
    (cl:cons ':Waypoints (Waypoints msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArrayWaypoints)))
  'ArrayWaypoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArrayWaypoints)))
  'ArrayWaypoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArrayWaypoints)))
  "Returns string type for a service object of type '<ArrayWaypoints>"
  "agv_msgs/ArrayWaypoints")