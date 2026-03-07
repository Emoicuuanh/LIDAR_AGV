; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude ErrorRobotToPath.msg.html

(cl:defclass <ErrorRobotToPath> (roslisp-msg-protocol:ros-message)
  ((error_angle
    :reader error_angle
    :initarg :error_angle
    :type cl:float
    :initform 0.0)
   (error_position
    :reader error_position
    :initarg :error_position
    :type cl:float
    :initform 0.0))
)

(cl:defclass ErrorRobotToPath (<ErrorRobotToPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorRobotToPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorRobotToPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<ErrorRobotToPath> is deprecated: use agv_msgs-msg:ErrorRobotToPath instead.")))

(cl:ensure-generic-function 'error_angle-val :lambda-list '(m))
(cl:defmethod error_angle-val ((m <ErrorRobotToPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:error_angle-val is deprecated.  Use agv_msgs-msg:error_angle instead.")
  (error_angle m))

(cl:ensure-generic-function 'error_position-val :lambda-list '(m))
(cl:defmethod error_position-val ((m <ErrorRobotToPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:error_position-val is deprecated.  Use agv_msgs-msg:error_position instead.")
  (error_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorRobotToPath>) ostream)
  "Serializes a message object of type '<ErrorRobotToPath>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'error_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'error_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorRobotToPath>) istream)
  "Deserializes a message object of type '<ErrorRobotToPath>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_position) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorRobotToPath>)))
  "Returns string type for a message object of type '<ErrorRobotToPath>"
  "agv_msgs/ErrorRobotToPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorRobotToPath)))
  "Returns string type for a message object of type 'ErrorRobotToPath"
  "agv_msgs/ErrorRobotToPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorRobotToPath>)))
  "Returns md5sum for a message object of type '<ErrorRobotToPath>"
  "dfe8fe7d4e33da3bdbaadca9414e0299")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorRobotToPath)))
  "Returns md5sum for a message object of type 'ErrorRobotToPath"
  "dfe8fe7d4e33da3bdbaadca9414e0299")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorRobotToPath>)))
  "Returns full string definition for message of type '<ErrorRobotToPath>"
  (cl:format cl:nil "float64 error_angle~%float64 error_position~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorRobotToPath)))
  "Returns full string definition for message of type 'ErrorRobotToPath"
  (cl:format cl:nil "float64 error_angle~%float64 error_position~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorRobotToPath>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorRobotToPath>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorRobotToPath
    (cl:cons ':error_angle (error_angle msg))
    (cl:cons ':error_position (error_position msg))
))
