; Auto-generated. Do not edit!


(cl:in-package mirror_detect-srv)


;//! \htmlinclude HubService-request.msg.html

(cl:defclass <HubService-request> (roslisp-msg-protocol:ros-message)
  ((pose_target
    :reader pose_target
    :initarg :pose_target
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (enable_detect
    :reader enable_detect
    :initarg :enable_detect
    :type cl:boolean
    :initform cl:nil)
   (use_scan_merge
    :reader use_scan_merge
    :initarg :use_scan_merge
    :type cl:boolean
    :initform cl:nil)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass HubService-request (<HubService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HubService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HubService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mirror_detect-srv:<HubService-request> is deprecated: use mirror_detect-srv:HubService-request instead.")))

(cl:ensure-generic-function 'pose_target-val :lambda-list '(m))
(cl:defmethod pose_target-val ((m <HubService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-srv:pose_target-val is deprecated.  Use mirror_detect-srv:pose_target instead.")
  (pose_target m))

(cl:ensure-generic-function 'enable_detect-val :lambda-list '(m))
(cl:defmethod enable_detect-val ((m <HubService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-srv:enable_detect-val is deprecated.  Use mirror_detect-srv:enable_detect instead.")
  (enable_detect m))

(cl:ensure-generic-function 'use_scan_merge-val :lambda-list '(m))
(cl:defmethod use_scan_merge-val ((m <HubService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-srv:use_scan_merge-val is deprecated.  Use mirror_detect-srv:use_scan_merge instead.")
  (use_scan_merge m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <HubService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-srv:length-val is deprecated.  Use mirror_detect-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HubService-request>) ostream)
  "Serializes a message object of type '<HubService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_target) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_detect) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_scan_merge) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HubService-request>) istream)
  "Deserializes a message object of type '<HubService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_target) istream)
    (cl:setf (cl:slot-value msg 'enable_detect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_scan_merge) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HubService-request>)))
  "Returns string type for a service object of type '<HubService-request>"
  "mirror_detect/HubServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HubService-request)))
  "Returns string type for a service object of type 'HubService-request"
  "mirror_detect/HubServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HubService-request>)))
  "Returns md5sum for a message object of type '<HubService-request>"
  "af013932b4bc2657d1c28aa1d3ac1eb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HubService-request)))
  "Returns md5sum for a message object of type 'HubService-request"
  "af013932b4bc2657d1c28aa1d3ac1eb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HubService-request>)))
  "Returns full string definition for message of type '<HubService-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose_target~%bool enable_detect~%bool use_scan_merge~%float32 length~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HubService-request)))
  "Returns full string definition for message of type 'HubService-request"
  (cl:format cl:nil "geometry_msgs/Pose pose_target~%bool enable_detect~%bool use_scan_merge~%float32 length~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HubService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_target))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HubService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HubService-request
    (cl:cons ':pose_target (pose_target msg))
    (cl:cons ':enable_detect (enable_detect msg))
    (cl:cons ':use_scan_merge (use_scan_merge msg))
    (cl:cons ':length (length msg))
))
;//! \htmlinclude HubService-response.msg.html

(cl:defclass <HubService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HubService-response (<HubService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HubService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HubService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mirror_detect-srv:<HubService-response> is deprecated: use mirror_detect-srv:HubService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <HubService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-srv:success-val is deprecated.  Use mirror_detect-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HubService-response>) ostream)
  "Serializes a message object of type '<HubService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HubService-response>) istream)
  "Deserializes a message object of type '<HubService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HubService-response>)))
  "Returns string type for a service object of type '<HubService-response>"
  "mirror_detect/HubServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HubService-response)))
  "Returns string type for a service object of type 'HubService-response"
  "mirror_detect/HubServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HubService-response>)))
  "Returns md5sum for a message object of type '<HubService-response>"
  "af013932b4bc2657d1c28aa1d3ac1eb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HubService-response)))
  "Returns md5sum for a message object of type 'HubService-response"
  "af013932b4bc2657d1c28aa1d3ac1eb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HubService-response>)))
  "Returns full string definition for message of type '<HubService-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HubService-response)))
  "Returns full string definition for message of type 'HubService-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HubService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HubService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HubService-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HubService)))
  'HubService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HubService)))
  'HubService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HubService)))
  "Returns string type for a service object of type '<HubService>"
  "mirror_detect/HubService")