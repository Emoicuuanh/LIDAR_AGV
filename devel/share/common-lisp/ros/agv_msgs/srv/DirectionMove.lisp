; Auto-generated. Do not edit!


(cl:in-package agv_msgs-srv)


;//! \htmlinclude DirectionMove-request.msg.html

(cl:defclass <DirectionMove-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DirectionMove-request (<DirectionMove-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DirectionMove-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DirectionMove-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<DirectionMove-request> is deprecated: use agv_msgs-srv:DirectionMove-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DirectionMove-request>) ostream)
  "Serializes a message object of type '<DirectionMove-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DirectionMove-request>) istream)
  "Deserializes a message object of type '<DirectionMove-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DirectionMove-request>)))
  "Returns string type for a service object of type '<DirectionMove-request>"
  "agv_msgs/DirectionMoveRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DirectionMove-request)))
  "Returns string type for a service object of type 'DirectionMove-request"
  "agv_msgs/DirectionMoveRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DirectionMove-request>)))
  "Returns md5sum for a message object of type '<DirectionMove-request>"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DirectionMove-request)))
  "Returns md5sum for a message object of type 'DirectionMove-request"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DirectionMove-request>)))
  "Returns full string definition for message of type '<DirectionMove-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DirectionMove-request)))
  "Returns full string definition for message of type 'DirectionMove-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DirectionMove-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DirectionMove-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DirectionMove-request
))
;//! \htmlinclude DirectionMove-response.msg.html

(cl:defclass <DirectionMove-response> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DirectionMove-response (<DirectionMove-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DirectionMove-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DirectionMove-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-srv:<DirectionMove-response> is deprecated: use agv_msgs-srv:DirectionMove-response instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <DirectionMove-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-srv:direction-val is deprecated.  Use agv_msgs-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DirectionMove-response>) ostream)
  "Serializes a message object of type '<DirectionMove-response>"
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DirectionMove-response>) istream)
  "Deserializes a message object of type '<DirectionMove-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DirectionMove-response>)))
  "Returns string type for a service object of type '<DirectionMove-response>"
  "agv_msgs/DirectionMoveResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DirectionMove-response)))
  "Returns string type for a service object of type 'DirectionMove-response"
  "agv_msgs/DirectionMoveResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DirectionMove-response>)))
  "Returns md5sum for a message object of type '<DirectionMove-response>"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DirectionMove-response)))
  "Returns md5sum for a message object of type 'DirectionMove-response"
  "82056227860a27ca2b5bdb9859d50460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DirectionMove-response>)))
  "Returns full string definition for message of type '<DirectionMove-response>"
  (cl:format cl:nil "int8 direction # 0: free, 1:forward, 2: backward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DirectionMove-response)))
  "Returns full string definition for message of type 'DirectionMove-response"
  (cl:format cl:nil "int8 direction # 0: free, 1:forward, 2: backward~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DirectionMove-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DirectionMove-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DirectionMove-response
    (cl:cons ':direction (direction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DirectionMove)))
  'DirectionMove-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DirectionMove)))
  'DirectionMove-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DirectionMove)))
  "Returns string type for a service object of type '<DirectionMove>"
  "agv_msgs/DirectionMove")