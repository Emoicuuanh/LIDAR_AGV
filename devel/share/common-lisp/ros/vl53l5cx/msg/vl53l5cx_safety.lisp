; Auto-generated. Do not edit!


(cl:in-package vl53l5cx-msg)


;//! \htmlinclude vl53l5cx_safety.msg.html

(cl:defclass <vl53l5cx_safety> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status_left
    :reader status_left
    :initarg :status_left
    :type cl:integer
    :initform 0)
   (status_right
    :reader status_right
    :initarg :status_right
    :type cl:integer
    :initform 0))
)

(cl:defclass vl53l5cx_safety (<vl53l5cx_safety>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vl53l5cx_safety>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vl53l5cx_safety)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vl53l5cx-msg:<vl53l5cx_safety> is deprecated: use vl53l5cx-msg:vl53l5cx_safety instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <vl53l5cx_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:header-val is deprecated.  Use vl53l5cx-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status_left-val :lambda-list '(m))
(cl:defmethod status_left-val ((m <vl53l5cx_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:status_left-val is deprecated.  Use vl53l5cx-msg:status_left instead.")
  (status_left m))

(cl:ensure-generic-function 'status_right-val :lambda-list '(m))
(cl:defmethod status_right-val ((m <vl53l5cx_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:status_right-val is deprecated.  Use vl53l5cx-msg:status_right instead.")
  (status_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vl53l5cx_safety>) ostream)
  "Serializes a message object of type '<vl53l5cx_safety>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'status_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vl53l5cx_safety>) istream)
  "Deserializes a message object of type '<vl53l5cx_safety>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vl53l5cx_safety>)))
  "Returns string type for a message object of type '<vl53l5cx_safety>"
  "vl53l5cx/vl53l5cx_safety")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vl53l5cx_safety)))
  "Returns string type for a message object of type 'vl53l5cx_safety"
  "vl53l5cx/vl53l5cx_safety")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vl53l5cx_safety>)))
  "Returns md5sum for a message object of type '<vl53l5cx_safety>"
  "5b53fa10636d0f6cce0051b430e70c58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vl53l5cx_safety)))
  "Returns md5sum for a message object of type 'vl53l5cx_safety"
  "5b53fa10636d0f6cce0051b430e70c58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vl53l5cx_safety>)))
  "Returns full string definition for message of type '<vl53l5cx_safety>"
  (cl:format cl:nil "Header header~%int32 status_left ~%int32 status_right  ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vl53l5cx_safety)))
  "Returns full string definition for message of type 'vl53l5cx_safety"
  (cl:format cl:nil "Header header~%int32 status_left ~%int32 status_right  ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vl53l5cx_safety>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vl53l5cx_safety>))
  "Converts a ROS message object to a list"
  (cl:list 'vl53l5cx_safety
    (cl:cons ':header (header msg))
    (cl:cons ':status_left (status_left msg))
    (cl:cons ':status_right (status_right msg))
))
