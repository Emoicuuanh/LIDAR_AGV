; Auto-generated. Do not edit!


(cl:in-package qr_irayble-srv)


;//! \htmlinclude CodeRead-request.msg.html

(cl:defclass <CodeRead-request> (roslisp-msg-protocol:ros-message)
  ((TimeOut
    :reader TimeOut
    :initarg :TimeOut
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CodeRead-request (<CodeRead-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CodeRead-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CodeRead-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qr_irayble-srv:<CodeRead-request> is deprecated: use qr_irayble-srv:CodeRead-request instead.")))

(cl:ensure-generic-function 'TimeOut-val :lambda-list '(m))
(cl:defmethod TimeOut-val ((m <CodeRead-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qr_irayble-srv:TimeOut-val is deprecated.  Use qr_irayble-srv:TimeOut instead.")
  (TimeOut m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CodeRead-request>) ostream)
  "Serializes a message object of type '<CodeRead-request>"
  (cl:let* ((signed (cl:slot-value msg 'TimeOut)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CodeRead-request>) istream)
  "Deserializes a message object of type '<CodeRead-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TimeOut) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CodeRead-request>)))
  "Returns string type for a service object of type '<CodeRead-request>"
  "qr_irayble/CodeReadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CodeRead-request)))
  "Returns string type for a service object of type 'CodeRead-request"
  "qr_irayble/CodeReadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CodeRead-request>)))
  "Returns md5sum for a message object of type '<CodeRead-request>"
  "67df3b6773c89deb64fbc2e4def3a244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CodeRead-request)))
  "Returns md5sum for a message object of type 'CodeRead-request"
  "67df3b6773c89deb64fbc2e4def3a244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CodeRead-request>)))
  "Returns full string definition for message of type '<CodeRead-request>"
  (cl:format cl:nil "int8 TimeOut~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CodeRead-request)))
  "Returns full string definition for message of type 'CodeRead-request"
  (cl:format cl:nil "int8 TimeOut~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CodeRead-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CodeRead-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CodeRead-request
    (cl:cons ':TimeOut (TimeOut msg))
))
;//! \htmlinclude CodeRead-response.msg.html

(cl:defclass <CodeRead-response> (roslisp-msg-protocol:ros-message)
  ((Res
    :reader Res
    :initarg :Res
    :type cl:string
    :initform ""))
)

(cl:defclass CodeRead-response (<CodeRead-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CodeRead-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CodeRead-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qr_irayble-srv:<CodeRead-response> is deprecated: use qr_irayble-srv:CodeRead-response instead.")))

(cl:ensure-generic-function 'Res-val :lambda-list '(m))
(cl:defmethod Res-val ((m <CodeRead-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qr_irayble-srv:Res-val is deprecated.  Use qr_irayble-srv:Res instead.")
  (Res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CodeRead-response>) ostream)
  "Serializes a message object of type '<CodeRead-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CodeRead-response>) istream)
  "Deserializes a message object of type '<CodeRead-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Res) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Res) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CodeRead-response>)))
  "Returns string type for a service object of type '<CodeRead-response>"
  "qr_irayble/CodeReadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CodeRead-response)))
  "Returns string type for a service object of type 'CodeRead-response"
  "qr_irayble/CodeReadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CodeRead-response>)))
  "Returns md5sum for a message object of type '<CodeRead-response>"
  "67df3b6773c89deb64fbc2e4def3a244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CodeRead-response)))
  "Returns md5sum for a message object of type 'CodeRead-response"
  "67df3b6773c89deb64fbc2e4def3a244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CodeRead-response>)))
  "Returns full string definition for message of type '<CodeRead-response>"
  (cl:format cl:nil "string Res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CodeRead-response)))
  "Returns full string definition for message of type 'CodeRead-response"
  (cl:format cl:nil "string Res~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CodeRead-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CodeRead-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CodeRead-response
    (cl:cons ':Res (Res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CodeRead)))
  'CodeRead-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CodeRead)))
  'CodeRead-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CodeRead)))
  "Returns string type for a service object of type '<CodeRead>"
  "qr_irayble/CodeRead")