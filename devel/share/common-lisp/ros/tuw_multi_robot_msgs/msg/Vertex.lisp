; Auto-generated. Do not edit!


(cl:in-package tuw_multi_robot_msgs-msg)


;//! \htmlinclude Vertex.msg.html

(cl:defclass <Vertex> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (path
    :reader path
    :initarg :path
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (weight
    :reader weight
    :initarg :weight
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (successors
    :reader successors
    :initarg :successors
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (predecessors
    :reader predecessors
    :initarg :predecessors
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (layout
    :reader layout
    :initarg :layout
    :type cl:integer
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (special_pose
    :reader special_pose
    :initarg :special_pose
    :type cl:boolean
    :initform cl:nil)
   (start_properties
    :reader start_properties
    :initarg :start_properties
    :type cl:string
    :initform "")
   (end_properties
    :reader end_properties
    :initarg :end_properties
    :type cl:string
    :initform "")
   (traffic_rule
    :reader traffic_rule
    :initarg :traffic_rule
    :type cl:string
    :initform ""))
)

(cl:defclass Vertex (<Vertex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vertex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vertex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tuw_multi_robot_msgs-msg:<Vertex> is deprecated: use tuw_multi_robot_msgs-msg:Vertex instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:id-val is deprecated.  Use tuw_multi_robot_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:valid-val is deprecated.  Use tuw_multi_robot_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:path-val is deprecated.  Use tuw_multi_robot_msgs-msg:path instead.")
  (path m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:weight-val is deprecated.  Use tuw_multi_robot_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:width-val is deprecated.  Use tuw_multi_robot_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'successors-val :lambda-list '(m))
(cl:defmethod successors-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:successors-val is deprecated.  Use tuw_multi_robot_msgs-msg:successors instead.")
  (successors m))

(cl:ensure-generic-function 'predecessors-val :lambda-list '(m))
(cl:defmethod predecessors-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:predecessors-val is deprecated.  Use tuw_multi_robot_msgs-msg:predecessors instead.")
  (predecessors m))

(cl:ensure-generic-function 'layout-val :lambda-list '(m))
(cl:defmethod layout-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:layout-val is deprecated.  Use tuw_multi_robot_msgs-msg:layout instead.")
  (layout m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:direction-val is deprecated.  Use tuw_multi_robot_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'special_pose-val :lambda-list '(m))
(cl:defmethod special_pose-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:special_pose-val is deprecated.  Use tuw_multi_robot_msgs-msg:special_pose instead.")
  (special_pose m))

(cl:ensure-generic-function 'start_properties-val :lambda-list '(m))
(cl:defmethod start_properties-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:start_properties-val is deprecated.  Use tuw_multi_robot_msgs-msg:start_properties instead.")
  (start_properties m))

(cl:ensure-generic-function 'end_properties-val :lambda-list '(m))
(cl:defmethod end_properties-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:end_properties-val is deprecated.  Use tuw_multi_robot_msgs-msg:end_properties instead.")
  (end_properties m))

(cl:ensure-generic-function 'traffic_rule-val :lambda-list '(m))
(cl:defmethod traffic_rule-val ((m <Vertex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tuw_multi_robot_msgs-msg:traffic_rule-val is deprecated.  Use tuw_multi_robot_msgs-msg:traffic_rule instead.")
  (traffic_rule m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vertex>) ostream)
  "Serializes a message object of type '<Vertex>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'weight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'weight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'weight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'weight)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'successors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'successors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predecessors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'predecessors))
  (cl:let* ((signed (cl:slot-value msg 'layout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'direction))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'special_pose) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_properties))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_properties))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'traffic_rule))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'traffic_rule))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vertex>) istream)
  "Deserializes a message object of type '<Vertex>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'weight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'weight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'weight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'weight)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'successors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'successors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predecessors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predecessors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'layout) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'direction) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'direction)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:slot-value msg 'special_pose) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_properties) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_properties) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_properties) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_properties) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'traffic_rule) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'traffic_rule) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vertex>)))
  "Returns string type for a message object of type '<Vertex>"
  "tuw_multi_robot_msgs/Vertex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vertex)))
  "Returns string type for a message object of type 'Vertex"
  "tuw_multi_robot_msgs/Vertex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vertex>)))
  "Returns md5sum for a message object of type '<Vertex>"
  "cecf62a42e6d3f44ea93c3166ac94134")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vertex)))
  "Returns md5sum for a message object of type 'Vertex"
  "cecf62a42e6d3f44ea93c3166ac94134")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vertex>)))
  "Returns full string definition for message of type '<Vertex>"
  (cl:format cl:nil "#################################################################~%## A single vertex in a graph~%## Each vertex of the same graph must have a unique id.~%## Successors and Predecessors must have a common start or end~%## point~%#################################################################~%uint32 id                   # Vertex id~%bool valid                  # true if it can be used for planning~%geometry_msgs/Point[] path  # points describing a path from the vertex start to the vertex endpoint~%                            #    the first point in the array reprecents the start and the last the endpoint~%                            #    this points can also be used by the vehciles local path following algorithm~%uint32 weight               # the weight of the vertex (e.g. length of the segment)~%float32 width               # fee space next to the vertex~%uint32[] successors         # edges to successors~%uint32[] predecessors       # edges to predecessor~%int32 layout~%string[] direction~%bool special_pose~%string start_properties~%string end_properties~%string traffic_rule~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vertex)))
  "Returns full string definition for message of type 'Vertex"
  (cl:format cl:nil "#################################################################~%## A single vertex in a graph~%## Each vertex of the same graph must have a unique id.~%## Successors and Predecessors must have a common start or end~%## point~%#################################################################~%uint32 id                   # Vertex id~%bool valid                  # true if it can be used for planning~%geometry_msgs/Point[] path  # points describing a path from the vertex start to the vertex endpoint~%                            #    the first point in the array reprecents the start and the last the endpoint~%                            #    this points can also be used by the vehciles local path following algorithm~%uint32 weight               # the weight of the vertex (e.g. length of the segment)~%float32 width               # fee space next to the vertex~%uint32[] successors         # edges to successors~%uint32[] predecessors       # edges to predecessor~%int32 layout~%string[] direction~%bool special_pose~%string start_properties~%string end_properties~%string traffic_rule~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vertex>))
  (cl:+ 0
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'successors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predecessors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'direction) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     1
     4 (cl:length (cl:slot-value msg 'start_properties))
     4 (cl:length (cl:slot-value msg 'end_properties))
     4 (cl:length (cl:slot-value msg 'traffic_rule))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vertex>))
  "Converts a ROS message object to a list"
  (cl:list 'Vertex
    (cl:cons ':id (id msg))
    (cl:cons ':valid (valid msg))
    (cl:cons ':path (path msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':width (width msg))
    (cl:cons ':successors (successors msg))
    (cl:cons ':predecessors (predecessors msg))
    (cl:cons ':layout (layout msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':special_pose (special_pose msg))
    (cl:cons ':start_properties (start_properties msg))
    (cl:cons ':end_properties (end_properties msg))
    (cl:cons ':traffic_rule (traffic_rule msg))
))
