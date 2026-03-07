; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude CardWithFunction.msg.html

(cl:defclass <CardWithFunction> (roslisp-msg-protocol:ros-message)
  ((Id
    :reader Id
    :initarg :Id
    :type cl:integer
    :initform 0)
   (Functions
    :reader Functions
    :initarg :Functions
    :type (cl:vector agv_msgs-msg:BasicFunction)
   :initform (cl:make-array 0 :element-type 'agv_msgs-msg:BasicFunction :initial-element (cl:make-instance 'agv_msgs-msg:BasicFunction))))
)

(cl:defclass CardWithFunction (<CardWithFunction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CardWithFunction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CardWithFunction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<CardWithFunction> is deprecated: use agv_msgs-msg:CardWithFunction instead.")))

(cl:ensure-generic-function 'Id-val :lambda-list '(m))
(cl:defmethod Id-val ((m <CardWithFunction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Id-val is deprecated.  Use agv_msgs-msg:Id instead.")
  (Id m))

(cl:ensure-generic-function 'Functions-val :lambda-list '(m))
(cl:defmethod Functions-val ((m <CardWithFunction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Functions-val is deprecated.  Use agv_msgs-msg:Functions instead.")
  (Functions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CardWithFunction>) ostream)
  "Serializes a message object of type '<CardWithFunction>"
  (cl:let* ((signed (cl:slot-value msg 'Id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Functions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Functions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CardWithFunction>) istream)
  "Deserializes a message object of type '<CardWithFunction>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Functions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Functions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'agv_msgs-msg:BasicFunction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CardWithFunction>)))
  "Returns string type for a message object of type '<CardWithFunction>"
  "agv_msgs/CardWithFunction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CardWithFunction)))
  "Returns string type for a message object of type 'CardWithFunction"
  "agv_msgs/CardWithFunction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CardWithFunction>)))
  "Returns md5sum for a message object of type '<CardWithFunction>"
  "d142f4b6d50baad4bba4d3ea3a40a57e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CardWithFunction)))
  "Returns md5sum for a message object of type 'CardWithFunction"
  "d142f4b6d50baad4bba4d3ea3a40a57e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CardWithFunction>)))
  "Returns full string definition for message of type '<CardWithFunction>"
  (cl:format cl:nil "int64 Id~%BasicFunction[] Functions~%================================================================================~%MSG: agv_msgs/BasicFunction~%int8 FuncId~%int8 ParId~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CardWithFunction)))
  "Returns full string definition for message of type 'CardWithFunction"
  (cl:format cl:nil "int64 Id~%BasicFunction[] Functions~%================================================================================~%MSG: agv_msgs/BasicFunction~%int8 FuncId~%int8 ParId~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CardWithFunction>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Functions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CardWithFunction>))
  "Converts a ROS message object to a list"
  (cl:list 'CardWithFunction
    (cl:cons ':Id (Id msg))
    (cl:cons ':Functions (Functions msg))
))
