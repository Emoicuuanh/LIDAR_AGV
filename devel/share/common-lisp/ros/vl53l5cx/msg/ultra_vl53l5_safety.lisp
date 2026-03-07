; Auto-generated. Do not edit!


(cl:in-package vl53l5cx-msg)


;//! \htmlinclude ultra_vl53l5_safety.msg.html

(cl:defclass <ultra_vl53l5_safety> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform "")
   (ultra_safety
    :reader ultra_safety
    :initarg :ultra_safety
    :type cl:boolean
    :initform cl:nil)
   (vl53l5_safety
    :reader vl53l5_safety
    :initarg :vl53l5_safety
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ultra_vl53l5_safety (<ultra_vl53l5_safety>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultra_vl53l5_safety>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultra_vl53l5_safety)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vl53l5cx-msg:<ultra_vl53l5_safety> is deprecated: use vl53l5cx-msg:ultra_vl53l5_safety instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ultra_vl53l5_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:header-val is deprecated.  Use vl53l5cx-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <ultra_vl53l5_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:seq-val is deprecated.  Use vl53l5cx-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ultra_vl53l5_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:stamp-val is deprecated.  Use vl53l5cx-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <ultra_vl53l5_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:frame_id-val is deprecated.  Use vl53l5cx-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'ultra_safety-val :lambda-list '(m))
(cl:defmethod ultra_safety-val ((m <ultra_vl53l5_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:ultra_safety-val is deprecated.  Use vl53l5cx-msg:ultra_safety instead.")
  (ultra_safety m))

(cl:ensure-generic-function 'vl53l5_safety-val :lambda-list '(m))
(cl:defmethod vl53l5_safety-val ((m <ultra_vl53l5_safety>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:vl53l5_safety-val is deprecated.  Use vl53l5cx-msg:vl53l5_safety instead.")
  (vl53l5_safety m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultra_vl53l5_safety>) ostream)
  "Serializes a message object of type '<ultra_vl53l5_safety>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ultra_safety) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vl53l5_safety) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultra_vl53l5_safety>) istream)
  "Deserializes a message object of type '<ultra_vl53l5_safety>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'ultra_safety) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vl53l5_safety) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultra_vl53l5_safety>)))
  "Returns string type for a message object of type '<ultra_vl53l5_safety>"
  "vl53l5cx/ultra_vl53l5_safety")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultra_vl53l5_safety)))
  "Returns string type for a message object of type 'ultra_vl53l5_safety"
  "vl53l5cx/ultra_vl53l5_safety")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultra_vl53l5_safety>)))
  "Returns md5sum for a message object of type '<ultra_vl53l5_safety>"
  "a7fc4490b7c400bae28e28613a322407")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultra_vl53l5_safety)))
  "Returns md5sum for a message object of type 'ultra_vl53l5_safety"
  "a7fc4490b7c400bae28e28613a322407")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultra_vl53l5_safety>)))
  "Returns full string definition for message of type '<ultra_vl53l5_safety>"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%bool ultra_safety ~%bool vl53l5_safety ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultra_vl53l5_safety)))
  "Returns full string definition for message of type 'ultra_vl53l5_safety"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%bool ultra_safety ~%bool vl53l5_safety ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultra_vl53l5_safety>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultra_vl53l5_safety>))
  "Converts a ROS message object to a list"
  (cl:list 'ultra_vl53l5_safety
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':ultra_safety (ultra_safety msg))
    (cl:cons ':vl53l5_safety (vl53l5_safety msg))
))
