;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ErrorRobotToPath)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ErrorRobotToPath (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ERRORROBOTTOPATH")
  (make-package "AGV_MSGS::ERRORROBOTTOPATH"))

(in-package "ROS")
;;//! \htmlinclude ErrorRobotToPath.msg.html


(defclass agv_msgs::ErrorRobotToPath
  :super ros::object
  :slots (_error_angle _error_position ))

(defmethod agv_msgs::ErrorRobotToPath
  (:init
   (&key
    ((:error_angle __error_angle) 0.0)
    ((:error_position __error_position) 0.0)
    )
   (send-super :init)
   (setq _error_angle (float __error_angle))
   (setq _error_position (float __error_position))
   self)
  (:error_angle
   (&optional __error_angle)
   (if __error_angle (setq _error_angle __error_angle)) _error_angle)
  (:error_position
   (&optional __error_position)
   (if __error_position (setq _error_position __error_position)) _error_position)
  (:serialization-length
   ()
   (+
    ;; float64 _error_angle
    8
    ;; float64 _error_position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _error_angle
       (sys::poke _error_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error_position
       (sys::poke _error_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _error_angle
     (setq _error_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error_position
     (setq _error_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get agv_msgs::ErrorRobotToPath :md5sum-) "dfe8fe7d4e33da3bdbaadca9414e0299")
(setf (get agv_msgs::ErrorRobotToPath :datatype-) "agv_msgs/ErrorRobotToPath")
(setf (get agv_msgs::ErrorRobotToPath :definition-)
      "float64 error_angle
float64 error_position
")



(provide :agv_msgs/ErrorRobotToPath "dfe8fe7d4e33da3bdbaadca9414e0299")


