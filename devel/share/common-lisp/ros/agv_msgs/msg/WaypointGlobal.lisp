; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude WaypointGlobal.msg.html

(cl:defclass <WaypointGlobal> (roslisp-msg-protocol:ros-message)
  ((Pose
    :reader Pose
    :initarg :Pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass WaypointGlobal (<WaypointGlobal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointGlobal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointGlobal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<WaypointGlobal> is deprecated: use agv_msgs-msg:WaypointGlobal instead.")))

(cl:ensure-generic-function 'Pose-val :lambda-list '(m))
(cl:defmethod Pose-val ((m <WaypointGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Pose-val is deprecated.  Use agv_msgs-msg:Pose instead.")
  (Pose m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <WaypointGlobal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:radius-val is deprecated.  Use agv_msgs-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointGlobal>) ostream)
  "Serializes a message object of type '<WaypointGlobal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointGlobal>) istream)
  "Deserializes a message object of type '<WaypointGlobal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointGlobal>)))
  "Returns string type for a message object of type '<WaypointGlobal>"
  "agv_msgs/WaypointGlobal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointGlobal)))
  "Returns string type for a message object of type 'WaypointGlobal"
  "agv_msgs/WaypointGlobal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointGlobal>)))
  "Returns md5sum for a message object of type '<WaypointGlobal>"
  "9eb2f8ac2e8d785b7715064cb1a62c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointGlobal)))
  "Returns md5sum for a message object of type 'WaypointGlobal"
  "9eb2f8ac2e8d785b7715064cb1a62c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointGlobal>)))
  "Returns full string definition for message of type '<WaypointGlobal>"
  (cl:format cl:nil "geometry_msgs/PoseStamped Pose~%float64 radius~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointGlobal)))
  "Returns full string definition for message of type 'WaypointGlobal"
  (cl:format cl:nil "geometry_msgs/PoseStamped Pose~%float64 radius~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointGlobal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Pose))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointGlobal>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointGlobal
    (cl:cons ':Pose (Pose msg))
    (cl:cons ':radius (radius msg))
))
