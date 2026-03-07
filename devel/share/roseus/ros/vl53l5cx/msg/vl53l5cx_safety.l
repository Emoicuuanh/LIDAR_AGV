;; Auto-generated. Do not edit!


(when (boundp 'vl53l5cx::vl53l5cx_safety)
  (if (not (find-package "VL53L5CX"))
    (make-package "VL53L5CX"))
  (shadow 'vl53l5cx_safety (find-package "VL53L5CX")))
(unless (find-package "VL53L5CX::VL53L5CX_SAFETY")
  (make-package "VL53L5CX::VL53L5CX_SAFETY"))

(in-package "ROS")
;;//! \htmlinclude vl53l5cx_safety.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vl53l5cx::vl53l5cx_safety
  :super ros::object
  :slots (_header _status_left _status_right ))

(defmethod vl53l5cx::vl53l5cx_safety
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status_left __status_left) 0)
    ((:status_right __status_right) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status_left (round __status_left))
   (setq _status_right (round __status_right))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status_left
   (&optional __status_left)
   (if __status_left (setq _status_left __status_left)) _status_left)
  (:status_right
   (&optional __status_right)
   (if __status_right (setq _status_right __status_right)) _status_right)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _status_left
    4
    ;; int32 _status_right
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _status_left
       (write-long _status_left s)
     ;; int32 _status_right
       (write-long _status_right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _status_left
     (setq _status_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status_right
     (setq _status_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vl53l5cx::vl53l5cx_safety :md5sum-) "5b53fa10636d0f6cce0051b430e70c58")
(setf (get vl53l5cx::vl53l5cx_safety :datatype-) "vl53l5cx/vl53l5cx_safety")
(setf (get vl53l5cx::vl53l5cx_safety :definition-)
      "Header header
int32 status_left 
int32 status_right  
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

")



(provide :vl53l5cx/vl53l5cx_safety "5b53fa10636d0f6cce0051b430e70c58")


