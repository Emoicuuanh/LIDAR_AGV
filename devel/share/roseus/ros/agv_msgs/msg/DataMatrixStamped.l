;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::DataMatrixStamped)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'DataMatrixStamped (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DATAMATRIXSTAMPED")
  (make-package "AGV_MSGS::DATAMATRIXSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude DataMatrixStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::DataMatrixStamped
  :super ros::object
  :slots (_header _lable _absolute _possition ))

(defmethod agv_msgs::DataMatrixStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lable __lable) (instance agv_msgs::CartesianPosition :init))
    ((:absolute __absolute) (instance agv_msgs::CartesianPosition :init))
    ((:possition __possition) (instance agv_msgs::CartesianCoordinate :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lable __lable)
   (setq _absolute __absolute)
   (setq _possition __possition)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lable
   (&rest __lable)
   (if (keywordp (car __lable))
       (send* _lable __lable)
     (progn
       (if __lable (setq _lable (car __lable)))
       _lable)))
  (:absolute
   (&rest __absolute)
   (if (keywordp (car __absolute))
       (send* _absolute __absolute)
     (progn
       (if __absolute (setq _absolute (car __absolute)))
       _absolute)))
  (:possition
   (&rest __possition)
   (if (keywordp (car __possition))
       (send* _possition __possition)
     (progn
       (if __possition (setq _possition (car __possition)))
       _possition)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; agv_msgs/CartesianPosition _lable
    (send _lable :serialization-length)
    ;; agv_msgs/CartesianPosition _absolute
    (send _absolute :serialization-length)
    ;; agv_msgs/CartesianCoordinate _possition
    (send _possition :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; agv_msgs/CartesianPosition _lable
       (send _lable :serialize s)
     ;; agv_msgs/CartesianPosition _absolute
       (send _absolute :serialize s)
     ;; agv_msgs/CartesianCoordinate _possition
       (send _possition :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; agv_msgs/CartesianPosition _lable
     (send _lable :deserialize buf ptr-) (incf ptr- (send _lable :serialization-length))
   ;; agv_msgs/CartesianPosition _absolute
     (send _absolute :deserialize buf ptr-) (incf ptr- (send _absolute :serialization-length))
   ;; agv_msgs/CartesianCoordinate _possition
     (send _possition :deserialize buf ptr-) (incf ptr- (send _possition :serialization-length))
   ;;
   self)
  )

(setf (get agv_msgs::DataMatrixStamped :md5sum-) "875dba3a16cc734d0c14bd7f0a092201")
(setf (get agv_msgs::DataMatrixStamped :datatype-) "agv_msgs/DataMatrixStamped")
(setf (get agv_msgs::DataMatrixStamped :definition-)
      "Header header
CartesianPosition lable
CartesianPosition absolute
CartesianCoordinate possition
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: agv_msgs/CartesianPosition
int32 x
int32 y
================================================================================
MSG: agv_msgs/CartesianCoordinate
int32 x
int32 y
float64 angle
")



(provide :agv_msgs/DataMatrixStamped "875dba3a16cc734d0c14bd7f0a092201")


