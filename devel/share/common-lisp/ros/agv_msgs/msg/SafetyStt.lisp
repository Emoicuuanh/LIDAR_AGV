; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude SafetyStt.msg.html

(cl:defclass <SafetyStt> (roslisp-msg-protocol:ros-message)
  ((Id
    :reader Id
    :initarg :Id
    :type cl:fixnum
    :initform 0)
   (Name
    :reader Name
    :initarg :Name
    :type cl:string
    :initform "")
   (Current_Job
    :reader Current_Job
    :initarg :Current_Job
    :type cl:fixnum
    :initform 0)
   (Range_1
    :reader Range_1
    :initarg :Range_1
    :type cl:fixnum
    :initform 0)
   (Range_2
    :reader Range_2
    :initarg :Range_2
    :type cl:fixnum
    :initform 0)
   (Range_3
    :reader Range_3
    :initarg :Range_3
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SafetyStt (<SafetyStt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyStt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyStt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<SafetyStt> is deprecated: use agv_msgs-msg:SafetyStt instead.")))

(cl:ensure-generic-function 'Id-val :lambda-list '(m))
(cl:defmethod Id-val ((m <SafetyStt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Id-val is deprecated.  Use agv_msgs-msg:Id instead.")
  (Id m))

(cl:ensure-generic-function 'Name-val :lambda-list '(m))
(cl:defmethod Name-val ((m <SafetyStt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Name-val is deprecated.  Use agv_msgs-msg:Name instead.")
  (Name m))

(cl:ensure-generic-function 'Current_Job-val :lambda-list '(m))
(cl:defmethod Current_Job-val ((m <SafetyStt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Current_Job-val is deprecated.  Use agv_msgs-msg:Current_Job instead.")
  (Current_Job m))

(cl:ensure-generic-function 'Range_1-val :lambda-list '(m))
(cl:defmethod Range_1-val ((m <SafetyStt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Range_1-val is deprecated.  Use agv_msgs-msg:Range_1 instead.")
  (Range_1 m))

(cl:ensure-generic-function 'Range_2-val :lambda-list '(m))
(cl:defmethod Range_2-val ((m <SafetyStt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Range_2-val is deprecated.  Use agv_msgs-msg:Range_2 instead.")
  (Range_2 m))

(cl:ensure-generic-function 'Range_3-val :lambda-list '(m))
(cl:defmethod Range_3-val ((m <SafetyStt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Range_3-val is deprecated.  Use agv_msgs-msg:Range_3 instead.")
  (Range_3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyStt>) ostream)
  "Serializes a message object of type '<SafetyStt>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Current_Job)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Range_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Range_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Range_3)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyStt>) istream)
  "Deserializes a message object of type '<SafetyStt>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Current_Job)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Range_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Range_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Range_3)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyStt>)))
  "Returns string type for a message object of type '<SafetyStt>"
  "agv_msgs/SafetyStt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyStt)))
  "Returns string type for a message object of type 'SafetyStt"
  "agv_msgs/SafetyStt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyStt>)))
  "Returns md5sum for a message object of type '<SafetyStt>"
  "f93827b3264a5c1f06a6cdd2faf3051e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyStt)))
  "Returns md5sum for a message object of type 'SafetyStt"
  "f93827b3264a5c1f06a6cdd2faf3051e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyStt>)))
  "Returns full string definition for message of type '<SafetyStt>"
  (cl:format cl:nil "uint8 Id~%string Name~%uint8 Current_Job~%uint8 Range_1~%uint8 Range_2~%uint8 Range_3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyStt)))
  "Returns full string definition for message of type 'SafetyStt"
  (cl:format cl:nil "uint8 Id~%string Name~%uint8 Current_Job~%uint8 Range_1~%uint8 Range_2~%uint8 Range_3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyStt>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'Name))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyStt>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyStt
    (cl:cons ':Id (Id msg))
    (cl:cons ':Name (Name msg))
    (cl:cons ':Current_Job (Current_Job msg))
    (cl:cons ':Range_1 (Range_1 msg))
    (cl:cons ':Range_2 (Range_2 msg))
    (cl:cons ':Range_3 (Range_3 msg))
))
