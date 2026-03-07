; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude DataCheck-request.msg.html

(cl:defclass <DataCheck-request> (roslisp-msg-protocol:ros-message)
  ((Req
    :reader Req
    :initarg :Req
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DataCheck-request (<DataCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<DataCheck-request> is deprecated: use agv_msgs-srv:DataCheck-request instead.")))

(cl:ensure-generic-function 'Req-val :lambda-list '(m))
(cl:defmethod Req-val ((m <DataCheck-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:Req-val is deprecated.  Use agv_msgs-srv:Req instead.")
  (Req m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataCheck-request>) ostream)
  "Serializes a message object of type '<DataCheck-request>"
  (cl:let* ((signed (cl:slot-value msg 'Req)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataCheck-request>) istream)
  "Deserializes a message object of type '<DataCheck-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Req) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataCheck-request>)))
  "Returns string type for a service object of type '<DataCheck-request>"
  "agv_msgs/DataCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataCheck-request)))
  "Returns string type for a service object of type 'DataCheck-request"
  "agv_msgs/DataCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataCheck-request>)))
  "Returns md5sum for a message object of type '<DataCheck-request>"
  "24fe1e776fba9e3f89df1698abc9415d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataCheck-request)))
  "Returns md5sum for a message object of type 'DataCheck-request"
  "24fe1e776fba9e3f89df1698abc9415d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataCheck-request>)))
  "Returns full string definition for message of type '<DataCheck-request>"
  (cl:format cl:nil "int8 Req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataCheck-request)))
  "Returns full string definition for message of type 'DataCheck-request"
  (cl:format cl:nil "int8 Req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataCheck-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DataCheck-request
    (cl:cons ':Req (Req msg))
))
;//! \htmlinclude DataCheck-response.msg.html

(cl:defclass <DataCheck-response> (roslisp-msg-protocol:ros-message)
  ((Res
    :reader Res
    :initarg :Res
    :type cl:string
    :initform ""))
)

(cl:defclass DataCheck-response (<DataCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<DataCheck-response> is deprecated: use agv_msgs-srv:DataCheck-response instead.")))

(cl:ensure-generic-function 'Res-val :lambda-list '(m))
(cl:defmethod Res-val ((m <DataCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:Res-val is deprecated.  Use agv_msgs-srv:Res instead.")
  (Res m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataCheck-response>) ostream)
  "Serializes a message object of type '<DataCheck-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Res))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Res))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataCheck-response>) istream)
  "Deserializes a message object of type '<DataCheck-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataCheck-response>)))
  "Returns string type for a service object of type '<DataCheck-response>"
  "agv_msgs/DataCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataCheck-response)))
  "Returns string type for a service object of type 'DataCheck-response"
  "agv_msgs/DataCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataCheck-response>)))
  "Returns md5sum for a message object of type '<DataCheck-response>"
  "24fe1e776fba9e3f89df1698abc9415d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataCheck-response)))
  "Returns md5sum for a message object of type 'DataCheck-response"
  "24fe1e776fba9e3f89df1698abc9415d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataCheck-response>)))
  "Returns full string definition for message of type '<DataCheck-response>"
  (cl:format cl:nil "string Res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataCheck-response)))
  "Returns full string definition for message of type 'DataCheck-response"
  (cl:format cl:nil "string Res~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataCheck-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Res))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DataCheck-response
    (cl:cons ':Res (Res msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DataCheck)))
  'DataCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DataCheck)))
  'DataCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataCheck)))
  "Returns string type for a service object of type '<DataCheck>"
  "agv_msgs/DataCheck")