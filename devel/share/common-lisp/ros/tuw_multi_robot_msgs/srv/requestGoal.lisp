; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-srv)


;//! \htmlinclude requestGoal-request.msg.html

(cl:defclass <requestGoal-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (cancle_goal
    :reader cancle_goal
    :initarg :cancle_goal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass requestGoal-request (<requestGoal-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <requestGoal-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'requestGoal-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-srv:<requestGoal-request> is deprecated: use tuw_multi_robot_msgs-srv:requestGoal-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <requestGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:pose-val is deprecated.  Use tuw_multi_robot_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <requestGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:id-val is deprecated.  Use tuw_multi_robot_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'cancle_goal-val :lambda-list '(m))
(cl:defmethod cancle_goal-val ((m <requestGoal-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:cancle_goal-val is deprecated.  Use tuw_multi_robot_msgs-srv:cancle_goal instead.")
  (cancle_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <requestGoal-request>) ostream)
  "Serializes a message object of type '<requestGoal-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cancle_goal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <requestGoal-request>) istream)
  "Deserializes a message object of type '<requestGoal-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cancle_goal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<requestGoal-request>)))
  "Returns string type for a service object of type '<requestGoal-request>"
  "tuw_multi_robot_msgs/requestGoalRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'requestGoal-request)))
  "Returns string type for a service object of type 'requestGoal-request"
  "tuw_multi_robot_msgs/requestGoalRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<requestGoal-request>)))
  "Returns md5sum for a message object of type '<requestGoal-request>"
  "7895a23b956d609e1be88c5fefed6d4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'requestGoal-request)))
  "Returns md5sum for a message object of type 'requestGoal-request"
  "7895a23b956d609e1be88c5fefed6d4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<requestGoal-request>)))
  "Returns full string definition for message of type '<requestGoal-request>"
  (cl:format cl:nil "# Request~%geometry_msgs/PoseStamped pose~%uint32 id~%bool cancle_goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'requestGoal-request)))
  "Returns full string definition for message of type 'requestGoal-request"
  (cl:format cl:nil "# Request~%geometry_msgs/PoseStamped pose~%uint32 id~%bool cancle_goal~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <requestGoal-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <requestGoal-request>))
  "Converts a ROS message object to a list"
  (cl:list 'requestGoal-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':id (id msg))
    (cl:cons ':cancle_goal (cancle_goal msg))
))
;//! \htmlinclude requestGoal-response.msg.html

(cl:defclass <requestGoal-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass requestGoal-response (<requestGoal-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <requestGoal-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'requestGoal-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-srv:<requestGoal-response> is deprecated: use tuw_multi_robot_msgs-srv:requestGoal-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <requestGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:success-val is deprecated.  Use tuw_multi_robot_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <requestGoal-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:status_message-val is deprecated.  Use tuw_multi_robot_msgs-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <requestGoal-response>) ostream)
  "Serializes a message object of type '<requestGoal-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <requestGoal-response>) istream)
  "Deserializes a message object of type '<requestGoal-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<requestGoal-response>)))
  "Returns string type for a service object of type '<requestGoal-response>"
  "tuw_multi_robot_msgs/requestGoalResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'requestGoal-response)))
  "Returns string type for a service object of type 'requestGoal-response"
  "tuw_multi_robot_msgs/requestGoalResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<requestGoal-response>)))
  "Returns md5sum for a message object of type '<requestGoal-response>"
  "7895a23b956d609e1be88c5fefed6d4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'requestGoal-response)))
  "Returns md5sum for a message object of type 'requestGoal-response"
  "7895a23b956d609e1be88c5fefed6d4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<requestGoal-response>)))
  "Returns full string definition for message of type '<requestGoal-response>"
  (cl:format cl:nil "# Response~%bool success~%string status_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'requestGoal-response)))
  "Returns full string definition for message of type 'requestGoal-response"
  (cl:format cl:nil "# Response~%bool success~%string status_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <requestGoal-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <requestGoal-response>))
  "Converts a ROS message object to a list"
  (cl:list 'requestGoal-response
    (cl:cons ':success (success msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'requestGoal)))
  'requestGoal-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'requestGoal)))
  'requestGoal-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'requestGoal)))
  "Returns string type for a service object of type '<requestGoal>"
  "tuw_multi_robot_msgs/requestGoal")