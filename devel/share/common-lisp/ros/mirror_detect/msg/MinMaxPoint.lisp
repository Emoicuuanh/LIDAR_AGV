; Auto-generated. Do not edit!


(cl:in-package mirror_detect-msg)


;//! \htmlinclude MinMaxPoint.msg.html

(cl:defclass <MinMaxPoint> (roslisp-msg-protocol:ros-message)
  ((min
    :reader min
    :initarg :min
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (max
    :reader max
    :initarg :max
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass MinMaxPoint (<MinMaxPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MinMaxPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MinMaxPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mirror_detect-msg:<MinMaxPoint> is deprecated: use mirror_detect-msg:MinMaxPoint instead.")))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <MinMaxPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:min-val is deprecated.  Use mirror_detect-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <MinMaxPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:max-val is deprecated.  Use mirror_detect-msg:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MinMaxPoint>) ostream)
  "Serializes a message object of type '<MinMaxPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MinMaxPoint>) istream)
  "Deserializes a message object of type '<MinMaxPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MinMaxPoint>)))
  "Returns string type for a message object of type '<MinMaxPoint>"
  "mirror_detect/MinMaxPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MinMaxPoint)))
  "Returns string type for a message object of type 'MinMaxPoint"
  "mirror_detect/MinMaxPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MinMaxPoint>)))
  "Returns md5sum for a message object of type '<MinMaxPoint>"
  "93aa3d73b866f04880927745f4aab303")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MinMaxPoint)))
  "Returns md5sum for a message object of type 'MinMaxPoint"
  "93aa3d73b866f04880927745f4aab303")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MinMaxPoint>)))
  "Returns full string definition for message of type '<MinMaxPoint>"
  (cl:format cl:nil "geometry_msgs/Point min~%geometry_msgs/Point max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MinMaxPoint)))
  "Returns full string definition for message of type 'MinMaxPoint"
  (cl:format cl:nil "geometry_msgs/Point min~%geometry_msgs/Point max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MinMaxPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MinMaxPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MinMaxPoint
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
