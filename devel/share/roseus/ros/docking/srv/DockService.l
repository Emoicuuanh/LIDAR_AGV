;; Auto-generated. Do not edit!


(when (boundp 'docking::DockService)
  (if (not (find-package "DOCKING"))
    (make-package "DOCKING"))
  (shadow 'DockService (find-package "DOCKING")))
(unless (find-package "DOCKING::DOCKSERVICE")
  (make-package "DOCKING::DOCKSERVICE"))
(unless (find-package "DOCKING::DOCKSERVICEREQUEST")
  (make-package "DOCKING::DOCKSERVICEREQUEST"))
(unless (find-package "DOCKING::DOCKSERVICERESPONSE")
  (make-package "DOCKING::DOCKSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass docking::DockServiceRequest
  :super ros::object
  :slots (_pose_target _enable_detect _use_scan_merge ))

(defmethod docking::DockServiceRequest
  (:init
   (&key
    ((:pose_target __pose_target) (instance geometry_msgs::Pose :init))
    ((:enable_detect __enable_detect) nil)
    ((:use_scan_merge __use_scan_merge) nil)
    )
   (send-super :init)
   (setq _pose_target __pose_target)
   (setq _enable_detect __enable_detect)
   (setq _use_scan_merge __use_scan_merge)
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
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose_target
    (send _pose_target :serialization-length)
    ;; bool _enable_detect
    1
    ;; bool _use_scan_merge
    1
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
   ;;
   self)
  )

(defclass docking::DockServiceResponse
  :super ros::object
  :slots (_success ))

(defmethod docking::DockServiceResponse
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

(defclass docking::DockService
  :super ros::object
  :slots ())

(setf (get docking::DockService :md5sum-) "61a574ebc6ea32888de3ea49d447d92c")
(setf (get docking::DockService :datatype-) "docking/DockService")
(setf (get docking::DockService :request) docking::DockServiceRequest)
(setf (get docking::DockService :response) docking::DockServiceResponse)

(defmethod docking::DockServiceRequest
  (:response () (instance docking::DockServiceResponse :init)))

(setf (get docking::DockServiceRequest :md5sum-) "61a574ebc6ea32888de3ea49d447d92c")
(setf (get docking::DockServiceRequest :datatype-) "docking/DockServiceRequest")
(setf (get docking::DockServiceRequest :definition-)
      "geometry_msgs/Pose pose_target
bool enable_detect
bool use_scan_merge

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

(setf (get docking::DockServiceResponse :md5sum-) "61a574ebc6ea32888de3ea49d447d92c")
(setf (get docking::DockServiceResponse :datatype-) "docking/DockServiceResponse")
(setf (get docking::DockServiceResponse :definition-)
      "geometry_msgs/Pose pose_target
bool enable_detect
bool use_scan_merge

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



(provide :docking/DockService "61a574ebc6ea32888de3ea49d447d92c")


