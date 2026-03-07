; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude SafetyControl.msg.html

(cl:defclass <SafetyControl> (roslisp-msg-protocol:ros-message)
  ((Left
    :reader Left
    :initarg :Left
    :type cl:fixnum
    :initform 0)
   (Right
    :reader Right
    :initarg :Right
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SafetyControl (<SafetyControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<SafetyControl> is deprecated: use agv_msgs-msg:SafetyControl instead.")))

(cl:ensure-generic-function 'Left-val :lambda-list '(m))
(cl:defmethod Left-val ((m <SafetyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Left-val is deprecated.  Use agv_msgs-msg:Left instead.")
  (Left m))

(cl:ensure-generic-function 'Right-val :lambda-list '(m))
(cl:defmethod Right-val ((m <SafetyControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Right-val is deprecated.  Use agv_msgs-msg:Right instead.")
  (Right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyControl>) ostream)
  "Serializes a message object of type '<SafetyControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Right)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyControl>) istream)
  "Deserializes a message object of type '<SafetyControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Right)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyControl>)))
  "Returns string type for a message object of type '<SafetyControl>"
  "agv_msgs/SafetyControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyControl)))
  "Returns string type for a message object of type 'SafetyControl"
  "agv_msgs/SafetyControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyControl>)))
  "Returns md5sum for a message object of type '<SafetyControl>"
  "7e1ba5969070df6bf75b49b3832139e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyControl)))
  "Returns md5sum for a message object of type 'SafetyControl"
  "7e1ba5969070df6bf75b49b3832139e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyControl>)))
  "Returns full string definition for message of type '<SafetyControl>"
  (cl:format cl:nil "uint16 Left~%uint16 Right~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyControl)))
  "Returns full string definition for message of type 'SafetyControl"
  (cl:format cl:nil "uint16 Left~%uint16 Right~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyControl>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyControl>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyControl
    (cl:cons ':Left (Left msg))
    (cl:cons ':Right (Right msg))
))
