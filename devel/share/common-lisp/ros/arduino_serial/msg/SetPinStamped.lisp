; Auto-generated. Do not edit!


(cl:in-package arduino_serial-msg)


;//! \htmlinclude SetPinStamped.msg.html

(cl:defclass <SetPinStamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (pin
    :reader pin
    :initarg :pin
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPinStamped (<SetPinStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPinStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPinStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_serial-msg:<SetPinStamped> is deprecated: use arduino_serial-msg:SetPinStamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <SetPinStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_serial-msg:stamp-val is deprecated.  Use arduino_serial-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'pin-val :lambda-list '(m))
(cl:defmethod pin-val ((m <SetPinStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_serial-msg:pin-val is deprecated.  Use arduino_serial-msg:pin instead.")
  (pin m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetPinStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_serial-msg:value-val is deprecated.  Use arduino_serial-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPinStamped>) ostream)
  "Serializes a message object of type '<SetPinStamped>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'pin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPinStamped>) istream)
  "Deserializes a message object of type '<SetPinStamped>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pin) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPinStamped>)))
  "Returns string type for a message object of type '<SetPinStamped>"
  "arduino_serial/SetPinStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPinStamped)))
  "Returns string type for a message object of type 'SetPinStamped"
  "arduino_serial/SetPinStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPinStamped>)))
  "Returns md5sum for a message object of type '<SetPinStamped>"
  "1c071caaac2c180d837848c41bb23570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPinStamped)))
  "Returns md5sum for a message object of type 'SetPinStamped"
  "1c071caaac2c180d837848c41bb23570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPinStamped>)))
  "Returns full string definition for message of type '<SetPinStamped>"
  (cl:format cl:nil "time stamp~%int8 pin~%bool value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPinStamped)))
  "Returns full string definition for message of type 'SetPinStamped"
  (cl:format cl:nil "time stamp~%int8 pin~%bool value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPinStamped>))
  (cl:+ 0
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPinStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPinStamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':pin (pin msg))
    (cl:cons ':value (value msg))
))
