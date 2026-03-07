;; Auto-generated. Do not edit!


(when (boundp 'fastech_io::io)
  (if (not (find-package "FASTECH_IO"))
    (make-package "FASTECH_IO"))
  (shadow 'io (find-package "FASTECH_IO")))
(unless (find-package "FASTECH_IO::IO")
  (make-package "FASTECH_IO::IO"))

(in-package "ROS")
;;//! \htmlinclude io.msg.html


(defclass fastech_io::io
  :super ros::object
  :slots (_pin _value ))

(defmethod fastech_io::io
  (:init
   (&key
    ((:pin __pin) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _value (round __value))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _pin
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pin
       (write-long _pin s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pin
     (setq _pin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fastech_io::io :md5sum-) "0d2137c3882cd2c55a0c95412d364629")
(setf (get fastech_io::io :datatype-) "fastech_io/io")
(setf (get fastech_io::io :definition-)
      "int32 pin
int32 value
")



(provide :fastech_io/io "0d2137c3882cd2c55a0c95412d364629")


