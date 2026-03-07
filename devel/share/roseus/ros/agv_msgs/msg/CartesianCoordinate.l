;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::CartesianCoordinate)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'CartesianCoordinate (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::CARTESIANCOORDINATE")
  (make-package "AGV_MSGS::CARTESIANCOORDINATE"))

(in-package "ROS")
;;//! \htmlinclude CartesianCoordinate.msg.html


(defclass agv_msgs::CartesianCoordinate
  :super ros::object
  :slots (_x _y _angle ))

(defmethod agv_msgs::CartesianCoordinate
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _angle (float __angle))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get agv_msgs::CartesianCoordinate :md5sum-) "30e80cd7c7bc73df0be59f16ec761f83")
(setf (get agv_msgs::CartesianCoordinate :datatype-) "agv_msgs/CartesianCoordinate")
(setf (get agv_msgs::CartesianCoordinate :definition-)
      "int32 x
int32 y
float64 angle
")



(provide :agv_msgs/CartesianCoordinate "30e80cd7c7bc73df0be59f16ec761f83")


