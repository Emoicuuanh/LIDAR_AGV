;; Auto-generated. Do not edit!


(when (boundp 'arduino_serial::SetPinStamped)
  (if (not (find-package "ARDUINO_SERIAL"))
    (make-package "ARDUINO_SERIAL"))
  (shadow 'SetPinStamped (find-package "ARDUINO_SERIAL")))
(unless (find-package "ARDUINO_SERIAL::SETPINSTAMPED")
  (make-package "ARDUINO_SERIAL::SETPINSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude SetPinStamped.msg.html


(defclass arduino_serial::SetPinStamped
  :super ros::object
  :slots (_stamp _pin _value ))

(defmethod arduino_serial::SetPinStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:pin __pin) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _pin (round __pin))
   (setq _value __value)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; int8 _pin
    1
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; int8 _pin
       (write-byte _pin s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get arduino_serial::SetPinStamped :md5sum-) "1c071caaac2c180d837848c41bb23570")
(setf (get arduino_serial::SetPinStamped :datatype-) "arduino_serial/SetPinStamped")
(setf (get arduino_serial::SetPinStamped :definition-)
      "time stamp
int8 pin
bool value
")



(provide :arduino_serial/SetPinStamped "1c071caaac2c180d837848c41bb23570")


