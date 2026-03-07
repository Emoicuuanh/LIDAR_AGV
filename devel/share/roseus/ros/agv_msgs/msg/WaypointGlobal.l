;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::WaypointGlobal)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'WaypointGlobal (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::WAYPOINTGLOBAL")
  (make-package "AGV_MSGS::WAYPOINTGLOBAL"))

(in-package "ROS")
;;//! \htmlinclude WaypointGlobal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass agv_msgs::WaypointGlobal
  :super ros::object
  :slots (_Pose _radius ))

(defmethod agv_msgs::WaypointGlobal
  (:init
   (&key
    ((:Pose __Pose) (instance geometry_msgs::PoseStamped :init))
    ((:radius __radius) 0.0)
    )
   (send-super :init)
   (setq _Pose __Pose)
   (setq _radius (float __radius))
   self)
  (:Pose
   (&rest __Pose)
   (if (keywordp (car __Pose))
       (send* _Pose __Pose)
     (progn
       (if __Pose (setq _Pose (car __Pose)))
       _Pose)))
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _Pose
    (send _Pose :serialization-length)
    ;; float64 _radius
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _Pose
       (send _Pose :serialize s)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _Pose
     (send _Pose :deserialize buf ptr-) (incf ptr- (send _Pose :serialization-length))
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get agv_msgs::WaypointGlobal :md5sum-) "9eb2f8ac2e8d785b7715064cb1a62c7f")
(setf (get agv_msgs::WaypointGlobal :datatype-) "agv_msgs/WaypointGlobal")
(setf (get agv_msgs::WaypointGlobal :definition-)
      "geometry_msgs/PoseStamped Pose
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



(provide :agv_msgs/WaypointGlobal "9eb2f8ac2e8d785b7715064cb1a62c7f")


