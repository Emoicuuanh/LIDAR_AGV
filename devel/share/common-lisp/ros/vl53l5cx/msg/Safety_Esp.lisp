; Auto-generated. Do not edit!


(cl:in-package vl53l5cx-msg)


;//! \htmlinclude Safety_Esp.msg.html

(cl:defclass <Safety_Esp> (roslisp-msg-protocol:ros-message)
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
   (status_left
    :reader status_left
    :initarg :status_left
    :type cl:boolean
    :initform cl:nil)
   (status_right
    :reader status_right
    :initarg :status_right
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Safety_Esp (<Safety_Esp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Safety_Esp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Safety_Esp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vl53l5cx-msg:<Safety_Esp> is deprecated: use vl53l5cx-msg:Safety_Esp instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Safety_Esp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:header-val is deprecated.  Use vl53l5cx-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <Safety_Esp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:seq-val is deprecated.  Use vl53l5cx-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Safety_Esp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:stamp-val is deprecated.  Use vl53l5cx-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <Safety_Esp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:frame_id-val is deprecated.  Use vl53l5cx-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'status_left-val :lambda-list '(m))
(cl:defmethod status_left-val ((m <Safety_Esp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:status_left-val is deprecated.  Use vl53l5cx-msg:status_left instead.")
  (status_left m))

(cl:ensure-generic-function 'status_right-val :lambda-list '(m))
(cl:defmethod status_right-val ((m <Safety_Esp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:status_right-val is deprecated.  Use vl53l5cx-msg:status_right instead.")
  (status_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Safety_Esp>) ostream)
  "Serializes a message object of type '<Safety_Esp>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status_right) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Safety_Esp>) istream)
  "Deserializes a message object of type '<Safety_Esp>"
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
    (cl:setf (cl:slot-value msg 'status_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'status_right) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Safety_Esp>)))
  "Returns string type for a message object of type '<Safety_Esp>"
  "vl53l5cx/Safety_Esp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Safety_Esp)))
  "Returns string type for a message object of type 'Safety_Esp"
  "vl53l5cx/Safety_Esp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Safety_Esp>)))
  "Returns md5sum for a message object of type '<Safety_Esp>"
  "5276f019405058a5dc677f6cf9e8af6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Safety_Esp)))
  "Returns md5sum for a message object of type 'Safety_Esp"
  "5276f019405058a5dc677f6cf9e8af6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Safety_Esp>)))
  "Returns full string definition for message of type '<Safety_Esp>"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%bool status_left ~%bool status_right ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Safety_Esp)))
  "Returns full string definition for message of type 'Safety_Esp"
  (cl:format cl:nil "std_msgs/Header header~%  uint32 seq~%  time stamp~%  string frame_id~%bool status_left ~%bool status_right ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Safety_Esp>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Safety_Esp>))
  "Converts a ROS message object to a list"
  (cl:list 'Safety_Esp
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':status_left (status_left msg))
    (cl:cons ':status_right (status_right msg))
))
