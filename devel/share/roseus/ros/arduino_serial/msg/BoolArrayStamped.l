;; Auto-generated. Do not edit!


(when (boundp 'arduino_serial::BoolArrayStamped)
  (if (not (find-package "ARDUINO_SERIAL"))
    (make-package "ARDUINO_SERIAL"))
  (shadow 'BoolArrayStamped (find-package "ARDUINO_SERIAL")))
(unless (find-package "ARDUINO_SERIAL::BOOLARRAYSTAMPED")
  (make-package "ARDUINO_SERIAL::BOOLARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude BoolArrayStamped.msg.html


(defclass arduino_serial::BoolArrayStamped
  :super ros::object
  :slots (_stamp _data ))

(defmethod arduino_serial::BoolArrayStamped
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; bool[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; bool[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (if (elt _data i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (make-list n))
     (dotimes (i n)
     (setf (elt _data i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get arduino_serial::BoolArrayStamped :md5sum-) "218aa9b00f224702a528e0059d162bb3")
(setf (get arduino_serial::BoolArrayStamped :datatype-) "arduino_serial/BoolArrayStamped")
(setf (get arduino_serial::BoolArrayStamped :definition-)
      "time stamp
bool[] data
")



(provide :arduino_serial/BoolArrayStamped "218aa9b00f224702a528e0059d162bb3")


