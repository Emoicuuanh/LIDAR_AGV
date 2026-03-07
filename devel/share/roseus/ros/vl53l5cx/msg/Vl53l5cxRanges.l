;; Auto-generated. Do not edit!


(when (boundp 'vl53l5cx::Vl53l5cxRanges)
  (if (not (find-package "VL53L5CX"))
    (make-package "VL53L5CX"))
  (shadow 'Vl53l5cxRanges (find-package "VL53L5CX")))
(unless (find-package "VL53L5CX::VL53L5CXRANGES")
  (make-package "VL53L5CX::VL53L5CXRANGES"))

(in-package "ROS")
;;//! \htmlinclude Vl53l5cxRanges.msg.html


(defclass vl53l5cx::Vl53l5cxRanges
  :super ros::object
  :slots (_stamp _range ))

(defmethod vl53l5cx::Vl53l5cxRanges
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:range __range) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _range __range)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32[] _range
    (* 4    (length _range)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32[] _range
     (write-long (length _range) s)
     (dotimes (i (length _range))
       (sys::poke (elt _range i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _range i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get vl53l5cx::Vl53l5cxRanges :md5sum-) "c8d8eedd3a63d1b4efcc45ecd045053d")
(setf (get vl53l5cx::Vl53l5cxRanges :datatype-) "vl53l5cx/Vl53l5cxRanges")
(setf (get vl53l5cx::Vl53l5cxRanges :definition-)
      "time stamp
float32[] range
")



(provide :vl53l5cx/Vl53l5cxRanges "c8d8eedd3a63d1b4efcc45ecd045053d")


