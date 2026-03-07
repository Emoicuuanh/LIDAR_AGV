;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::HmiControl)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'HmiControl (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::HMICONTROL")
  (make-package "AGV_MSGS::HMICONTROL"))

(in-package "ROS")
;;//! \htmlinclude HmiControl.msg.html


(defclass agv_msgs::HmiControl
  :super ros::object
  :slots (_stamp _ChangeDirection _RunType _TurnType _RotateType _MaxSpeedSet _MinSpeedSet _Sound ))

(defmethod agv_msgs::HmiControl
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:ChangeDirection __ChangeDirection) nil)
    ((:RunType __RunType) 0)
    ((:TurnType __TurnType) 0)
    ((:RotateType __RotateType) 0)
    ((:MaxSpeedSet __MaxSpeedSet) 0.0)
    ((:MinSpeedSet __MinSpeedSet) 0.0)
    ((:Sound __Sound) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _ChangeDirection __ChangeDirection)
   (setq _RunType (round __RunType))
   (setq _TurnType (round __TurnType))
   (setq _RotateType (round __RotateType))
   (setq _MaxSpeedSet (float __MaxSpeedSet))
   (setq _MinSpeedSet (float __MinSpeedSet))
   (setq _Sound (round __Sound))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:ChangeDirection
   (&optional (__ChangeDirection :null))
   (if (not (eq __ChangeDirection :null)) (setq _ChangeDirection __ChangeDirection)) _ChangeDirection)
  (:RunType
   (&optional __RunType)
   (if __RunType (setq _RunType __RunType)) _RunType)
  (:TurnType
   (&optional __TurnType)
   (if __TurnType (setq _TurnType __TurnType)) _TurnType)
  (:RotateType
   (&optional __RotateType)
   (if __RotateType (setq _RotateType __RotateType)) _RotateType)
  (:MaxSpeedSet
   (&optional __MaxSpeedSet)
   (if __MaxSpeedSet (setq _MaxSpeedSet __MaxSpeedSet)) _MaxSpeedSet)
  (:MinSpeedSet
   (&optional __MinSpeedSet)
   (if __MinSpeedSet (setq _MinSpeedSet __MinSpeedSet)) _MinSpeedSet)
  (:Sound
   (&optional __Sound)
   (if __Sound (setq _Sound __Sound)) _Sound)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _ChangeDirection
    1
    ;; int8 _RunType
    1
    ;; int8 _TurnType
    1
    ;; int8 _RotateType
    1
    ;; float32 _MaxSpeedSet
    4
    ;; float32 _MinSpeedSet
    4
    ;; int8 _Sound
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _ChangeDirection
       (if _ChangeDirection (write-byte -1 s) (write-byte 0 s))
     ;; int8 _RunType
       (write-byte _RunType s)
     ;; int8 _TurnType
       (write-byte _TurnType s)
     ;; int8 _RotateType
       (write-byte _RotateType s)
     ;; float32 _MaxSpeedSet
       (sys::poke _MaxSpeedSet (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _MinSpeedSet
       (sys::poke _MinSpeedSet (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _Sound
       (write-byte _Sound s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _ChangeDirection
     (setq _ChangeDirection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _RunType
     (setq _RunType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RunType 127) (setq _RunType (- _RunType 256)))
   ;; int8 _TurnType
     (setq _TurnType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _TurnType 127) (setq _TurnType (- _TurnType 256)))
   ;; int8 _RotateType
     (setq _RotateType (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _RotateType 127) (setq _RotateType (- _RotateType 256)))
   ;; float32 _MaxSpeedSet
     (setq _MaxSpeedSet (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _MinSpeedSet
     (setq _MinSpeedSet (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _Sound
     (setq _Sound (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Sound 127) (setq _Sound (- _Sound 256)))
   ;;
   self)
  )

(setf (get agv_msgs::HmiControl :md5sum-) "0a758689cc2994c3e06241914d97ca23")
(setf (get agv_msgs::HmiControl :datatype-) "agv_msgs/HmiControl")
(setf (get agv_msgs::HmiControl :definition-)
      "time stamp
bool ChangeDirection
int8 RunType
int8 TurnType
int8 RotateType
float32 MaxSpeedSet
float32 MinSpeedSet
int8 Sound
")



(provide :agv_msgs/HmiControl "0a758689cc2994c3e06241914d97ca23")


