;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::DataChanged)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'DataChanged (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DATACHANGED")
  (make-package "AGV_MSGS::DATACHANGED"))

(in-package "ROS")
;;//! \htmlinclude DataChanged.msg.html


(defclass agv_msgs::DataChanged
  :super ros::object
  :slots (_Name _Value ))

(defmethod agv_msgs::DataChanged
  (:init
   (&key
    ((:Name __Name) "")
    ((:Value __Value) "")
    )
   (send-super :init)
   (setq _Name (string __Name))
   (setq _Value (string __Value))
   self)
  (:Name
   (&optional __Name)
   (if __Name (setq _Name __Name)) _Name)
  (:Value
   (&optional __Value)
   (if __Value (setq _Value __Value)) _Value)
  (:serialization-length
   ()
   (+
    ;; string _Name
    4 (length _Name)
    ;; string _Value
    4 (length _Value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Name
       (write-long (length _Name) s) (princ _Name s)
     ;; string _Value
       (write-long (length _Value) s) (princ _Value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get agv_msgs::DataChanged :md5sum-) "c0e75800c1d72baee3c36c59949425a9")
(setf (get agv_msgs::DataChanged :datatype-) "agv_msgs/DataChanged")
(setf (get agv_msgs::DataChanged :definition-)
      "string Name
string Value
")



(provide :agv_msgs/DataChanged "c0e75800c1d72baee3c36c59949425a9")


