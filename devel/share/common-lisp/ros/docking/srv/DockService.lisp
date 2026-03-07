; Auto-generated. Do not edit!


(cl:in-package docking-srv)


;//! \htmlinclude DockService-request.msg.html

(cl:defclass <DockService-request> (roslisp-msg-protocol:ros-message)
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
    :initform cl:nil))
)

(cl:defclass DockService-request (<DockService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name docking-srv:<DockService-request> is deprecated: use docking-srv:DockService-request instead.")))

(cl:ensure-generic-function 'pose_target-val :lambda-list '(m))
(cl:defmethod pose_target-val ((m <DockService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader docking-srv:pose_target-val is deprecated.  Use docking-srv:pose_target instead.")
  (pose_target m))

(cl:ensure-generic-function 'enable_detect-val :lambda-list '(m))
(cl:defmethod enable_detect-val ((m <DockService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader docking-srv:enable_detect-val is deprecated.  Use docking-srv:enable_detect instead.")
  (enable_detect m))

(cl:ensure-generic-function 'use_scan_merge-val :lambda-list '(m))
(cl:defmethod use_scan_merge-val ((m <DockService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader docking-srv:use_scan_merge-val is deprecated.  Use docking-srv:use_scan_merge instead.")
  (use_scan_merge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockService-request>) ostream)
  "Serializes a message object of type '<DockService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_target) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_detect) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_scan_merge) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockService-request>) istream)
  "Deserializes a message object of type '<DockService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_target) istream)
    (cl:setf (cl:slot-value msg 'enable_detect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'use_scan_merge) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockService-request>)))
  "Returns string type for a service object of type '<DockService-request>"
  "docking/DockServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockService-request)))
  "Returns string type for a service object of type 'DockService-request"
  "docking/DockServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockService-request>)))
  "Returns md5sum for a message object of type '<DockService-request>"
  "61a574ebc6ea32888de3ea49d447d92c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockService-request)))
  "Returns md5sum for a message object of type 'DockService-request"
  "61a574ebc6ea32888de3ea49d447d92c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockService-request>)))
  "Returns full string definition for message of type '<DockService-request>"
  (cl:format cl:nil "geometry_msgs/Pose pose_target~%bool enable_detect~%bool use_scan_merge~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockService-request)))
  "Returns full string definition for message of type 'DockService-request"
  (cl:format cl:nil "geometry_msgs/Pose pose_target~%bool enable_detect~%bool use_scan_merge~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_target))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DockService-request
    (cl:cons ':pose_target (pose_target msg))
    (cl:cons ':enable_detect (enable_detect msg))
    (cl:cons ':use_scan_merge (use_scan_merge msg))
))
;//! \htmlinclude DockService-response.msg.html

(cl:defclass <DockService-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DockService-response (<DockService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name docking-srv:<DockService-response> is deprecated: use docking-srv:DockService-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DockService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader docking-srv:success-val is deprecated.  Use docking-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockService-response>) ostream)
  "Serializes a message object of type '<DockService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockService-response>) istream)
  "Deserializes a message object of type '<DockService-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockService-response>)))
  "Returns string type for a service object of type '<DockService-response>"
  "docking/DockServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockService-response)))
  "Returns string type for a service object of type 'DockService-response"
  "docking/DockServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockService-response>)))
  "Returns md5sum for a message object of type '<DockService-response>"
  "61a574ebc6ea32888de3ea49d447d92c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockService-response)))
  "Returns md5sum for a message object of type 'DockService-response"
  "61a574ebc6ea32888de3ea49d447d92c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockService-response>)))
  "Returns full string definition for message of type '<DockService-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockService-response)))
  "Returns full string definition for message of type 'DockService-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DockService-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DockService)))
  'DockService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DockService)))
  'DockService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockService)))
  "Returns string type for a service object of type '<DockService>"
  "docking/DockService")