; Auto-generated. Do not edit!


(cl:in-package arduino_serial-msg)


;//! \htmlinclude LiftStatus.msg.html

(cl:defclass <LiftStatus> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (sensor_max
    :reader sensor_max
    :initarg :sensor_max
    :type cl:boolean
    :initform cl:nil)
   (sensor_min
    :reader sensor_min
    :initarg :sensor_min
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LiftStatus (<LiftStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LiftStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LiftStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_serial-msg:<LiftStatus> is deprecated: use arduino_serial-msg:LiftStatus instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <LiftStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_serial-msg:stamp-val is deprecated.  Use arduino_serial-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'sensor_max-val :lambda-list '(m))
(cl:defmethod sensor_max-val ((m <LiftStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_serial-msg:sensor_max-val is deprecated.  Use arduino_serial-msg:sensor_max instead.")
  (sensor_max m))

(cl:ensure-generic-function 'sensor_min-val :lambda-list '(m))
(cl:defmethod sensor_min-val ((m <LiftStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_serial-msg:sensor_min-val is deprecated.  Use arduino_serial-msg:sensor_min instead.")
  (sensor_min m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LiftStatus>) ostream)
  "Serializes a message object of type '<LiftStatus>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_max) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sensor_min) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LiftStatus>) istream)
  "Deserializes a message object of type '<LiftStatus>"
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
    (cl:setf (cl:slot-value msg 'sensor_max) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'sensor_min) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LiftStatus>)))
  "Returns string type for a message object of type '<LiftStatus>"
  "arduino_serial/LiftStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LiftStatus)))
  "Returns string type for a message object of type 'LiftStatus"
  "arduino_serial/LiftStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LiftStatus>)))
  "Returns md5sum for a message object of type '<LiftStatus>"
  "ff08c76cb254ec9297cccc8566cbbf64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LiftStatus)))
  "Returns md5sum for a message object of type 'LiftStatus"
  "ff08c76cb254ec9297cccc8566cbbf64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LiftStatus>)))
  "Returns full string definition for message of type '<LiftStatus>"
  (cl:format cl:nil "time stamp~%bool sensor_max~%bool sensor_min~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LiftStatus)))
  "Returns full string definition for message of type 'LiftStatus"
  (cl:format cl:nil "time stamp~%bool sensor_max~%bool sensor_min~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LiftStatus>))
  (cl:+ 0
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LiftStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LiftStatus
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':sensor_max (sensor_max msg))
    (cl:cons ':sensor_min (sensor_min msg))
))
