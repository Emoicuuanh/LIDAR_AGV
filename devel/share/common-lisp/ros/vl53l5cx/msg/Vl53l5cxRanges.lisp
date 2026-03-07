; Auto-generated. Do not edit!


(cl:in-package vl53l5cx-msg)


;//! \htmlinclude Vl53l5cxRanges.msg.html

(cl:defclass <Vl53l5cxRanges> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Vl53l5cxRanges (<Vl53l5cxRanges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vl53l5cxRanges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vl53l5cxRanges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vl53l5cx-msg:<Vl53l5cxRanges> is deprecated: use vl53l5cx-msg:Vl53l5cxRanges instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <Vl53l5cxRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:stamp-val is deprecated.  Use vl53l5cx-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <Vl53l5cxRanges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vl53l5cx-msg:range-val is deprecated.  Use vl53l5cx-msg:range instead.")
  (range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vl53l5cxRanges>) ostream)
  "Serializes a message object of type '<Vl53l5cxRanges>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'range))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vl53l5cxRanges>) istream)
  "Deserializes a message object of type '<Vl53l5cxRanges>"
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
  (cl:setf (cl:slot-value msg 'range) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'range)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vl53l5cxRanges>)))
  "Returns string type for a message object of type '<Vl53l5cxRanges>"
  "vl53l5cx/Vl53l5cxRanges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vl53l5cxRanges)))
  "Returns string type for a message object of type 'Vl53l5cxRanges"
  "vl53l5cx/Vl53l5cxRanges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vl53l5cxRanges>)))
  "Returns md5sum for a message object of type '<Vl53l5cxRanges>"
  "c8d8eedd3a63d1b4efcc45ecd045053d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vl53l5cxRanges)))
  "Returns md5sum for a message object of type 'Vl53l5cxRanges"
  "c8d8eedd3a63d1b4efcc45ecd045053d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vl53l5cxRanges>)))
  "Returns full string definition for message of type '<Vl53l5cxRanges>"
  (cl:format cl:nil "time stamp~%float32[] range~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vl53l5cxRanges)))
  "Returns full string definition for message of type 'Vl53l5cxRanges"
  (cl:format cl:nil "time stamp~%float32[] range~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vl53l5cxRanges>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vl53l5cxRanges>))
  "Converts a ROS message object to a list"
  (cl:list 'Vl53l5cxRanges
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':range (range msg))
))
