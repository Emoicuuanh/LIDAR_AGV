;; Auto-generated. Do not edit!


(when (boundp 'mirror_detect::HubService)
  (if (not (find-package "MIRROR_DETECT"))
    (make-package "MIRROR_DETECT"))
  (shadow 'HubService (find-package "MIRROR_DETECT")))
(unless (find-package "MIRROR_DETECT::HUBSERVICE")
  (make-package "MIRROR_DETECT::HUBSERVICE"))
(unless (find-package "MIRROR_DETECT::HUBSERVICEREQUEST")
  (make-package "MIRROR_DETECT::HUBSERVICEREQUEST"))
(unless (find-package "MIRROR_DETECT::HUBSERVICERESPONSE")
  (make-package "MIRROR_DETECT::HUBSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass mirror_detect::HubServiceRequest
  :super ros::object
  :slots (_pose_target _enable_detect _use_scan_merge _length ))

(defmethod mirror_detect::HubServiceRequest
  (:init
   (&key
    ((:pose_target __pose_target) (instance geometry_msgs::Pose :init))
    ((:enable_detect __enable_detect) nil)
    ((:use_scan_merge __use_scan_merge) nil)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _pose_target __pose_target)
   (setq _enable_detect __enable_detect)
   (setq _use_scan_merge __use_scan_merge)
   (setq _length (float __length))
   self)
  (:pose_target
   (&rest __pose_target)
   (if (keywordp (car __pose_target))
       (send* _pose_target __pose_target)
     (progn
       (if __pose_target (setq _pose_target (car __pose_target)))
       _pose_target)))
  (:enable_detect
   (&optional (__enable_detect :null))
   (if (not (eq __enable_detect :null)) (setq _enable_detect __enable_detect)) _enable_detect)
  (:use_scan_merge
   (&optional (__use_scan_merge :null))
   (if (not (eq __use_scan_merge :null)) (setq _use_scan_merge __use_scan_merge)) _use_scan_merge)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_target
    (send _pose_target :serialization-length)
    ;; bool _enable_detect
    1
    ;; bool _use_scan_merge
    1
    ;; float32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose_target
       (send _pose_target :serialize s)
     ;; bool _enable_detect
       (if _enable_detect (write-byte -1 s) (write-byte 0 s))
     ;; bool _use_scan_merge
       (if _use_scan_merge (write-byte -1 s) (write-byte 0 s))
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose_target
     (send _pose_target :deserialize buf ptr-) (incf ptr- (send _pose_target :serialization-length))
   ;; bool _enable_detect
     (setq _enable_detect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _use_scan_merge
     (setq _use_scan_merge (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mirror_detect::HubServiceResponse
  :super ros::object
  :slots (_success ))

(defmethod mirror_detect::HubServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mirror_detect::HubService
  :super ros::object
  :slots ())

(setf (get mirror_detect::HubService :md5sum-) "af013932b4bc2657d1c28aa1d3ac1eb6")
(setf (get mirror_detect::HubService :datatype-) "mirror_detect/HubService")
(setf (get mirror_detect::HubService :request) mirror_detect::HubServiceRequest)
(setf (get mirror_detect::HubService :response) mirror_detect::HubServiceResponse)

(defmethod mirror_detect::HubServiceRequest
  (:response () (instance mirror_detect::HubServiceResponse :init)))

(setf (get mirror_detect::HubServiceRequest :md5sum-) "af013932b4bc2657d1c28aa1d3ac1eb6")
(setf (get mirror_detect::HubServiceRequest :datatype-) "mirror_detect/HubServiceRequest")
(setf (get mirror_detect::HubServiceRequest :definition-)
      "geometry_msgs/Pose pose_target
bool enable_detect
bool use_scan_merge
float32 length

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
")

(setf (get mirror_detect::HubServiceResponse :md5sum-) "af013932b4bc2657d1c28aa1d3ac1eb6")
(setf (get mirror_detect::HubServiceResponse :datatype-) "mirror_detect/HubServiceResponse")
(setf (get mirror_detect::HubServiceResponse :definition-)
      "geometry_msgs/Pose pose_target
bool enable_detect
bool use_scan_merge
float32 length

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool success
")



(provide :mirror_detect/HubService "af013932b4bc2657d1c28aa1d3ac1eb6")


