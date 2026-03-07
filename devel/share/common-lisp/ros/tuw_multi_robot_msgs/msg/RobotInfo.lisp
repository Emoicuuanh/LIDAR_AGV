; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude RobotInfo.msg.html

(cl:defclass <RobotInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (shape
    :reader shape
    :initarg :shape
    :type cl:integer
    :initform 0)
   (layout_map
    :reader layout_map
    :initarg :layout_map
    :type cl:integer
    :initform 0)
   (shape_variables
    :reader shape_variables
    :initarg :shape_variables
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (sync
    :reader sync
    :initarg :sync
    :type tuw_multi_robot_msgs-msg:RoutePrecondition
    :initform (cl:make-instance 'tuw_multi_robot_msgs-msg:RoutePrecondition))
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (detail_status
    :reader detail_status
    :initarg :detail_status
    :type cl:string
    :initform "")
   (good_id
    :reader good_id
    :initarg :good_id
    :type cl:integer
    :initform 0)
   (order_id
    :reader order_id
    :initarg :order_id
    :type cl:integer
    :initform 0)
   (order_status
    :reader order_status
    :initarg :order_status
    :type cl:integer
    :initform 0)
   (auto_mode
    :reader auto_mode
    :initarg :auto_mode
    :type cl:boolean
    :initform cl:nil)
   (pause
    :reader pause
    :initarg :pause
    :type cl:boolean
    :initform cl:nil)
   (init_pose
    :reader init_pose
    :initarg :init_pose
    :type cl:boolean
    :initform cl:nil)
   (allow_estimate_pose
    :reader allow_estimate_pose
    :initarg :allow_estimate_pose
    :type cl:boolean
    :initform cl:nil)
   (current_action_type
    :reader current_action_type
    :initarg :current_action_type
    :type cl:string
    :initform "")
   (direction_move
    :reader direction_move
    :initarg :direction_move
    :type cl:string
    :initform "")
   (state_move
    :reader state_move
    :initarg :state_move
    :type cl:string
    :initform "")
   (mission_group
    :reader mission_group
    :initarg :mission_group
    :type cl:string
    :initform ""))
)

(cl:defclass RobotInfo (<RobotInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<RobotInfo> is deprecated: use tuw_multi_robot_msgs-msg:RobotInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:header-val is deprecated.  Use tuw_multi_robot_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:robot_name-val is deprecated.  Use tuw_multi_robot_msgs-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:pose-val is deprecated.  Use tuw_multi_robot_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:velocity-val is deprecated.  Use tuw_multi_robot_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:shape-val is deprecated.  Use tuw_multi_robot_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'layout_map-val :lambda-list '(m))
(cl:defmethod layout_map-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:layout_map-val is deprecated.  Use tuw_multi_robot_msgs-msg:layout_map instead.")
  (layout_map m))

(cl:ensure-generic-function 'shape_variables-val :lambda-list '(m))
(cl:defmethod shape_variables-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:shape_variables-val is deprecated.  Use tuw_multi_robot_msgs-msg:shape_variables instead.")
  (shape_variables m))

(cl:ensure-generic-function 'sync-val :lambda-list '(m))
(cl:defmethod sync-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:sync-val is deprecated.  Use tuw_multi_robot_msgs-msg:sync instead.")
  (sync m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:mode-val is deprecated.  Use tuw_multi_robot_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:status-val is deprecated.  Use tuw_multi_robot_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'detail_status-val :lambda-list '(m))
(cl:defmethod detail_status-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:detail_status-val is deprecated.  Use tuw_multi_robot_msgs-msg:detail_status instead.")
  (detail_status m))

(cl:ensure-generic-function 'good_id-val :lambda-list '(m))
(cl:defmethod good_id-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:good_id-val is deprecated.  Use tuw_multi_robot_msgs-msg:good_id instead.")
  (good_id m))

(cl:ensure-generic-function 'order_id-val :lambda-list '(m))
(cl:defmethod order_id-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:order_id-val is deprecated.  Use tuw_multi_robot_msgs-msg:order_id instead.")
  (order_id m))

(cl:ensure-generic-function 'order_status-val :lambda-list '(m))
(cl:defmethod order_status-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:order_status-val is deprecated.  Use tuw_multi_robot_msgs-msg:order_status instead.")
  (order_status m))

(cl:ensure-generic-function 'auto_mode-val :lambda-list '(m))
(cl:defmethod auto_mode-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:auto_mode-val is deprecated.  Use tuw_multi_robot_msgs-msg:auto_mode instead.")
  (auto_mode m))

(cl:ensure-generic-function 'pause-val :lambda-list '(m))
(cl:defmethod pause-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:pause-val is deprecated.  Use tuw_multi_robot_msgs-msg:pause instead.")
  (pause m))

(cl:ensure-generic-function 'init_pose-val :lambda-list '(m))
(cl:defmethod init_pose-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:init_pose-val is deprecated.  Use tuw_multi_robot_msgs-msg:init_pose instead.")
  (init_pose m))

(cl:ensure-generic-function 'allow_estimate_pose-val :lambda-list '(m))
(cl:defmethod allow_estimate_pose-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:allow_estimate_pose-val is deprecated.  Use tuw_multi_robot_msgs-msg:allow_estimate_pose instead.")
  (allow_estimate_pose m))

(cl:ensure-generic-function 'current_action_type-val :lambda-list '(m))
(cl:defmethod current_action_type-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:current_action_type-val is deprecated.  Use tuw_multi_robot_msgs-msg:current_action_type instead.")
  (current_action_type m))

(cl:ensure-generic-function 'direction_move-val :lambda-list '(m))
(cl:defmethod direction_move-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:direction_move-val is deprecated.  Use tuw_multi_robot_msgs-msg:direction_move instead.")
  (direction_move m))

(cl:ensure-generic-function 'state_move-val :lambda-list '(m))
(cl:defmethod state_move-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:state_move-val is deprecated.  Use tuw_multi_robot_msgs-msg:state_move instead.")
  (state_move m))

(cl:ensure-generic-function 'mission_group-val :lambda-list '(m))
(cl:defmethod mission_group-val ((m <RobotInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:mission_group-val is deprecated.  Use tuw_multi_robot_msgs-msg:mission_group instead.")
  (mission_group m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RobotInfo>)))
    "Constants for message type '<RobotInfo>"
  '((:MODE_NA . 0)
    (:MODE_IDLE . 1)
    (:MODE_SEGMENT_FOLLOWING . 2)
    (:MODE_PICKUP . 3)
    (:STATUS_DRIVING . 0)
    (:STATUS_STOPPED . 1)
    (:STATUS_DONE . 2)
    (:STATUS_BROKEN . 3)
    (:GOOD_EMPTY . -1)
    (:GOOD_NA . -2)
    (:SHAPE_CIRCLE . 0)
    (:SHAPE_RECTANGLE . 1)
    (:ORDER_NONE . 0)
    (:ORDER_APPROACH . 1)
    (:ORDER_PICKUP . 2)
    (:ORDER_TRANSPORT . 3)
    (:ORDER_DROP . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RobotInfo)))
    "Constants for message type 'RobotInfo"
  '((:MODE_NA . 0)
    (:MODE_IDLE . 1)
    (:MODE_SEGMENT_FOLLOWING . 2)
    (:MODE_PICKUP . 3)
    (:STATUS_DRIVING . 0)
    (:STATUS_STOPPED . 1)
    (:STATUS_DONE . 2)
    (:STATUS_BROKEN . 3)
    (:GOOD_EMPTY . -1)
    (:GOOD_NA . -2)
    (:SHAPE_CIRCLE . 0)
    (:SHAPE_RECTANGLE . 1)
    (:ORDER_NONE . 0)
    (:ORDER_APPROACH . 1)
    (:ORDER_PICKUP . 2)
    (:ORDER_TRANSPORT . 3)
    (:ORDER_DROP . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInfo>) ostream)
  "Serializes a message object of type '<RobotInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let* ((signed (cl:slot-value msg 'shape)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layout_map)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'layout_map)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'layout_map)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'layout_map)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_variables))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'shape_variables))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sync) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detail_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detail_status))
  (cl:let* ((signed (cl:slot-value msg 'good_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'order_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'order_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pause) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'init_pose) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'allow_estimate_pose) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_action_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_action_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction_move))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction_move))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_move))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_move))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mission_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mission_group))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInfo>) istream)
  "Deserializes a message object of type '<RobotInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shape) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'layout_map)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'layout_map)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'layout_map)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'layout_map)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_variables) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_variables)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sync) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detail_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detail_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'good_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'auto_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pause) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'init_pose) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'allow_estimate_pose) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_action_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_action_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction_move) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction_move) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_move) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_move) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mission_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mission_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInfo>)))
  "Returns string type for a message object of type '<RobotInfo>"
  "tuw_multi_robot_msgs/RobotInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInfo)))
  "Returns string type for a message object of type 'RobotInfo"
  "tuw_multi_robot_msgs/RobotInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInfo>)))
  "Returns md5sum for a message object of type '<RobotInfo>"
  "cc7493e48479d00d2e68762d70218df7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInfo)))
  "Returns md5sum for a message object of type 'RobotInfo"
  "cc7493e48479d00d2e68762d70218df7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInfo>)))
  "Returns full string definition for message of type '<RobotInfo>"
  (cl:format cl:nil "#################################################################~%## Presents dynamic parameters of a robot~%#################################################################~%~%Header header                            # the creation time~%string robot_name                        # the name of the robot (used in preconditions and topics)~%geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header~%geometry_msgs/Twist velocity             # velocity of the robot (linear and angular)~%int32 shape                              # the shape of the robots (see enums)~%uint32 layout_map~%float32[] shape_variables                # shape variables to define width height, ...~%RoutePrecondition sync                   # the current position in the last received plan (-1 means none)~%string   mode                             # the mode of operation~%string   status                           # the status of the robot~%string detail_status~%int32   good_id                          # the good id attached to the robot~%int32   order_id                         # the order id scheduled to this robot (-1: none)~%int32   order_status                     # the status of the assigned order~%~%# mode~%int32 MODE_NA = 0                   # undefined mode~%int32 MODE_IDLE = 1                 # robot is idle~%int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following~%int32 MODE_PICKUP = 3               # robot is picking up goods~%~%# status~%int32 STATUS_DRIVING = 0             # robot is driving~%int32 STATUS_STOPPED = 1            # robot has stopped~%int32 STATUS_DONE = 2               # robot has finished its last job~%int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task~%~%# good_id~%int32 GOOD_EMPTY = -1               # no goods attached~%int32 GOOD_NA = -2                  # undefined good~%~%# shape~%int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars~%int32 SHAPE_RECTANGLE = 1~%~%# order_status~%int32 ORDER_NONE = 0                # no order assigned~%int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order~%int32 ORDER_PICKUP = 2              # the robot picks up a good at the station~%int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another~%int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order~%~%bool auto_mode~%bool pause~%bool init_pose~%bool allow_estimate_pose~%string current_action_type~%string direction_move~%string state_move~%string mission_group~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route~%## with such a message~%## The specific segments of a route are marked with such~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%uint32 current_segment_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInfo)))
  "Returns full string definition for message of type 'RobotInfo"
  (cl:format cl:nil "#################################################################~%## Presents dynamic parameters of a robot~%#################################################################~%~%Header header                            # the creation time~%string robot_name                        # the name of the robot (used in preconditions and topics)~%geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header~%geometry_msgs/Twist velocity             # velocity of the robot (linear and angular)~%int32 shape                              # the shape of the robots (see enums)~%uint32 layout_map~%float32[] shape_variables                # shape variables to define width height, ...~%RoutePrecondition sync                   # the current position in the last received plan (-1 means none)~%string   mode                             # the mode of operation~%string   status                           # the status of the robot~%string detail_status~%int32   good_id                          # the good id attached to the robot~%int32   order_id                         # the order id scheduled to this robot (-1: none)~%int32   order_status                     # the status of the assigned order~%~%# mode~%int32 MODE_NA = 0                   # undefined mode~%int32 MODE_IDLE = 1                 # robot is idle~%int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following~%int32 MODE_PICKUP = 3               # robot is picking up goods~%~%# status~%int32 STATUS_DRIVING = 0             # robot is driving~%int32 STATUS_STOPPED = 1            # robot has stopped~%int32 STATUS_DONE = 2               # robot has finished its last job~%int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task~%~%# good_id~%int32 GOOD_EMPTY = -1               # no goods attached~%int32 GOOD_NA = -2                  # undefined good~%~%# shape~%int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars~%int32 SHAPE_RECTANGLE = 1~%~%# order_status~%int32 ORDER_NONE = 0                # no order assigned~%int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order~%int32 ORDER_PICKUP = 2              # the robot picks up a good at the station~%int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another~%int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order~%~%bool auto_mode~%bool pause~%bool init_pose~%bool allow_estimate_pose~%string current_action_type~%string direction_move~%string state_move~%string mission_group~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: tuw_multi_robot_msgs/RoutePrecondition~%#################################################################~%## Route Preconditions are used to sync robots on a route~%## e.g.: Each robot publishes its current step of its route~%## with such a message~%## The specific segments of a route are marked with such~%## preconditions to block a robot from entering a segment~%## until the sync message of the other robot has the right~%## route_segment_nr~%#################################################################~%~%string robot_id                  # the robot name for the precondition~%int32 current_route_segment      # the segment nr of the route executed by the given robot~%uint32 current_segment_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_variables) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sync))
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'detail_status))
     4
     4
     4
     1
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'current_action_type))
     4 (cl:length (cl:slot-value msg 'direction_move))
     4 (cl:length (cl:slot-value msg 'state_move))
     4 (cl:length (cl:slot-value msg 'mission_group))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInfo
    (cl:cons ':header (header msg))
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':layout_map (layout_map msg))
    (cl:cons ':shape_variables (shape_variables msg))
    (cl:cons ':sync (sync msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':status (status msg))
    (cl:cons ':detail_status (detail_status msg))
    (cl:cons ':good_id (good_id msg))
    (cl:cons ':order_id (order_id msg))
    (cl:cons ':order_status (order_status msg))
    (cl:cons ':auto_mode (auto_mode msg))
    (cl:cons ':pause (pause msg))
    (cl:cons ':init_pose (init_pose msg))
    (cl:cons ':allow_estimate_pose (allow_estimate_pose msg))
    (cl:cons ':current_action_type (current_action_type msg))
    (cl:cons ':direction_move (direction_move msg))
    (cl:cons ':state_move (state_move msg))
    (cl:cons ':mission_group (mission_group msg))
))
