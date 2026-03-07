; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-srv)


;//! \htmlinclude GetRobotStatus-request.msg.html

(cl:defclass <GetRobotStatus-request> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetRobotStatus-request (<GetRobotStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-srv:<GetRobotStatus-request> is deprecated: use tuw_multi_robot_msgs-srv:GetRobotStatus-request instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <GetRobotStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:robot_name-val is deprecated.  Use tuw_multi_robot_msgs-srv:robot_name instead.")
  (robot_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotStatus-request>) ostream)
  "Serializes a message object of type '<GetRobotStatus-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotStatus-request>) istream)
  "Deserializes a message object of type '<GetRobotStatus-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotStatus-request>)))
  "Returns string type for a service object of type '<GetRobotStatus-request>"
  "tuw_multi_robot_msgs/GetRobotStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotStatus-request)))
  "Returns string type for a service object of type 'GetRobotStatus-request"
  "tuw_multi_robot_msgs/GetRobotStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotStatus-request>)))
  "Returns md5sum for a message object of type '<GetRobotStatus-request>"
  "ab256237ff1a2b88df7251fe3daff94b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotStatus-request)))
  "Returns md5sum for a message object of type 'GetRobotStatus-request"
  "ab256237ff1a2b88df7251fe3daff94b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotStatus-request>)))
  "Returns full string definition for message of type '<GetRobotStatus-request>"
  (cl:format cl:nil "string robot_name  # Node A gửi tên robot~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotStatus-request)))
  "Returns full string definition for message of type 'GetRobotStatus-request"
  (cl:format cl:nil "string robot_name  # Node A gửi tên robot~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotStatus-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotStatus-request
    (cl:cons ':robot_name (robot_name msg))
))
;//! \htmlinclude GetRobotStatus-response.msg.html

(cl:defclass <GetRobotStatus-response> (roslisp-msg-protocol:ros-message)
  ((detail_status_run_pause_by_route
    :reader detail_status_run_pause_by_route
    :initarg :detail_status_run_pause_by_route
    :type cl:string
    :initform "")
   (detail_status_run_pause_by_detect_collision
    :reader detail_status_run_pause_by_detect_collision
    :initarg :detail_status_run_pause_by_detect_collision
    :type cl:string
    :initform "")
   (is_pause_by_route
    :reader is_pause_by_route
    :initarg :is_pause_by_route
    :type cl:boolean
    :initform cl:nil)
   (is_pause_by_detect_collision
    :reader is_pause_by_detect_collision
    :initarg :is_pause_by_detect_collision
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetRobotStatus-response (<GetRobotStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-srv:<GetRobotStatus-response> is deprecated: use tuw_multi_robot_msgs-srv:GetRobotStatus-response instead.")))

(cl:ensure-generic-function 'detail_status_run_pause_by_route-val :lambda-list '(m))
(cl:defmethod detail_status_run_pause_by_route-val ((m <GetRobotStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:detail_status_run_pause_by_route-val is deprecated.  Use tuw_multi_robot_msgs-srv:detail_status_run_pause_by_route instead.")
  (detail_status_run_pause_by_route m))

(cl:ensure-generic-function 'detail_status_run_pause_by_detect_collision-val :lambda-list '(m))
(cl:defmethod detail_status_run_pause_by_detect_collision-val ((m <GetRobotStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:detail_status_run_pause_by_detect_collision-val is deprecated.  Use tuw_multi_robot_msgs-srv:detail_status_run_pause_by_detect_collision instead.")
  (detail_status_run_pause_by_detect_collision m))

(cl:ensure-generic-function 'is_pause_by_route-val :lambda-list '(m))
(cl:defmethod is_pause_by_route-val ((m <GetRobotStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:is_pause_by_route-val is deprecated.  Use tuw_multi_robot_msgs-srv:is_pause_by_route instead.")
  (is_pause_by_route m))

(cl:ensure-generic-function 'is_pause_by_detect_collision-val :lambda-list '(m))
(cl:defmethod is_pause_by_detect_collision-val ((m <GetRobotStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-srv:is_pause_by_detect_collision-val is deprecated.  Use tuw_multi_robot_msgs-srv:is_pause_by_detect_collision instead.")
  (is_pause_by_detect_collision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotStatus-response>) ostream)
  "Serializes a message object of type '<GetRobotStatus-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detail_status_run_pause_by_route))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detail_status_run_pause_by_route))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detail_status_run_pause_by_detect_collision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detail_status_run_pause_by_detect_collision))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_pause_by_route) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_pause_by_detect_collision) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotStatus-response>) istream)
  "Deserializes a message object of type '<GetRobotStatus-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail_status_run_pause_by_route) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detail_status_run_pause_by_route) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail_status_run_pause_by_detect_collision) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detail_status_run_pause_by_detect_collision) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_pause_by_route) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_pause_by_detect_collision) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotStatus-response>)))
  "Returns string type for a service object of type '<GetRobotStatus-response>"
  "tuw_multi_robot_msgs/GetRobotStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotStatus-response)))
  "Returns string type for a service object of type 'GetRobotStatus-response"
  "tuw_multi_robot_msgs/GetRobotStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotStatus-response>)))
  "Returns md5sum for a message object of type '<GetRobotStatus-response>"
  "ab256237ff1a2b88df7251fe3daff94b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotStatus-response)))
  "Returns md5sum for a message object of type 'GetRobotStatus-response"
  "ab256237ff1a2b88df7251fe3daff94b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotStatus-response>)))
  "Returns full string definition for message of type '<GetRobotStatus-response>"
  (cl:format cl:nil "~%string detail_status_run_pause_by_route~%string detail_status_run_pause_by_detect_collision~%bool is_pause_by_route~%bool is_pause_by_detect_collision~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotStatus-response)))
  "Returns full string definition for message of type 'GetRobotStatus-response"
  (cl:format cl:nil "~%string detail_status_run_pause_by_route~%string detail_status_run_pause_by_detect_collision~%bool is_pause_by_route~%bool is_pause_by_detect_collision~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotStatus-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'detail_status_run_pause_by_route))
     4 (cl:length (cl:slot-value msg 'detail_status_run_pause_by_detect_collision))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotStatus-response
    (cl:cons ':detail_status_run_pause_by_route (detail_status_run_pause_by_route msg))
    (cl:cons ':detail_status_run_pause_by_detect_collision (detail_status_run_pause_by_detect_collision msg))
    (cl:cons ':is_pause_by_route (is_pause_by_route msg))
    (cl:cons ':is_pause_by_detect_collision (is_pause_by_detect_collision msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotStatus)))
  'GetRobotStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotStatus)))
  'GetRobotStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotStatus)))
  "Returns string type for a service object of type '<GetRobotStatus>"
  "tuw_multi_robot_msgs/GetRobotStatus")