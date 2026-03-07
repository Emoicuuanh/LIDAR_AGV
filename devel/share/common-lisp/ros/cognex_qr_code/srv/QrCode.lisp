; Auto-generated. Do not edit!


(cl:in-package cognex_qr_code-srv)


;//! \htmlinclude QrCode-request.msg.html

(cl:defclass <QrCode-request> (roslisp-msg-protocol:ros-message)
  ((TimeOut
    :reader TimeOut
    :initarg :TimeOut
    :type cl:fixnum
    :initform 0))
)

(cl:defclass QrCode-request (<QrCode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QrCode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QrCode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cognex_qr_code-srv:<QrCode-request> is deprecated: use cognex_qr_code-srv:QrCode-request instead.")))

(cl:ensure-generic-function 'TimeOut-val :lambda-list '(m))
(cl:defmethod TimeOut-val ((m <QrCode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cognex_qr_code-srv:TimeOut-val is deprecated.  Use cognex_qr_code-srv:TimeOut instead.")
  (TimeOut m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QrCode-request>) ostream)
  "Serializes a message object of type '<QrCode-request>"
  (cl:let* ((signed (cl:slot-value msg 'TimeOut)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QrCode-request>) istream)
  "Deserializes a message object of type '<QrCode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TimeOut) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QrCode-request>)))
  "Returns string type for a service object of type '<QrCode-request>"
  "cognex_qr_code/QrCodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QrCode-request)))
  "Returns string type for a service object of type 'QrCode-request"
  "cognex_qr_code/QrCodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QrCode-request>)))
  "Returns md5sum for a message object of type '<QrCode-request>"
  "67df3b6773c89deb64fbc2e4def3a244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QrCode-request)))
  "Returns md5sum for a message object of type 'QrCode-request"
  "67df3b6773c89deb64fbc2e4def3a244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QrCode-request>)))
  "Returns full string definition for message of type '<QrCode-request>"
  (cl:format cl:nil "int8 TimeOut~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QrCode-request)))
  "Returns full string definition for message of type 'QrCode-request"
  (cl:format cl:nil "int8 TimeOut~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QrCode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QrCode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QrCode-request
    (cl:cons ':TimeOut (TimeOut msg))
))
;//! \htmlinclude QrCode-response.msg.html

(cl:defclass <QrCode-response> (roslisp-msg-protocol:ros-message)
  ((Res
    :reader Res
    :initarg :Res
    :type cl:string
    :initform ""))
)

(cl:defclass QrCode-response (<QrCode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QrCode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QrCode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cognex_qr_code-srv:<QrCode-response> is deprecated: use cognex_qr_code-srv:QrCode-response instead.")))

(cl:ensure-generic-function 'Res-val :lambda-list '(m))
(cl:defmethod Res-val ((m <QrCode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cognex_qr_code-srv:Res-val is deprecated.  Use cognex_qr_code-srv:Res instead.")
  (Res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QrCode-response>) ostream)
  "Serializes a message object of type '<QrCode-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QrCode-response>) istream)
  "Deserializes a message object of type '<QrCode-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QrCode-response>)))
  "Returns string type for a service object of type '<QrCode-response>"
  "cognex_qr_code/QrCodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QrCode-response)))
  "Returns string type for a service object of type 'QrCode-response"
  "cognex_qr_code/QrCodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QrCode-response>)))
  "Returns md5sum for a message object of type '<QrCode-response>"
  "67df3b6773c89deb64fbc2e4def3a244")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QrCode-response)))
  "Returns md5sum for a message object of type 'QrCode-response"
  "67df3b6773c89deb64fbc2e4def3a244")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QrCode-response>)))
  "Returns full string definition for message of type '<QrCode-response>"
  (cl:format cl:nil "string Res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QrCode-response)))
  "Returns full string definition for message of type 'QrCode-response"
  (cl:format cl:nil "string Res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QrCode-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QrCode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QrCode-response
    (cl:cons ':Res (Res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QrCode)))
  'QrCode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QrCode)))
  'QrCode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QrCode)))
  "Returns string type for a service object of type '<QrCode>"
  "cognex_qr_code/QrCode")