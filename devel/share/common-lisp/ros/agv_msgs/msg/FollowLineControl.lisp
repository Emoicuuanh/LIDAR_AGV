; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude FollowLineControl.msg.html

(cl:defclass <FollowLineControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
   (Speed
    :reader Speed
    :initarg :Speed
    :type cl:float
    :initform 0.0)
   (Direction
    :reader Direction
    :initarg :Direction
    :type cl:fixnum
    :initform 0)
   (SmootherStopSpeed
    :reader SmootherStopSpeed
    :initarg :SmootherStopSpeed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FollowLineControl (<FollowLineControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowLineControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowLineControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<FollowLineControl> is deprecated: use agv_msgs-msg:FollowLineControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FollowLineControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'RunType-val :lambda-list '(m))
(cl:defmethod RunType-val ((m <FollowLineControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:RunType-val is deprecated.  Use agv_msgs-msg:RunType instead.")
  (RunType m))

(cl:ensure-generic-function 'TurnType-val :lambda-list '(m))
(cl:defmethod TurnType-val ((m <FollowLineControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:TurnType-val is deprecated.  Use agv_msgs-msg:TurnType instead.")
  (TurnType m))

(cl:ensure-generic-function 'RotateType-val :lambda-list '(m))
(cl:defmethod RotateType-val ((m <FollowLineControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:RotateType-val is deprecated.  Use agv_msgs-msg:RotateType instead.")
  (RotateType m))

(cl:ensure-generic-function 'Speed-val :lambda-list '(m))
(cl:defmethod Speed-val ((m <FollowLineControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Speed-val is deprecated.  Use agv_msgs-msg:Speed instead.")
  (Speed m))

(cl:ensure-generic-function 'Direction-val :lambda-list '(m))
(cl:defmethod Direction-val ((m <FollowLineControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:Direction-val is deprecated.  Use agv_msgs-msg:Direction instead.")
  (Direction m))

(cl:ensure-generic-function 'SmootherStopSpeed-val :lambda-list '(m))
(cl:defmethod SmootherStopSpeed-val ((m <FollowLineControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:SmootherStopSpeed-val is deprecated.  Use agv_msgs-msg:SmootherStopSpeed instead.")
  (SmootherStopSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowLineControl>) ostream)
  "Serializes a message object of type '<FollowLineControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'RunType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'TurnType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RotateType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'Direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SmootherStopSpeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowLineControl>) istream)
  "Deserializes a message object of type '<FollowLineControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
    (cl:setf (cl:slot-value msg 'Speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Direction) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SmootherStopSpeed) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowLineControl>)))
  "Returns string type for a message object of type '<FollowLineControl>"
  "agv_msgs/FollowLineControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowLineControl)))
  "Returns string type for a message object of type 'FollowLineControl"
  "agv_msgs/FollowLineControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowLineControl>)))
  "Returns md5sum for a message object of type '<FollowLineControl>"
  "50ae4d462d3b60eb3a76ed656bf6246a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowLineControl)))
  "Returns md5sum for a message object of type 'FollowLineControl"
  "50ae4d462d3b60eb3a76ed656bf6246a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowLineControl>)))
  "Returns full string definition for message of type '<FollowLineControl>"
  (cl:format cl:nil "std_msgs/Header header~%int8 RunType~%int8 TurnType~%int8 RotateType~%float32 Speed~%int8 Direction~%int8 SmootherStopSpeed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowLineControl)))
  "Returns full string definition for message of type 'FollowLineControl"
  (cl:format cl:nil "std_msgs/Header header~%int8 RunType~%int8 TurnType~%int8 RotateType~%float32 Speed~%int8 Direction~%int8 SmootherStopSpeed~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowLineControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowLineControl>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowLineControl
    (cl:cons ':header (header msg))
    (cl:cons ':RunType (RunType msg))
    (cl:cons ':TurnType (TurnType msg))
    (cl:cons ':RotateType (RotateType msg))
    (cl:cons ':Speed (Speed msg))
    (cl:cons ':Direction (Direction msg))
    (cl:cons ':SmootherStopSpeed (SmootherStopSpeed msg))
))
