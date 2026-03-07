; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude HmiControl.msg.html

(cl:defclass <HmiControl> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (ChangeDirection
    :reader ChangeDirection
    :initarg :ChangeDirection
    :type cl:boolean
    :initform cl:nil)
   (RunType
    :reader RunType
    :initarg :RunType
    :type cl:fixnum
    :initform 0)
   (TurnType
    :reader TurnType
    :initarg :TurnType
    :type cl:fixnum
    :initform 0)
   (RotateType
    :reader RotateType
    :initarg :RotateType
    :type cl:fixnum
    :initform 0)
   (MaxSpeedSet
    :reader MaxSpeedSet
    :initarg :MaxSpeedSet
    :type cl:float
    :initform 0.0)
   (MinSpeedSet
    :reader MinSpeedSet
    :initarg :MinSpeedSet
    :type cl:float
    :initform 0.0)
   (Sound
    :reader Sound
    :initarg :Sound
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HmiControl (<HmiControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HmiControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HmiControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<HmiControl> is deprecated: use agv_msgs-msg:HmiControl instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <HmiControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:stamp-val is deprecated.  Use agv_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'ChangeDirection-val :lambda-list '(m))
(cl:defmethod ChangeDirection-val ((m <HmiControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:ChangeDirection-val is deprecated.  Use agv_msgs-msg:ChangeDirection instead.")
  (ChangeDirection m))

(cl:ensure-generic-function 'RunType-val :lambda-list '(m))
(cl:defmethod RunType-val ((m <HmiControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:RunType-val is deprecated.  Use agv_msgs-msg:RunType instead.")
  (RunType m))

(cl:ensure-generic-function 'TurnType-val :lambda-list '(m))
(cl:defmethod TurnType-val ((m <HmiControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:TurnType-val is deprecated.  Use agv_msgs-msg:TurnType instead.")
  (TurnType m))

(cl:ensure-generic-function 'RotateType-val :lambda-list '(m))
(cl:defmethod RotateType-val ((m <HmiControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:RotateType-val is deprecated.  Use agv_msgs-msg:RotateType instead.")
  (RotateType m))

(cl:ensure-generic-function 'MaxSpeedSet-val :lambda-list '(m))
(cl:defmethod MaxSpeedSet-val ((m <HmiControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:MaxSpeedSet-val is deprecated.  Use agv_msgs-msg:MaxSpeedSet instead.")
  (MaxSpeedSet m))

(cl:ensure-generic-function 'MinSpeedSet-val :lambda-list '(m))
(cl:defmethod MinSpeedSet-val ((m <HmiControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:MinSpeedSet-val is deprecated.  Use agv_msgs-msg:MinSpeedSet instead.")
  (MinSpeedSet m))

(cl:ensure-generic-function 'Sound-val :lambda-list '(m))
(cl:defmethod Sound-val ((m <HmiControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Sound-val is deprecated.  Use agv_msgs-msg:Sound instead.")
  (Sound m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HmiControl>) ostream)
  "Serializes a message object of type '<HmiControl>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ChangeDirection) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'RunType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'TurnType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RotateType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'MaxSpeedSet))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'MinSpeedSet))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Sound)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HmiControl>) istream)
  "Deserializes a message object of type '<HmiControl>"
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
    (cl:setf (cl:slot-value msg 'ChangeDirection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RunType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TurnType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RotateType) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'MaxSpeedSet) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'MinSpeedSet) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Sound) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HmiControl>)))
  "Returns string type for a message object of type '<HmiControl>"
  "agv_msgs/HmiControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HmiControl)))
  "Returns string type for a message object of type 'HmiControl"
  "agv_msgs/HmiControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HmiControl>)))
  "Returns md5sum for a message object of type '<HmiControl>"
  "0a758689cc2994c3e06241914d97ca23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HmiControl)))
  "Returns md5sum for a message object of type 'HmiControl"
  "0a758689cc2994c3e06241914d97ca23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HmiControl>)))
  "Returns full string definition for message of type '<HmiControl>"
  (cl:format cl:nil "time stamp~%bool ChangeDirection~%int8 RunType~%int8 TurnType~%int8 RotateType~%float32 MaxSpeedSet~%float32 MinSpeedSet~%int8 Sound~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HmiControl)))
  "Returns full string definition for message of type 'HmiControl"
  (cl:format cl:nil "time stamp~%bool ChangeDirection~%int8 RunType~%int8 TurnType~%int8 RotateType~%float32 MaxSpeedSet~%float32 MinSpeedSet~%int8 Sound~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HmiControl>))
  (cl:+ 0
     8
     1
     1
     1
     1
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HmiControl>))
  "Converts a ROS message object to a list"
  (cl:list 'HmiControl
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':ChangeDirection (ChangeDirection msg))
    (cl:cons ':RunType (RunType msg))
    (cl:cons ':TurnType (TurnType msg))
    (cl:cons ':RotateType (RotateType msg))
    (cl:cons ':MaxSpeedSet (MaxSpeedSet msg))
    (cl:cons ':MinSpeedSet (MinSpeedSet msg))
    (cl:cons ':Sound (Sound msg))
))
