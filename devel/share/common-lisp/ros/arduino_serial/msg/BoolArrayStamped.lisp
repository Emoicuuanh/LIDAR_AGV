; Auto-generated. Do not edit!


(cl:in-package arduino_serial-msg)


;//! \htmlinclude BoolArrayStamped.msg.html

(cl:defclass <BoolArrayStamped> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass BoolArrayStamped (<BoolArrayStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoolArrayStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoolArrayStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduino_serial-msg:<BoolArrayStamped> is deprecated: use arduino_serial-msg:BoolArrayStamped instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BoolArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_serial-msg:stamp-val is deprecated.  Use arduino_serial-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <BoolArrayStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduino_serial-msg:data-val is deprecated.  Use arduino_serial-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoolArrayStamped>) ostream)
  "Serializes a message object of type '<BoolArrayStamped>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoolArrayStamped>) istream)
  "Deserializes a message object of type '<BoolArrayStamped>"
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoolArrayStamped>)))
  "Returns string type for a message object of type '<BoolArrayStamped>"
  "arduino_serial/BoolArrayStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolArrayStamped)))
  "Returns string type for a message object of type 'BoolArrayStamped"
  "arduino_serial/BoolArrayStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoolArrayStamped>)))
  "Returns md5sum for a message object of type '<BoolArrayStamped>"
  "218aa9b00f224702a528e0059d162bb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoolArrayStamped)))
  "Returns md5sum for a message object of type 'BoolArrayStamped"
  "218aa9b00f224702a528e0059d162bb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoolArrayStamped>)))
  "Returns full string definition for message of type '<BoolArrayStamped>"
  (cl:format cl:nil "time stamp~%bool[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoolArrayStamped)))
  "Returns full string definition for message of type 'BoolArrayStamped"
  (cl:format cl:nil "time stamp~%bool[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoolArrayStamped>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoolArrayStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'BoolArrayStamped
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
