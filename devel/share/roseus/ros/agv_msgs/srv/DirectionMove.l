;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::DirectionMove)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'DirectionMove (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DIRECTIONMOVE")
  (make-package "AGV_MSGS::DIRECTIONMOVE"))
(unless (find-package "AGV_MSGS::DIRECTIONMOVEREQUEST")
  (make-package "AGV_MSGS::DIRECTIONMOVEREQUEST"))
(unless (find-package "AGV_MSGS::DIRECTIONMOVERESPONSE")
  (make-package "AGV_MSGS::DIRECTIONMOVERESPONSE"))

(in-package "ROS")





(defclass agv_msgs::DirectionMoveRequest
  :super ros::object
  :slots ())

(defmethod agv_msgs::DirectionMoveRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass agv_msgs::DirectionMoveResponse
  :super ros::object
  :slots (_direction ))

(defmethod agv_msgs::DirectionMoveResponse
  (:init
   (&key
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _direction 127) (setq _direction (- _direction 256)))
   ;;
   self)
  )

(defclass agv_msgs::DirectionMove
  :super ros::object
  :slots ())

(setf (get agv_msgs::DirectionMove :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get agv_msgs::DirectionMove :datatype-) "agv_msgs/DirectionMove")
(setf (get agv_msgs::DirectionMove :request) agv_msgs::DirectionMoveRequest)
(setf (get agv_msgs::DirectionMove :response) agv_msgs::DirectionMoveResponse)

(defmethod agv_msgs::DirectionMoveRequest
  (:response () (instance agv_msgs::DirectionMoveResponse :init)))

(setf (get agv_msgs::DirectionMoveRequest :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get agv_msgs::DirectionMoveRequest :datatype-) "agv_msgs/DirectionMoveRequest")
(setf (get agv_msgs::DirectionMoveRequest :definition-)
      "---
int8 direction # 0: free, 1:forward, 2: backward
")

(setf (get agv_msgs::DirectionMoveResponse :md5sum-) "82056227860a27ca2b5bdb9859d50460")
(setf (get agv_msgs::DirectionMoveResponse :datatype-) "agv_msgs/DirectionMoveResponse")
(setf (get agv_msgs::DirectionMoveResponse :definition-)
      "---
int8 direction # 0: free, 1:forward, 2: backward
")



(provide :agv_msgs/DirectionMove "82056227860a27ca2b5bdb9859d50460")


