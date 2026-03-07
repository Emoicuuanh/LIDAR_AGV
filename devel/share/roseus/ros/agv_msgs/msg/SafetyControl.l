;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::SafetyControl)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'SafetyControl (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::SAFETYCONTROL")
  (make-package "AGV_MSGS::SAFETYCONTROL"))

(in-package "ROS")
;;//! \htmlinclude SafetyControl.msg.html


(defclass agv_msgs::SafetyControl
  :super ros::object
  :slots (_Left _Right ))

(defmethod agv_msgs::SafetyControl
  (:init
   (&key
    ((:Left __Left) 0)
    ((:Right __Right) 0)
    )
   (send-super :init)
   (setq _Left (round __Left))
   (setq _Right (round __Right))
   self)
  (:Left
   (&optional __Left)
   (if __Left (setq _Left __Left)) _Left)
  (:Right
   (&optional __Right)
   (if __Right (setq _Right __Right)) _Right)
  (:serialization-length
   ()
   (+
    ;; uint16 _Left
    2
    ;; uint16 _Right
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _Left
       (write-word _Left s)
     ;; uint16 _Right
       (write-word _Right s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _Left
     (setq _Left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Right
     (setq _Right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get agv_msgs::SafetyControl :md5sum-) "7e1ba5969070df6bf75b49b3832139e5")
(setf (get agv_msgs::SafetyControl :datatype-) "agv_msgs/SafetyControl")
(setf (get agv_msgs::SafetyControl :definition-)
      "uint16 Left
uint16 Right
")



(provide :agv_msgs/SafetyControl "7e1ba5969070df6bf75b49b3832139e5")


