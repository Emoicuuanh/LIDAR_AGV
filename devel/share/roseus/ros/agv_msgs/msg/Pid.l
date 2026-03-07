;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::Pid)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'Pid (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::PID")
  (make-package "AGV_MSGS::PID"))

(in-package "ROS")
;;//! \htmlinclude Pid.msg.html


(defclass agv_msgs::Pid
  :super ros::object
  :slots (_stamp _kp _ki _kd _up _ui _ud _u_total _error _prev_error _real_error _real_prev_error _delta_error ))

(defmethod agv_msgs::Pid
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:kp __kp) 0.0)
    ((:ki __ki) 0.0)
    ((:kd __kd) 0.0)
    ((:up __up) 0.0)
    ((:ui __ui) 0.0)
    ((:ud __ud) 0.0)
    ((:u_total __u_total) 0.0)
    ((:error __error) 0.0)
    ((:prev_error __prev_error) 0.0)
    ((:real_error __real_error) 0.0)
    ((:real_prev_error __real_prev_error) 0.0)
    ((:delta_error __delta_error) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _kp (float __kp))
   (setq _ki (float __ki))
   (setq _kd (float __kd))
   (setq _up (float __up))
   (setq _ui (float __ui))
   (setq _ud (float __ud))
   (setq _u_total (float __u_total))
   (setq _error (float __error))
   (setq _prev_error (float __prev_error))
   (setq _real_error (float __real_error))
   (setq _real_prev_error (float __real_prev_error))
   (setq _delta_error (float __delta_error))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:up
   (&optional __up)
   (if __up (setq _up __up)) _up)
  (:ui
   (&optional __ui)
   (if __ui (setq _ui __ui)) _ui)
  (:ud
   (&optional __ud)
   (if __ud (setq _ud __ud)) _ud)
  (:u_total
   (&optional __u_total)
   (if __u_total (setq _u_total __u_total)) _u_total)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:prev_error
   (&optional __prev_error)
   (if __prev_error (setq _prev_error __prev_error)) _prev_error)
  (:real_error
   (&optional __real_error)
   (if __real_error (setq _real_error __real_error)) _real_error)
  (:real_prev_error
   (&optional __real_prev_error)
   (if __real_prev_error (setq _real_prev_error __real_prev_error)) _real_prev_error)
  (:delta_error
   (&optional __delta_error)
   (if __delta_error (setq _delta_error __delta_error)) _delta_error)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32 _kp
    4
    ;; float32 _ki
    4
    ;; float32 _kd
    4
    ;; float32 _up
    4
    ;; float32 _ui
    4
    ;; float32 _ud
    4
    ;; float32 _u_total
    4
    ;; float32 _error
    4
    ;; float32 _prev_error
    4
    ;; float32 _real_error
    4
    ;; float32 _real_prev_error
    4
    ;; float32 _delta_error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ki
       (sys::poke _ki (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _up
       (sys::poke _up (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ui
       (sys::poke _ui (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ud
       (sys::poke _ud (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _u_total
       (sys::poke _u_total (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _error
       (sys::poke _error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prev_error
       (sys::poke _prev_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _real_error
       (sys::poke _real_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _real_prev_error
       (sys::poke _real_prev_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _delta_error
       (sys::poke _delta_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _kp
     (setq _kp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ki
     (setq _ki (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _kd
     (setq _kd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _up
     (setq _up (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ui
     (setq _ui (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ud
     (setq _ud (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _u_total
     (setq _u_total (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _error
     (setq _error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prev_error
     (setq _prev_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _real_error
     (setq _real_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _real_prev_error
     (setq _real_prev_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _delta_error
     (setq _delta_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get agv_msgs::Pid :md5sum-) "6d7a75423894f0c2f93aead664ca1c0a")
(setf (get agv_msgs::Pid :datatype-) "agv_msgs/Pid")
(setf (get agv_msgs::Pid :definition-)
      "time stamp
float32 kp
float32 ki
float32 kd
float32 up
float32 ui
float32 ud
float32 u_total
float32 error
float32 prev_error
float32 real_error
float32 real_prev_error
float32 delta_error

")



(provide :agv_msgs/Pid "6d7a75423894f0c2f93aead664ca1c0a")


