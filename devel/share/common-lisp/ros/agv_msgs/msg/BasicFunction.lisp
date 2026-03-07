; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude BasicFunction.msg.html

(cl:defclass <BasicFunction> (roslisp-msg-protocol:ros-message)
  ((FuncId
    :reader FuncId
    :initarg :FuncId
    :type cl:fixnum
    :initform 0)
   (ParId
    :reader ParId
    :initarg :ParId
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BasicFunction (<BasicFunction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BasicFunction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BasicFunction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<BasicFunction> is deprecated: use agv_msgs-msg:BasicFunction instead.")))

(cl:ensure-generic-function 'FuncId-val :lambda-list '(m))
(cl:defmethod FuncId-val ((m <BasicFunction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:FuncId-val is deprecated.  Use agv_msgs-msg:FuncId instead.")
  (FuncId m))

(cl:ensure-generic-function 'ParId-val :lambda-list '(m))
(cl:defmethod ParId-val ((m <BasicFunction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:ParId-val is deprecated.  Use agv_msgs-msg:ParId instead.")
  (ParId m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BasicFunction>) ostream)
  "Serializes a message object of type '<BasicFunction>"
  (cl:let* ((signed (cl:slot-value msg 'FuncId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ParId)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BasicFunction>) istream)
  "Deserializes a message object of type '<BasicFunction>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'FuncId) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ParId) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BasicFunction>)))
  "Returns string type for a message object of type '<BasicFunction>"
  "agv_msgs/BasicFunction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BasicFunction)))
  "Returns string type for a message object of type 'BasicFunction"
  "agv_msgs/BasicFunction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BasicFunction>)))
  "Returns md5sum for a message object of type '<BasicFunction>"
  "9bd1e71c4c1a7cc1e9127efa7dba7022")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BasicFunction)))
  "Returns md5sum for a message object of type 'BasicFunction"
  "9bd1e71c4c1a7cc1e9127efa7dba7022")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BasicFunction>)))
  "Returns full string definition for message of type '<BasicFunction>"
  (cl:format cl:nil "int8 FuncId~%int8 ParId~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BasicFunction)))
  "Returns full string definition for message of type 'BasicFunction"
  (cl:format cl:nil "int8 FuncId~%int8 ParId~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BasicFunction>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BasicFunction>))
  "Converts a ROS message object to a list"
  (cl:list 'BasicFunction
    (cl:cons ':FuncId (FuncId msg))
    (cl:cons ':ParId (ParId msg))
))
