; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude LedControl.msg.html

(cl:defclass <LedControl> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:fixnum
    :initform 0)
   (blink_interval
    :reader blink_interval
    :initarg :blink_interval
    :type cl:fixnum
    :initform 0)
   (start_index
    :reader start_index
    :initarg :start_index
    :type cl:fixnum
    :initform 0)
   (stop_index
    :reader stop_index
    :initarg :stop_index
    :type cl:fixnum
    :initform 0)
   (r
    :reader r
    :initarg :r
    :type cl:fixnum
    :initform 0)
   (g
    :reader g
    :initarg :g
    :type cl:fixnum
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LedControl (<LedControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<LedControl> is deprecated: use agv_msgs-msg:LedControl instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:stamp-val is deprecated.  Use agv_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:type-val is deprecated.  Use agv_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:duration-val is deprecated.  Use agv_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'blink_interval-val :lambda-list '(m))
(cl:defmethod blink_interval-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:blink_interval-val is deprecated.  Use agv_msgs-msg:blink_interval instead.")
  (blink_interval m))

(cl:ensure-generic-function 'start_index-val :lambda-list '(m))
(cl:defmethod start_index-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:start_index-val is deprecated.  Use agv_msgs-msg:start_index instead.")
  (start_index m))

(cl:ensure-generic-function 'stop_index-val :lambda-list '(m))
(cl:defmethod stop_index-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:stop_index-val is deprecated.  Use agv_msgs-msg:stop_index instead.")
  (stop_index m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:r-val is deprecated.  Use agv_msgs-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'g-val :lambda-list '(m))
(cl:defmethod g-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:g-val is deprecated.  Use agv_msgs-msg:g instead.")
  (g m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <LedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:b-val is deprecated.  Use agv_msgs-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedControl>) ostream)
  "Serializes a message object of type '<LedControl>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blink_interval)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blink_interval)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedControl>) istream)
  "Deserializes a message object of type '<LedControl>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blink_interval)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blink_interval)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'g)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'b)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedControl>)))
  "Returns string type for a message object of type '<LedControl>"
  "agv_msgs/LedControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedControl)))
  "Returns string type for a message object of type 'LedControl"
  "agv_msgs/LedControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedControl>)))
  "Returns md5sum for a message object of type '<LedControl>"
  "785892508c5956b411606316386b78eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedControl)))
  "Returns md5sum for a message object of type 'LedControl"
  "785892508c5956b411606316386b78eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedControl>)))
  "Returns full string definition for message of type '<LedControl>"
  (cl:format cl:nil "time stamp~%uint8 type~%uint16 duration~%uint16 blink_interval~%uint8 start_index~%uint8 stop_index~%uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedControl)))
  "Returns full string definition for message of type 'LedControl"
  (cl:format cl:nil "time stamp~%uint8 type~%uint16 duration~%uint16 blink_interval~%uint8 start_index~%uint8 stop_index~%uint8 r~%uint8 g~%uint8 b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedControl>))
  (cl:+ 0
     8
     1
     2
     2
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedControl>))
  "Converts a ROS message object to a list"
  (cl:list 'LedControl
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':type (type msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':blink_interval (blink_interval msg))
    (cl:cons ':start_index (start_index msg))
    (cl:cons ':stop_index (stop_index msg))
    (cl:cons ':r (r msg))
    (cl:cons ':g (g msg))
    (cl:cons ':b (b msg))
))
