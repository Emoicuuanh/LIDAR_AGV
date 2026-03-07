;; Auto-generated. Do not edit!


(when (boundp 'vl53l5cx::ultra_vl53l5_safety)
  (if (not (find-package "VL53L5CX"))
    (make-package "VL53L5CX"))
  (shadow 'ultra_vl53l5_safety (find-package "VL53L5CX")))
(unless (find-package "VL53L5CX::ULTRA_VL53L5_SAFETY")
  (make-package "VL53L5CX::ULTRA_VL53L5_SAFETY"))

(in-package "ROS")
;;//! \htmlinclude ultra_vl53l5_safety.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vl53l5cx::ultra_vl53l5_safety
  :super ros::object
  :slots (_header _seq _stamp _frame_id _ultra_safety _vl53l5_safety ))

(defmethod vl53l5cx::ultra_vl53l5_safety
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:frame_id __frame_id) "")
    ((:ultra_safety __ultra_safety) nil)
    ((:vl53l5_safety __vl53l5_safety) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _frame_id (string __frame_id))
   (setq _ultra_safety __ultra_safety)
   (setq _vl53l5_safety __vl53l5_safety)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:ultra_safety
   (&optional (__ultra_safety :null))
   (if (not (eq __ultra_safety :null)) (setq _ultra_safety __ultra_safety)) _ultra_safety)
  (:vl53l5_safety
   (&optional (__vl53l5_safety :null))
   (if (not (eq __vl53l5_safety :null)) (setq _vl53l5_safety __vl53l5_safety)) _vl53l5_safety)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; string _frame_id
    4 (length _frame_id)
    ;; bool _ultra_safety
    1
    ;; bool _vl53l5_safety
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _seq
       (write-long _seq s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
     ;; bool _ultra_safety
       (if _ultra_safety (write-byte -1 s) (write-byte 0 s))
     ;; bool _vl53l5_safety
       (if _vl53l5_safety (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _ultra_safety
     (setq _ultra_safety (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vl53l5_safety
     (setq _vl53l5_safety (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get vl53l5cx::ultra_vl53l5_safety :md5sum-) "a7fc4490b7c400bae28e28613a322407")
(setf (get vl53l5cx::ultra_vl53l5_safety :datatype-) "vl53l5cx/ultra_vl53l5_safety")
(setf (get vl53l5cx::ultra_vl53l5_safety :definition-)
      "std_msgs/Header header
  uint32 seq
  time stamp
  string frame_id
bool ultra_safety 
bool vl53l5_safety 
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



(provide :vl53l5cx/ultra_vl53l5_safety "a7fc4490b7c400bae28e28613a322407")


