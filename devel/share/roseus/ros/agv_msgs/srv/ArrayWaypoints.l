;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ArrayWaypoints)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ArrayWaypoints (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ARRAYWAYPOINTS")
  (make-package "AGV_MSGS::ARRAYWAYPOINTS"))
(unless (find-package "AGV_MSGS::ARRAYWAYPOINTSREQUEST")
  (make-package "AGV_MSGS::ARRAYWAYPOINTSREQUEST"))
(unless (find-package "AGV_MSGS::ARRAYWAYPOINTSRESPONSE")
  (make-package "AGV_MSGS::ARRAYWAYPOINTSRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agv_msgs::ArrayWaypointsRequest
  :super ros::object
  :slots ())

(defmethod agv_msgs::ArrayWaypointsRequest
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

(defclass agv_msgs::ArrayWaypointsResponse
  :super ros::object
  :slots (_Waypoints ))

(defmethod agv_msgs::ArrayWaypointsResponse
  (:init
   (&key
    ((:Waypoints __Waypoints) ())
    )
   (send-super :init)
   (setq _Waypoints __Waypoints)
   self)
  (:Waypoints
   (&rest __Waypoints)
   (if (keywordp (car __Waypoints))
       (send* _Waypoints __Waypoints)
     (progn
       (if __Waypoints (setq _Waypoints (car __Waypoints)))
       _Waypoints)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _Waypoints
    (apply #'+ (send-all _Waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _Waypoints
     (write-long (length _Waypoints) s)
     (dolist (elem _Waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _Waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _Waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass agv_msgs::ArrayWaypoints
  :super ros::object
  :slots ())

(setf (get agv_msgs::ArrayWaypoints :md5sum-) "e7a462d7837fb67629ef9c43385f3fb8")
(setf (get agv_msgs::ArrayWaypoints :datatype-) "agv_msgs/ArrayWaypoints")
(setf (get agv_msgs::ArrayWaypoints :request) agv_msgs::ArrayWaypointsRequest)
(setf (get agv_msgs::ArrayWaypoints :response) agv_msgs::ArrayWaypointsResponse)

(defmethod agv_msgs::ArrayWaypointsRequest
  (:response () (instance agv_msgs::ArrayWaypointsResponse :init)))

(setf (get agv_msgs::ArrayWaypointsRequest :md5sum-) "e7a462d7837fb67629ef9c43385f3fb8")
(setf (get agv_msgs::ArrayWaypointsRequest :datatype-) "agv_msgs/ArrayWaypointsRequest")
(setf (get agv_msgs::ArrayWaypointsRequest :definition-)
      "---
geometry_msgs/PoseStamped[] Waypoints

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

(setf (get agv_msgs::ArrayWaypointsResponse :md5sum-) "e7a462d7837fb67629ef9c43385f3fb8")
(setf (get agv_msgs::ArrayWaypointsResponse :datatype-) "agv_msgs/ArrayWaypointsResponse")
(setf (get agv_msgs::ArrayWaypointsResponse :definition-)
      "---
geometry_msgs/PoseStamped[] Waypoints

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



(provide :agv_msgs/ArrayWaypoints "e7a462d7837fb67629ef9c43385f3fb8")


