; Auto-generated. Do not edit!


(cl:in-package mission_manager-msg)


;//! \htmlinclude CheckPositionStatusGoal.msg.html

(cl:defclass <CheckPositionStatusGoal> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (desired
    :reader desired
    :initarg :desired
    :type cl:boolean
    :initform cl:nil)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0))
)

(cl:defclass CheckPositionStatusGoal (<CheckPositionStatusGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckPositionStatusGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckPositionStatusGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mission_manager-msg:<CheckPositionStatusGoal> is deprecated: use mission_manager-msg:CheckPositionStatusGoal instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <CheckPositionStatusGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_manager-msg:x-val is deprecated.  Use mission_manager-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <CheckPositionStatusGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_manager-msg:y-val is deprecated.  Use mission_manager-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <CheckPositionStatusGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_manager-msg:theta-val is deprecated.  Use mission_manager-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'desired-val :lambda-list '(m))
(cl:defmethod desired-val ((m <CheckPositionStatusGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_manager-msg:desired-val is deprecated.  Use mission_manager-msg:desired instead.")
  (desired m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <CheckPositionStatusGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mission_manager-msg:timeout-val is deprecated.  Use mission_manager-msg:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckPositionStatusGoal>) ostream)
  "Serializes a message object of type '<CheckPositionStatusGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'desired) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckPositionStatusGoal>) istream)
  "Deserializes a message object of type '<CheckPositionStatusGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'desired) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckPositionStatusGoal>)))
  "Returns string type for a message object of type '<CheckPositionStatusGoal>"
  "mission_manager/CheckPositionStatusGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckPositionStatusGoal)))
  "Returns string type for a message object of type 'CheckPositionStatusGoal"
  "mission_manager/CheckPositionStatusGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckPositionStatusGoal>)))
  "Returns md5sum for a message object of type '<CheckPositionStatusGoal>"
  "139409fc2711a2e9baed833d8e46355c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckPositionStatusGoal)))
  "Returns md5sum for a message object of type 'CheckPositionStatusGoal"
  "139409fc2711a2e9baed833d8e46355c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckPositionStatusGoal>)))
  "Returns full string definition for message of type '<CheckPositionStatusGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%float64 x~%float64 y~%float64 theta~%bool desired~%float32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckPositionStatusGoal)))
  "Returns full string definition for message of type 'CheckPositionStatusGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%float64 x~%float64 y~%float64 theta~%bool desired~%float32 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckPositionStatusGoal>))
  (cl:+ 0
     8
     8
     8
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckPositionStatusGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckPositionStatusGoal
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':desired (desired msg))
    (cl:cons ':timeout (timeout msg))
))
