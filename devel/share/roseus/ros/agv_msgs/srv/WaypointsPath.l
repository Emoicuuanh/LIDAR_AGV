;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::WaypointsPath)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'WaypointsPath (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::WAYPOINTSPATH")
  (make-package "AGV_MSGS::WAYPOINTSPATH"))
(unless (find-package "AGV_MSGS::WAYPOINTSPATHREQUEST")
  (make-package "AGV_MSGS::WAYPOINTSPATHREQUEST"))
(unless (find-package "AGV_MSGS::WAYPOINTSPATHRESPONSE")
  (make-package "AGV_MSGS::WAYPOINTSPATHRESPONSE"))

(in-package "ROS")





(defclass agv_msgs::WaypointsPathRequest
  :super ros::object
  :slots ())

(defmethod agv_msgs::WaypointsPathRequest
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

(defclass agv_msgs::WaypointsPathResponse
  :super ros::object
  :slots (_Waypoints _use_lidar ))

(defmethod agv_msgs::WaypointsPathResponse
  (:init
   (&key
    ((:Waypoints __Waypoints) ())
    ((:use_lidar __use_lidar) nil)
    )
   (send-super :init)
   (setq _Waypoints __Waypoints)
   (setq _use_lidar __use_lidar)
   self)
  (:Waypoints
   (&rest __Waypoints)
   (if (keywordp (car __Waypoints))
       (send* _Waypoints __Waypoints)
     (progn
       (if __Waypoints (setq _Waypoints (car __Waypoints)))
       _Waypoints)))
  (:use_lidar
   (&optional (__use_lidar :null))
   (if (not (eq __use_lidar :null)) (setq _use_lidar __use_lidar)) _use_lidar)
  (:serialization-length
   ()
   (+
    ;; agv_msgs/WaypointGlobal[] _Waypoints
    (apply #'+ (send-all _Waypoints :serialization-length)) 4
    ;; bool _use_lidar
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_msgs/WaypointGlobal[] _Waypoints
     (write-long (length _Waypoints) s)
     (dolist (elem _Waypoints)
       (send elem :serialize s)
       )
     ;; bool _use_lidar
       (if _use_lidar (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_msgs/WaypointGlobal[] _Waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Waypoints (let (r) (dotimes (i n) (push (instance agv_msgs::WaypointGlobal :init) r)) r))
     (dolist (elem- _Waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _use_lidar
     (setq _use_lidar (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::WaypointsPath
  :super ros::object
  :slots ())

(setf (get agv_msgs::WaypointsPath :md5sum-) "2db582d2ba373ee4ec120bf4766af126")
(setf (get agv_msgs::WaypointsPath :datatype-) "agv_msgs/WaypointsPath")
(setf (get agv_msgs::WaypointsPath :request) agv_msgs::WaypointsPathRequest)
(setf (get agv_msgs::WaypointsPath :response) agv_msgs::WaypointsPathResponse)

(defmethod agv_msgs::WaypointsPathRequest
  (:response () (instance agv_msgs::WaypointsPathResponse :init)))

(setf (get agv_msgs::WaypointsPathRequest :md5sum-) "2db582d2ba373ee4ec120bf4766af126")
(setf (get agv_msgs::WaypointsPathRequest :datatype-) "agv_msgs/WaypointsPathRequest")
(setf (get agv_msgs::WaypointsPathRequest :definition-)
      "---
WaypointGlobal[] Waypoints
bool use_lidar

================================================================================
MSG: agv_msgs/WaypointGlobal
geometry_msgs/PoseStamped Pose
float64 radius
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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
")

(setf (get agv_msgs::WaypointsPathResponse :md5sum-) "2db582d2ba373ee4ec120bf4766af126")
(setf (get agv_msgs::WaypointsPathResponse :datatype-) "agv_msgs/WaypointsPathResponse")
(setf (get agv_msgs::WaypointsPathResponse :definition-)
      "---
WaypointGlobal[] Waypoints
bool use_lidar

================================================================================
MSG: agv_msgs/WaypointGlobal
geometry_msgs/PoseStamped Pose
float64 radius
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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
")



(provide :agv_msgs/WaypointsPath "2db582d2ba373ee4ec120bf4766af126")


