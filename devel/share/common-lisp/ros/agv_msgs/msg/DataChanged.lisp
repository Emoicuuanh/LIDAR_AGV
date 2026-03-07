; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude DataChanged.msg.html

(cl:defclass <DataChanged> (roslisp-msg-protocol:ros-message)
  ((Name
    :reader Name
    :initarg :Name
    :type cl:string
    :initform "")
   (Value
    :reader Value
    :initarg :Value
    :type cl:string
    :initform ""))
)

(cl:defclass DataChanged (<DataChanged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataChanged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataChanged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<DataChanged> is deprecated: use agv_msgs-msg:DataChanged instead.")))

(cl:ensure-generic-function 'Name-val :lambda-list '(m))
(cl:defmethod Name-val ((m <DataChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Name-val is deprecated.  Use agv_msgs-msg:Name instead.")
  (Name m))

(cl:ensure-generic-function 'Value-val :lambda-list '(m))
(cl:defmethod Value-val ((m <DataChanged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Value-val is deprecated.  Use agv_msgs-msg:Value instead.")
  (Value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataChanged>) ostream)
  "Serializes a message object of type '<DataChanged>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataChanged>) istream)
  "Deserializes a message object of type '<DataChanged>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataChanged>)))
  "Returns string type for a message object of type '<DataChanged>"
  "agv_msgs/DataChanged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataChanged)))
  "Returns string type for a message object of type 'DataChanged"
  "agv_msgs/DataChanged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataChanged>)))
  "Returns md5sum for a message object of type '<DataChanged>"
  "c0e75800c1d72baee3c36c59949425a9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataChanged)))
  "Returns md5sum for a message object of type 'DataChanged"
  "c0e75800c1d72baee3c36c59949425a9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataChanged>)))
  "Returns full string definition for message of type '<DataChanged>"
  (cl:format cl:nil "string Name~%string Value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataChanged)))
  "Returns full string definition for message of type 'DataChanged"
  (cl:format cl:nil "string Name~%string Value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataChanged>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Name))
     4 (cl:length (cl:slot-value msg 'Value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataChanged>))
  "Converts a ROS message object to a list"
  (cl:list 'DataChanged
    (cl:cons ':Name (Name msg))
    (cl:cons ':Value (Value msg))
))
