;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::DiffDriverMotorSpeed)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'DiffDriverMotorSpeed (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DIFFDRIVERMOTORSPEED")
  (make-package "AGV_MSGS::DIFFDRIVERMOTORSPEED"))

(in-package "ROS")
;;//! \htmlinclude DiffDriverMotorSpeed.msg.html


(defclass agv_msgs::DiffDriverMotorSpeed
  :super ros::object
  :slots (_Direction _BaseSpeed _Left _Right _Break ))

(defmethod agv_msgs::DiffDriverMotorSpeed
  (:init
   (&key
    ((:Direction __Direction) nil)
    ((:BaseSpeed __BaseSpeed) 0)
    ((:Left __Left) 0.0)
    ((:Right __Right) 0.0)
    ((:Break __Break) nil)
    )
   (send-super :init)
   (setq _Direction __Direction)
   (setq _BaseSpeed (round __BaseSpeed))
   (setq _Left (float __Left))
   (setq _Right (float __Right))
   (setq _Break __Break)
   self)
  (:Direction
   (&optional (__Direction :null))
   (if (not (eq __Direction :null)) (setq _Direction __Direction)) _Direction)
  (:BaseSpeed
   (&optional __BaseSpeed)
   (if __BaseSpeed (setq _BaseSpeed __BaseSpeed)) _BaseSpeed)
  (:Left
   (&optional __Left)
   (if __Left (setq _Left __Left)) _Left)
  (:Right
   (&optional __Right)
   (if __Right (setq _Right __Right)) _Right)
  (:Break
   (&optional (__Break :null))
   (if (not (eq __Break :null)) (setq _Break __Break)) _Break)
  (:serialization-length
   ()
   (+
    ;; bool _Direction
    1
    ;; int16 _BaseSpeed
    2
    ;; float32 _Left
    4
    ;; float32 _Right
    4
    ;; bool _Break
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _Direction
       (if _Direction (write-byte -1 s) (write-byte 0 s))
     ;; int16 _BaseSpeed
       (write-word _BaseSpeed s)
     ;; float32 _Left
       (sys::poke _Left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Right
       (sys::poke _Right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _Break
       (if _Break (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _Direction
     (setq _Direction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _BaseSpeed
     (setq _BaseSpeed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _Left
     (setq _Left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Right
     (setq _Right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _Break
     (setq _Break (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::DiffDriverMotorSpeed :md5sum-) "cd5fbb3f71154e3a8fc658dbedadf9d6")
(setf (get agv_msgs::DiffDriverMotorSpeed :datatype-) "agv_msgs/DiffDriverMotorSpeed")
(setf (get agv_msgs::DiffDriverMotorSpeed :definition-)
      "bool Direction # Forward = 0, Backward = 1
int16 BaseSpeed # 0 -> 255
float32 Left # 0 -> 100
float32 Right # 0 -> 100
bool Break
")



(provide :agv_msgs/DiffDriverMotorSpeed "cd5fbb3f71154e3a8fc658dbedadf9d6")


