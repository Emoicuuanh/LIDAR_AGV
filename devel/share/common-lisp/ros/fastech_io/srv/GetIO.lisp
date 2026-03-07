; Auto-generated. Do not edit!


(cl:in-package fastech_io-srv)


;//! \htmlinclude GetIO-request.msg.html

(cl:defclass <GetIO-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:integer
    :initform 0))
)

(cl:defclass GetIO-request (<GetIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fastech_io-srv:<GetIO-request> is deprecated: use fastech_io-srv:GetIO-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <GetIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:pin-val is deprecated.  Use fastech_io-srv:pin instead.")
  (pin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIO-request>) ostream)
  "Serializes a message object of type '<GetIO-request>"
  (cl:let* ((signed (cl:slot-value msg 'pin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIO-request>) istream)
  "Deserializes a message object of type '<GetIO-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIO-request>)))
  "Returns string type for a service object of type '<GetIO-request>"
  "fastech_io/GetIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIO-request)))
  "Returns string type for a service object of type 'GetIO-request"
  "fastech_io/GetIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIO-request>)))
  "Returns md5sum for a message object of type '<GetIO-request>"
  "8dc7716b39efd26155b31938acfbd81d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIO-request)))
  "Returns md5sum for a message object of type 'GetIO-request"
  "8dc7716b39efd26155b31938acfbd81d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIO-request>)))
  "Returns full string definition for message of type '<GetIO-request>"
  (cl:format cl:nil "int64 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIO-request)))
  "Returns full string definition for message of type 'GetIO-request"
  (cl:format cl:nil "int64 pin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIO-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIO-request
    (cl:cons ':pin (pin msg))
))
;//! \htmlinclude GetIO-response.msg.html

(cl:defclass <GetIO-response> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (status_set
    :reader status_set
    :initarg :status_set
    :type cl:boolean
    :initform cl:nil)
   (output_voltage
    :reader output_voltage
    :initarg :output_voltage
    :type cl:integer
    :initform 0))
)

(cl:defclass GetIO-response (<GetIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fastech_io-srv:<GetIO-response> is deprecated: use fastech_io-srv:GetIO-response instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:name-val is deprecated.  Use fastech_io-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'status_set-val :lambda-list '(m))
(cl:defmethod status_set-val ((m <GetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:status_set-val is deprecated.  Use fastech_io-srv:status_set instead.")
  (status_set m))

(cl:ensure-generic-function 'output_voltage-val :lambda-list '(m))
(cl:defmethod output_voltage-val ((m <GetIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:output_voltage-val is deprecated.  Use fastech_io-srv:output_voltage instead.")
  (output_voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIO-response>) ostream)
  "Serializes a message object of type '<GetIO-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status_set) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'output_voltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIO-response>) istream)
  "Deserializes a message object of type '<GetIO-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'status_set) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output_voltage) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIO-response>)))
  "Returns string type for a service object of type '<GetIO-response>"
  "fastech_io/GetIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIO-response)))
  "Returns string type for a service object of type 'GetIO-response"
  "fastech_io/GetIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIO-response>)))
  "Returns md5sum for a message object of type '<GetIO-response>"
  "8dc7716b39efd26155b31938acfbd81d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIO-response)))
  "Returns md5sum for a message object of type 'GetIO-response"
  "8dc7716b39efd26155b31938acfbd81d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIO-response>)))
  "Returns full string definition for message of type '<GetIO-response>"
  (cl:format cl:nil "string name~%bool status_set~%int64 output_voltage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIO-response)))
  "Returns full string definition for message of type 'GetIO-response"
  (cl:format cl:nil "string name~%bool status_set~%int64 output_voltage~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIO-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIO-response
    (cl:cons ':name (name msg))
    (cl:cons ':status_set (status_set msg))
    (cl:cons ':output_voltage (output_voltage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIO)))
  'GetIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIO)))
  'GetIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIO)))
  "Returns string type for a service object of type '<GetIO>"
  "fastech_io/GetIO")