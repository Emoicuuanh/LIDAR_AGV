; Auto-generated. Do not edit!


(cl:in-package fastech_io-srv)


;//! \htmlinclude SetValueOutput-request.msg.html

(cl:defclass <SetValueOutput-request> (roslisp-msg-protocol:ros-message)
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
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (period_ms
    :reader period_ms
    :initarg :period_ms
    :type cl:integer
    :initform 0)
   (ontime_ms
    :reader ontime_ms
    :initarg :ontime_ms
    :type cl:integer
    :initform 0)
   (conut_time
    :reader conut_time
    :initarg :conut_time
    :type cl:integer
    :initform 0))
)

(cl:defclass SetValueOutput-request (<SetValueOutput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetValueOutput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetValueOutput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fastech_io-srv:<SetValueOutput-request> is deprecated: use fastech_io-srv:SetValueOutput-request instead.")))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetValueOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:pin-val is deprecated.  Use fastech_io-srv:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetValueOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:value-val is deprecated.  Use fastech_io-srv:value instead.")
  (value m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetValueOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:mode-val is deprecated.  Use fastech_io-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'period_ms-val :lambda-list '(m))
(cl:defmethod period_ms-val ((m <SetValueOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:period_ms-val is deprecated.  Use fastech_io-srv:period_ms instead.")
  (period_ms m))

(cl:ensure-generic-function 'ontime_ms-val :lambda-list '(m))
(cl:defmethod ontime_ms-val ((m <SetValueOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:ontime_ms-val is deprecated.  Use fastech_io-srv:ontime_ms instead.")
  (ontime_ms m))

(cl:ensure-generic-function 'conut_time-val :lambda-list '(m))
(cl:defmethod conut_time-val ((m <SetValueOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:conut_time-val is deprecated.  Use fastech_io-srv:conut_time instead.")
  (conut_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetValueOutput-request>) ostream)
  "Serializes a message object of type '<SetValueOutput-request>"
  (cl:let* ((signed (cl:slot-value msg 'pin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'period_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ontime_ms)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'conut_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetValueOutput-request>) istream)
  "Deserializes a message object of type '<SetValueOutput-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'period_ms) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ontime_ms) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'conut_time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetValueOutput-request>)))
  "Returns string type for a service object of type '<SetValueOutput-request>"
  "fastech_io/SetValueOutputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetValueOutput-request)))
  "Returns string type for a service object of type 'SetValueOutput-request"
  "fastech_io/SetValueOutputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetValueOutput-request>)))
  "Returns md5sum for a message object of type '<SetValueOutput-request>"
  "37dae036605eb749cf1271f9d460c346")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetValueOutput-request)))
  "Returns md5sum for a message object of type 'SetValueOutput-request"
  "37dae036605eb749cf1271f9d460c346")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetValueOutput-request>)))
  "Returns full string definition for message of type '<SetValueOutput-request>"
  (cl:format cl:nil "# number pin change: 0 - 31~%int8 pin~%# value change : True{on} , False {off}~%bool value~%# mode: Currently there are 2 modes, mod = 1 just on/off , mod = 2Pwm~%int8 mode~%~%# use only when mod = 2, if mod = 1 nothing change~%# period_ms = cycle pwm = ontime + offtime, max_period_ms = 65535~%int64 period_ms~%# ontime_ms = period_ms - time_off, max_ontime_ms = 65535~%int64 ontime_ms~%# total number toggle~%int64 conut_time~%#max_cout_time = 4294967295, mid_cout_time = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetValueOutput-request)))
  "Returns full string definition for message of type 'SetValueOutput-request"
  (cl:format cl:nil "# number pin change: 0 - 31~%int8 pin~%# value change : True{on} , False {off}~%bool value~%# mode: Currently there are 2 modes, mod = 1 just on/off , mod = 2Pwm~%int8 mode~%~%# use only when mod = 2, if mod = 1 nothing change~%# period_ms = cycle pwm = ontime + offtime, max_period_ms = 65535~%int64 period_ms~%# ontime_ms = period_ms - time_off, max_ontime_ms = 65535~%int64 ontime_ms~%# total number toggle~%int64 conut_time~%#max_cout_time = 4294967295, mid_cout_time = 1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetValueOutput-request>))
  (cl:+ 0
     1
     1
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetValueOutput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetValueOutput-request
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':period_ms (period_ms msg))
    (cl:cons ':ontime_ms (ontime_ms msg))
    (cl:cons ':conut_time (conut_time msg))
))
;//! \htmlinclude SetValueOutput-response.msg.html

(cl:defclass <SetValueOutput-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetValueOutput-response (<SetValueOutput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetValueOutput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetValueOutput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fastech_io-srv:<SetValueOutput-response> is deprecated: use fastech_io-srv:SetValueOutput-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetValueOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fastech_io-srv:result-val is deprecated.  Use fastech_io-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetValueOutput-response>) ostream)
  "Serializes a message object of type '<SetValueOutput-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetValueOutput-response>) istream)
  "Deserializes a message object of type '<SetValueOutput-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetValueOutput-response>)))
  "Returns string type for a service object of type '<SetValueOutput-response>"
  "fastech_io/SetValueOutputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetValueOutput-response)))
  "Returns string type for a service object of type 'SetValueOutput-response"
  "fastech_io/SetValueOutputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetValueOutput-response>)))
  "Returns md5sum for a message object of type '<SetValueOutput-response>"
  "37dae036605eb749cf1271f9d460c346")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetValueOutput-response)))
  "Returns md5sum for a message object of type 'SetValueOutput-response"
  "37dae036605eb749cf1271f9d460c346")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetValueOutput-response>)))
  "Returns full string definition for message of type '<SetValueOutput-response>"
  (cl:format cl:nil "# 0: NG~%# 1: OK~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetValueOutput-response)))
  "Returns full string definition for message of type 'SetValueOutput-response"
  (cl:format cl:nil "# 0: NG~%# 1: OK~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetValueOutput-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetValueOutput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetValueOutput-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetValueOutput)))
  'SetValueOutput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetValueOutput)))
  'SetValueOutput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetValueOutput)))
  "Returns string type for a service object of type '<SetValueOutput>"
  "fastech_io/SetValueOutput")