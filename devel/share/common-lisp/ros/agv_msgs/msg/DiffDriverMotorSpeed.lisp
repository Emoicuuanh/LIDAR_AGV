; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude DiffDriverMotorSpeed.msg.html

(cl:defclass <DiffDriverMotorSpeed> (roslisp-msg-protocol:ros-message)
  ((Direction
    :reader Direction
    :initarg :Direction
    :type cl:boolean
    :initform cl:nil)
   (BaseSpeed
    :reader BaseSpeed
    :initarg :BaseSpeed
    :type cl:fixnum
    :initform 0)
   (Left
    :reader Left
    :initarg :Left
    :type cl:float
    :initform 0.0)
   (Right
    :reader Right
    :initarg :Right
    :type cl:float
    :initform 0.0)
   (Break
    :reader Break
    :initarg :Break
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DiffDriverMotorSpeed (<DiffDriverMotorSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiffDriverMotorSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiffDriverMotorSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<DiffDriverMotorSpeed> is deprecated: use agv_msgs-msg:DiffDriverMotorSpeed instead.")))

(cl:ensure-generic-function 'Direction-val :lambda-list '(m))
(cl:defmethod Direction-val ((m <DiffDriverMotorSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Direction-val is deprecated.  Use agv_msgs-msg:Direction instead.")
  (Direction m))

(cl:ensure-generic-function 'BaseSpeed-val :lambda-list '(m))
(cl:defmethod BaseSpeed-val ((m <DiffDriverMotorSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:BaseSpeed-val is deprecated.  Use agv_msgs-msg:BaseSpeed instead.")
  (BaseSpeed m))

(cl:ensure-generic-function 'Left-val :lambda-list '(m))
(cl:defmethod Left-val ((m <DiffDriverMotorSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Left-val is deprecated.  Use agv_msgs-msg:Left instead.")
  (Left m))

(cl:ensure-generic-function 'Right-val :lambda-list '(m))
(cl:defmethod Right-val ((m <DiffDriverMotorSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Right-val is deprecated.  Use agv_msgs-msg:Right instead.")
  (Right m))

(cl:ensure-generic-function 'Break-val :lambda-list '(m))
(cl:defmethod Break-val ((m <DiffDriverMotorSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Break-val is deprecated.  Use agv_msgs-msg:Break instead.")
  (Break m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiffDriverMotorSpeed>) ostream)
  "Serializes a message object of type '<DiffDriverMotorSpeed>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Direction) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'BaseSpeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'Break) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiffDriverMotorSpeed>) istream)
  "Deserializes a message object of type '<DiffDriverMotorSpeed>"
    (cl:setf (cl:slot-value msg 'Direction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BaseSpeed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'Break) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiffDriverMotorSpeed>)))
  "Returns string type for a message object of type '<DiffDriverMotorSpeed>"
  "agv_msgs/DiffDriverMotorSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiffDriverMotorSpeed)))
  "Returns string type for a message object of type 'DiffDriverMotorSpeed"
  "agv_msgs/DiffDriverMotorSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiffDriverMotorSpeed>)))
  "Returns md5sum for a message object of type '<DiffDriverMotorSpeed>"
  "cd5fbb3f71154e3a8fc658dbedadf9d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiffDriverMotorSpeed)))
  "Returns md5sum for a message object of type 'DiffDriverMotorSpeed"
  "cd5fbb3f71154e3a8fc658dbedadf9d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiffDriverMotorSpeed>)))
  "Returns full string definition for message of type '<DiffDriverMotorSpeed>"
  (cl:format cl:nil "bool Direction # Forward = 0, Backward = 1~%int16 BaseSpeed # 0 -> 255~%float32 Left # 0 -> 100~%float32 Right # 0 -> 100~%bool Break~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiffDriverMotorSpeed)))
  "Returns full string definition for message of type 'DiffDriverMotorSpeed"
  (cl:format cl:nil "bool Direction # Forward = 0, Backward = 1~%int16 BaseSpeed # 0 -> 255~%float32 Left # 0 -> 100~%float32 Right # 0 -> 100~%bool Break~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiffDriverMotorSpeed>))
  (cl:+ 0
     1
     2
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiffDriverMotorSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'DiffDriverMotorSpeed
    (cl:cons ':Direction (Direction msg))
    (cl:cons ':BaseSpeed (BaseSpeed msg))
    (cl:cons ':Left (Left msg))
    (cl:cons ':Right (Right msg))
    (cl:cons ':Break (Break msg))
))
