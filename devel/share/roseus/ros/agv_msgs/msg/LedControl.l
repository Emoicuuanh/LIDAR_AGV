;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::LedControl)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'LedControl (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::LEDCONTROL")
  (make-package "AGV_MSGS::LEDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude LedControl.msg.html


(defclass agv_msgs::LedControl
  :super ros::object
  :slots (_stamp _type _duration _blink_interval _start_index _stop_index _r _g _b ))

(defmethod agv_msgs::LedControl
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:type __type) 0)
    ((:duration __duration) 0)
    ((:blink_interval __blink_interval) 0)
    ((:start_index __start_index) 0)
    ((:stop_index __stop_index) 0)
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _type (round __type))
   (setq _duration (round __duration))
   (setq _blink_interval (round __blink_interval))
   (setq _start_index (round __start_index))
   (setq _stop_index (round __stop_index))
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:blink_interval
   (&optional __blink_interval)
   (if __blink_interval (setq _blink_interval __blink_interval)) _blink_interval)
  (:start_index
   (&optional __start_index)
   (if __start_index (setq _start_index __start_index)) _start_index)
  (:stop_index
   (&optional __stop_index)
   (if __stop_index (setq _stop_index __stop_index)) _stop_index)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8 _type
    1
    ;; uint16 _duration
    2
    ;; uint16 _blink_interval
    2
    ;; uint8 _start_index
    1
    ;; uint8 _stop_index
    1
    ;; uint8 _r
    1
    ;; uint8 _g
    1
    ;; uint8 _b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8 _type
       (write-byte _type s)
     ;; uint16 _duration
       (write-word _duration s)
     ;; uint16 _blink_interval
       (write-word _blink_interval s)
     ;; uint8 _start_index
       (write-byte _start_index s)
     ;; uint8 _stop_index
       (write-byte _stop_index s)
     ;; uint8 _r
       (write-byte _r s)
     ;; uint8 _g
       (write-byte _g s)
     ;; uint8 _b
       (write-byte _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _duration
     (setq _duration (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blink_interval
     (setq _blink_interval (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _start_index
     (setq _start_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _stop_index
     (setq _stop_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _r
     (setq _r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _g
     (setq _g (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _b
     (setq _b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::LedControl :md5sum-) "785892508c5956b411606316386b78eb")
(setf (get agv_msgs::LedControl :datatype-) "agv_msgs/LedControl")
(setf (get agv_msgs::LedControl :definition-)
      "time stamp
uint8 type
uint16 duration
uint16 blink_interval
uint8 start_index
uint8 stop_index
uint8 r
uint8 g
uint8 b
")



(provide :agv_msgs/LedControl "785892508c5956b411606316386b78eb")


