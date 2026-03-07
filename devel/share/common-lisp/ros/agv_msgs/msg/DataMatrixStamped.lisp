; Auto-generated. Do not edit!


(cl:in-package agv_msgs-msg)


;//! \htmlinclude DataMatrixStamped.msg.html

(cl:defclass <DataMatrixStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lable
    :reader lable
    :initarg :lable
    :type agv_msgs-msg:CartesianPosition
    :initform (cl:make-instance 'agv_msgs-msg:CartesianPosition))
   (absolute
    :reader absolute
    :initarg :absolute
    :type agv_msgs-msg:CartesianPosition
    :initform (cl:make-instance 'agv_msgs-msg:CartesianPosition))
   (possition
    :reader possition
    :initarg :possition
    :type agv_msgs-msg:CartesianCoordinate
    :initform (cl:make-instance 'agv_msgs-msg:CartesianCoordinate)))
)

(cl:defclass DataMatrixStamped (<DataMatrixStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DataMatrixStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DataMatrixStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name agv_msgs-msg:<DataMatrixStamped> is deprecated: use agv_msgs-msg:DataMatrixStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DataMatrixStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:header-val is deprecated.  Use agv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lable-val :lambda-list '(m))
(cl:defmethod lable-val ((m <DataMatrixStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:lable-val is deprecated.  Use agv_msgs-msg:lable instead.")
  (lable m))

(cl:ensure-generic-function 'absolute-val :lambda-list '(m))
(cl:defmethod absolute-val ((m <DataMatrixStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:absolute-val is deprecated.  Use agv_msgs-msg:absolute instead.")
  (absolute m))

(cl:ensure-generic-function 'possition-val :lambda-list '(m))
(cl:defmethod possition-val ((m <DataMatrixStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader agv_msgs-msg:possition-val is deprecated.  Use agv_msgs-msg:possition instead.")
  (possition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DataMatrixStamped>) ostream)
  "Serializes a message object of type '<DataMatrixStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lable) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'possition) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DataMatrixStamped>) istream)
  "Deserializes a message object of type '<DataMatrixStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lable) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'possition) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DataMatrixStamped>)))
  "Returns string type for a message object of type '<DataMatrixStamped>"
  "agv_msgs/DataMatrixStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DataMatrixStamped)))
  "Returns string type for a message object of type 'DataMatrixStamped"
  "agv_msgs/DataMatrixStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DataMatrixStamped>)))
  "Returns md5sum for a message object of type '<DataMatrixStamped>"
  "875dba3a16cc734d0c14bd7f0a092201")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DataMatrixStamped)))
  "Returns md5sum for a message object of type 'DataMatrixStamped"
  "875dba3a16cc734d0c14bd7f0a092201")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DataMatrixStamped>)))
  "Returns full string definition for message of type '<DataMatrixStamped>"
  (cl:format cl:nil "Header header~%CartesianPosition lable~%CartesianPosition absolute~%CartesianCoordinate possition~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/CartesianPosition~%int32 x~%int32 y~%================================================================================~%MSG: agv_msgs/CartesianCoordinate~%int32 x~%int32 y~%float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DataMatrixStamped)))
  "Returns full string definition for message of type 'DataMatrixStamped"
  (cl:format cl:nil "Header header~%CartesianPosition lable~%CartesianPosition absolute~%CartesianCoordinate possition~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: agv_msgs/CartesianPosition~%int32 x~%int32 y~%================================================================================~%MSG: agv_msgs/CartesianCoordinate~%int32 x~%int32 y~%float64 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DataMatrixStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lable))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'possition))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DataMatrixStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'DataMatrixStamped
    (cl:cons ':header (header msg))
    (cl:cons ':lable (lable msg))
    (cl:cons ':absolute (absolute msg))
    (cl:cons ':possition (possition msg))
))
