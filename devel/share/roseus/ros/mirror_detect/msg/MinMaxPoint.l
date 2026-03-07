;; Auto-generated. Do not edit!


(when (boundp 'mirror_detect::MinMaxPoint)
  (if (not (find-package "MIRROR_DETECT"))
    (make-package "MIRROR_DETECT"))
  (shadow 'MinMaxPoint (find-package "MIRROR_DETECT")))
(unless (find-package "MIRROR_DETECT::MINMAXPOINT")
  (make-package "MIRROR_DETECT::MINMAXPOINT"))

(in-package "ROS")
;;//! \htmlinclude MinMaxPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mirror_detect::MinMaxPoint
  :super ros::object
  :slots (_min _max ))

(defmethod mirror_detect::MinMaxPoint
  (:init
   (&key
    ((:min __min) (instance geometry_msgs::Point :init))
    ((:max __max) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _min __min)
   (setq _max __max)
   self)
  (:min
   (&rest __min)
   (if (keywordp (car __min))
       (send* _min __min)
     (progn
       (if __min (setq _min (car __min)))
       _min)))
  (:max
   (&rest __max)
   (if (keywordp (car __max))
       (send* _max __max)
     (progn
       (if __max (setq _max (car __max)))
       _max)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _min
    (send _min :serialization-length)
    ;; geometry_msgs/Point _max
    (send _max :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _min
       (send _min :serialize s)
     ;; geometry_msgs/Point _max
       (send _max :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _min
     (send _min :deserialize buf ptr-) (incf ptr- (send _min :serialization-length))
   ;; geometry_msgs/Point _max
     (send _max :deserialize buf ptr-) (incf ptr- (send _max :serialization-length))
   ;;
   self)
  )

(setf (get mirror_detect::MinMaxPoint :md5sum-) "93aa3d73b866f04880927745f4aab303")
(setf (get mirror_detect::MinMaxPoint :datatype-) "mirror_detect/MinMaxPoint")
(setf (get mirror_detect::MinMaxPoint :definition-)
      "geometry_msgs/Point min
geometry_msgs/Point max

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mirror_detect/MinMaxPoint "93aa3d73b866f04880927745f4aab303")


