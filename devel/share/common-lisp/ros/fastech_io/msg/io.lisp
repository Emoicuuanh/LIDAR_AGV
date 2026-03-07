; Auto-generated. Do not edit!


(cl:in-package fastech_io-msg)


;//! \htmlinclude io.msg.html

(cl:defclass <io> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass io (<io>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <io>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'io)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fastech_io-msg:<io> is deprecated: use fastech_io-msg:io instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <io>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-msg:pin-val is deprecated.  Use fastech_io-msg:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <io>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-msg:value-val is deprecated.  Use fastech_io-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <io>) ostream)
  "Serializes a message object of type '<io>"
  (cl:let* ((signed (cl:slot-value msg 'pin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <io>) istream)
  "Deserializes a message object of type '<io>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<io>)))
  "Returns string type for a message object of type '<io>"
  "fastech_io/io")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'io)))
  "Returns string type for a message object of type 'io"
  "fastech_io/io")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<io>)))
  "Returns md5sum for a message object of type '<io>"
  "0d2137c3882cd2c55a0c95412d364629")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'io)))
  "Returns md5sum for a message object of type 'io"
  "0d2137c3882cd2c55a0c95412d364629")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<io>)))
  "Returns full string definition for message of type '<io>"
  (cl:format cl:nil "int32 pin~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'io)))
  "Returns full string definition for message of type 'io"
  (cl:format cl:nil "int32 pin~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <io>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <io>))
  "Converts a ROS message object to a list"
  (cl:list 'io
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
))
