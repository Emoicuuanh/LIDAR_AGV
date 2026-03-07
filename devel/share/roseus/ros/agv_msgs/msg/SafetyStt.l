;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::SafetyStt)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'SafetyStt (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::SAFETYSTT")
  (make-package "AGV_MSGS::SAFETYSTT"))

(in-package "ROS")
;;//! \htmlinclude SafetyStt.msg.html


(defclass agv_msgs::SafetyStt
  :super ros::object
  :slots (_Id _Name _Current_Job _Range_1 _Range_2 _Range_3 ))

(defmethod agv_msgs::SafetyStt
  (:init
   (&key
    ((:Id __Id) 0)
    ((:Name __Name) "")
    ((:Current_Job __Current_Job) 0)
    ((:Range_1 __Range_1) 0)
    ((:Range_2 __Range_2) 0)
    ((:Range_3 __Range_3) 0)
    )
   (send-super :init)
   (setq _Id (round __Id))
   (setq _Name (string __Name))
   (setq _Current_Job (round __Current_Job))
   (setq _Range_1 (round __Range_1))
   (setq _Range_2 (round __Range_2))
   (setq _Range_3 (round __Range_3))
   self)
  (:Id
   (&optional __Id)
   (if __Id (setq _Id __Id)) _Id)
  (:Name
   (&optional __Name)
   (if __Name (setq _Name __Name)) _Name)
  (:Current_Job
   (&optional __Current_Job)
   (if __Current_Job (setq _Current_Job __Current_Job)) _Current_Job)
  (:Range_1
   (&optional __Range_1)
   (if __Range_1 (setq _Range_1 __Range_1)) _Range_1)
  (:Range_2
   (&optional __Range_2)
   (if __Range_2 (setq _Range_2 __Range_2)) _Range_2)
  (:Range_3
   (&optional __Range_3)
   (if __Range_3 (setq _Range_3 __Range_3)) _Range_3)
  (:serialization-length
   ()
   (+
    ;; uint8 _Id
    1
    ;; string _Name
    4 (length _Name)
    ;; uint8 _Current_Job
    1
    ;; uint8 _Range_1
    1
    ;; uint8 _Range_2
    1
    ;; uint8 _Range_3
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _Id
       (write-byte _Id s)
     ;; string _Name
       (write-long (length _Name) s) (princ _Name s)
     ;; uint8 _Current_Job
       (write-byte _Current_Job s)
     ;; uint8 _Range_1
       (write-byte _Range_1 s)
     ;; uint8 _Range_2
       (write-byte _Range_2 s)
     ;; uint8 _Range_3
       (write-byte _Range_3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _Id
     (setq _Id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _Current_Job
     (setq _Current_Job (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Range_1
     (setq _Range_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Range_2
     (setq _Range_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Range_3
     (setq _Range_3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get agv_msgs::SafetyStt :md5sum-) "f93827b3264a5c1f06a6cdd2faf3051e")
(setf (get agv_msgs::SafetyStt :datatype-) "agv_msgs/SafetyStt")
(setf (get agv_msgs::SafetyStt :definition-)
      "uint8 Id
string Name
uint8 Current_Job
uint8 Range_1
uint8 Range_2
uint8 Range_3
")



(provide :agv_msgs/SafetyStt "f93827b3264a5c1f06a6cdd2faf3051e")


