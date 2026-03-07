;; Auto-generated. Do not edit!


(when (boundp 'arduino_serial::LiftStatus)
  (if (not (find-package "ARDUINO_SERIAL"))
    (make-package "ARDUINO_SERIAL"))
  (shadow 'LiftStatus (find-package "ARDUINO_SERIAL")))
(unless (find-package "ARDUINO_SERIAL::LIFTSTATUS")
  (make-package "ARDUINO_SERIAL::LIFTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LiftStatus.msg.html


(defclass arduino_serial::LiftStatus
  :super ros::object
  :slots (_stamp _sensor_max _sensor_min ))

(defmethod arduino_serial::LiftStatus
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:sensor_max __sensor_max) nil)
    ((:sensor_min __sensor_min) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _sensor_max __sensor_max)
   (setq _sensor_min __sensor_min)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:sensor_max
   (&optional (__sensor_max :null))
   (if (not (eq __sensor_max :null)) (setq _sensor_max __sensor_max)) _sensor_max)
  (:sensor_min
   (&optional (__sensor_min :null))
   (if (not (eq __sensor_min :null)) (setq _sensor_min __sensor_min)) _sensor_min)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool _sensor_max
    1
    ;; bool _sensor_min
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool _sensor_max
       (if _sensor_max (write-byte -1 s) (write-byte 0 s))
     ;; bool _sensor_min
       (if _sensor_min (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _sensor_max
     (setq _sensor_max (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sensor_min
     (setq _sensor_min (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get arduino_serial::LiftStatus :md5sum-) "ff08c76cb254ec9297cccc8566cbbf64")
(setf (get arduino_serial::LiftStatus :datatype-) "arduino_serial/LiftStatus")
(setf (get arduino_serial::LiftStatus :definition-)
      "time stamp
bool sensor_max
bool sensor_min

")



(provide :arduino_serial/LiftStatus "ff08c76cb254ec9297cccc8566cbbf64")


