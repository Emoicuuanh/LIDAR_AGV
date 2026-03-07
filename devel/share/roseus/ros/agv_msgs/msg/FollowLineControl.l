;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::FollowLineControl)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'FollowLineControl (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::FOLLOWLINECONTROL")
  (make-package "AGV_MSGS::FOLLOWLINECONTROL"))

(in-package "ROS")
;;//! \htmlinclude FollowLineControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::FollowLineControl
  :super ros::object
  :slots (_header _RunType _TurnType _RotateType _Speed _Direction _SmootherStopSpeed ))

(defmethod agv_msgs::FollowLineControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:RunType __RunType) 0)
    ((:TurnType __TurnType) 0)
    ((:RotateType __RotateType) 0)
    ((:Speed __Speed) 0.0)
    ((:Direction __Direction) 0)
    ((:SmootherStopSpeed __SmootherStopSpeed) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _RunType (round __RunType))
   (setq _TurnType (round __TurnType))
   (setq _RotateType (round __RotateType))
   (setq _Speed (float __Speed))
   (setq _Direction (round __Direction))
   (setq _SmootherStopSpeed (round __SmootherStopSpeed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:RunType
   (&optional __RunType)
   (if __RunType (setq _RunType __RunType)) _RunType)
  (:TurnType
   (&optional __TurnType)
   (if __TurnType (setq _TurnType __TurnType)) _TurnType)
  (:RotateType
   (&optional __RotateType)
   (if __RotateType (setq _RotateType __RotateType)) _RotateType)
  (:Speed
   (&optional __Speed)
   (if __Speed (setq _Speed __Speed)) _Speed)
  (:Direction
   (&optional __Direction)
   (if __Direction (setq _Direction __Direction)) _Direction)
  (:SmootherStopSpeed
   (&optional __SmootherStopSpeed)
   (if __SmootherStopSpeed (setq _SmootherStopSpeed __SmootherStopSpeed)) _SmootherStopSpeed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _RunType
    1
    ;; int8 _TurnType
    1
    ;; int8 _RotateType
    1
    ;; float32 _Speed
    4
    ;; int8 _Direction
    1
    ;; int8 _SmootherStopSpeed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _RunType
       (write-byte _RunType s)
     ;; int8 _TurnType
       (write-byte _TurnType s)
     ;; int8 _RotateType
       (write-byte _RotateType s)
     ;; float32 _Speed
       (sys::poke _Speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _Direction
       (write-byte _Direction s)
     ;; int8 _SmootherStopSpeed
       (write-byte _SmootherStopSpeed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _RunType
     (setq _RunType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RunType 127) (setq _RunType (- _RunType 256)))
   ;; int8 _TurnType
     (setq _TurnType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _TurnType 127) (setq _TurnType (- _TurnType 256)))
   ;; int8 _RotateType
     (setq _RotateType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RotateType 127) (setq _RotateType (- _RotateType 256)))
   ;; float32 _Speed
     (setq _Speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _Direction
     (setq _Direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Direction 127) (setq _Direction (- _Direction 256)))
   ;; int8 _SmootherStopSpeed
     (setq _SmootherStopSpeed (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _SmootherStopSpeed 127) (setq _SmootherStopSpeed (- _SmootherStopSpeed 256)))
   ;;
   self)
  )

(setf (get agv_msgs::FollowLineControl :md5sum-) "50ae4d462d3b60eb3a76ed656bf6246a")
(setf (get agv_msgs::FollowLineControl :datatype-) "agv_msgs/FollowLineControl")
(setf (get agv_msgs::FollowLineControl :definition-)
      "std_msgs/Header header
int8 RunType
int8 TurnType
int8 RotateType
float32 Speed
int8 Direction
int8 SmootherStopSpeed
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



(provide :agv_msgs/FollowLineControl "50ae4d462d3b60eb3a76ed656bf6246a")


