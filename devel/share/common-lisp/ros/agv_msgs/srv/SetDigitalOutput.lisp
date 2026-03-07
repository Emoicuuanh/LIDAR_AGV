; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude SetDigitalOutput-request.msg.html

(cl:defclass <SetDigitalOutput-request> (roslisp-msg-protocol:ros-message)
  ((pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil)
   (duration_latch_ms
    :reader duration_latch_ms
    :initarg :duration_latch_ms
    :type cl:integer
    :initform 0)
   (duration_blink_ms
    :reader duration_blink_ms
    :initarg :duration_blink_ms
    :type cl:integer
    :initform 0))
)

(cl:defclass SetDigitalOutput-request (<SetDigitalOutput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDigitalOutput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDigitalOutput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<SetDigitalOutput-request> is deprecated: use agv_msgs-srv:SetDigitalOutput-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetDigitalOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:pin-val is deprecated.  Use agv_msgs-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetDigitalOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:value-val is deprecated.  Use agv_msgs-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'duration_latch_ms-val :lambda-list '(m))
(cl:defmethod duration_latch_ms-val ((m <SetDigitalOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:duration_latch_ms-val is deprecated.  Use agv_msgs-srv:duration_latch_ms instead.")
  (duration_latch_ms m))

(cl:ensure-generic-function 'duration_blink_ms-val :lambda-list '(m))
(cl:defmethod duration_blink_ms-val ((m <SetDigitalOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:duration_blink_ms-val is deprecated.  Use agv_msgs-srv:duration_blink_ms instead.")
  (duration_blink_ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDigitalOutput-request>) ostream)
  "Serializes a message object of type '<SetDigitalOutput-request>"
  (cl:let* ((signed (cl:slot-value msg 'pin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'duration_latch_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'duration_blink_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDigitalOutput-request>) istream)
  "Deserializes a message object of type '<SetDigitalOutput-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration_latch_ms) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration_blink_ms) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDigitalOutput-request>)))
  "Returns string type for a service object of type '<SetDigitalOutput-request>"
  "agv_msgs/SetDigitalOutputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalOutput-request)))
  "Returns string type for a service object of type 'SetDigitalOutput-request"
  "agv_msgs/SetDigitalOutputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDigitalOutput-request>)))
  "Returns md5sum for a message object of type '<SetDigitalOutput-request>"
  "f41bbedf7777f22daed45c19cf82315a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDigitalOutput-request)))
  "Returns md5sum for a message object of type 'SetDigitalOutput-request"
  "f41bbedf7777f22daed45c19cf82315a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDigitalOutput-request>)))
  "Returns full string definition for message of type '<SetDigitalOutput-request>"
  (cl:format cl:nil "int8 pin~%bool value~%# If duration_latch > 0 and duration_blink = 0, the output latch n (ms) then~%# set to set the opposite value (True to False and False to True)~%int64 duration_latch_ms~%# If duration_blink > 0 and duration_latch = 0, the output toggle with~%# duration = duration_latch (ms)~%int64 duration_blink_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDigitalOutput-request)))
  "Returns full string definition for message of type 'SetDigitalOutput-request"
  (cl:format cl:nil "int8 pin~%bool value~%# If duration_latch > 0 and duration_blink = 0, the output latch n (ms) then~%# set to set the opposite value (True to False and False to True)~%int64 duration_latch_ms~%# If duration_blink > 0 and duration_latch = 0, the output toggle with~%# duration = duration_latch (ms)~%int64 duration_blink_ms~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDigitalOutput-request>))
  (cl:+ 0
     1
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDigitalOutput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDigitalOutput-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
    (cl:cons ':duration_latch_ms (duration_latch_ms msg))
    (cl:cons ':duration_blink_ms (duration_blink_ms msg))
))
;//! \htmlinclude SetDigitalOutput-response.msg.html

(cl:defclass <SetDigitalOutput-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetDigitalOutput-response (<SetDigitalOutput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDigitalOutput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDigitalOutput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<SetDigitalOutput-response> is deprecated: use agv_msgs-srv:SetDigitalOutput-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetDigitalOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:result-val is deprecated.  Use agv_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDigitalOutput-response>) ostream)
  "Serializes a message object of type '<SetDigitalOutput-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDigitalOutput-response>) istream)
  "Deserializes a message object of type '<SetDigitalOutput-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDigitalOutput-response>)))
  "Returns string type for a service object of type '<SetDigitalOutput-response>"
  "agv_msgs/SetDigitalOutputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalOutput-response)))
  "Returns string type for a service object of type 'SetDigitalOutput-response"
  "agv_msgs/SetDigitalOutputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDigitalOutput-response>)))
  "Returns md5sum for a message object of type '<SetDigitalOutput-response>"
  "f41bbedf7777f22daed45c19cf82315a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDigitalOutput-response)))
  "Returns md5sum for a message object of type 'SetDigitalOutput-response"
  "f41bbedf7777f22daed45c19cf82315a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDigitalOutput-response>)))
  "Returns full string definition for message of type '<SetDigitalOutput-response>"
  (cl:format cl:nil "# 0: NG~%# 1: OK~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDigitalOutput-response)))
  "Returns full string definition for message of type 'SetDigitalOutput-response"
  (cl:format cl:nil "# 0: NG~%# 1: OK~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDigitalOutput-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDigitalOutput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDigitalOutput-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDigitalOutput)))
  'SetDigitalOutput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDigitalOutput)))
  'SetDigitalOutput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalOutput)))
  "Returns string type for a service object of type '<SetDigitalOutput>"
  "agv_msgs/SetDigitalOutput")