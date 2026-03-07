;; Auto-generated. Do not edit!


(when (boundp 'mirror_detect::Plan)
  (if (not (find-package "MIRROR_DETECT"))
    (make-package "MIRROR_DETECT"))
  (shadow 'Plan (find-package "MIRROR_DETECT")))
(unless (find-package "MIRROR_DETECT::PLAN")
  (make-package "MIRROR_DETECT::PLAN"))

(in-package "ROS")
;;//! \htmlinclude Plan.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mirror_detect::Plan
  :super ros::object
  :slots (_header _poseArray _path _twists ))

(defmethod mirror_detect::Plan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:poseArray __poseArray) (instance geometry_msgs::PoseArray :init))
    ((:path __path) (instance nav_msgs::Path :init))
    ((:twists __twists) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _poseArray __poseArray)
   (setq _path __path)
   (setq _twists __twists)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:poseArray
   (&rest __poseArray)
   (if (keywordp (car __poseArray))
       (send* _poseArray __poseArray)
     (progn
       (if __poseArray (setq _poseArray (car __poseArray)))
       _poseArray)))
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:twists
   (&rest __twists)
   (if (keywordp (car __twists))
       (send* _twists __twists)
     (progn
       (if __twists (setq _twists (car __twists)))
       _twists)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/PoseArray _poseArray
    (send _poseArray :serialization-length)
    ;; nav_msgs/Path _path
    (send _path :serialization-length)
    ;; geometry_msgs/Twist[] _twists
    (apply #'+ (send-all _twists :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/PoseArray _poseArray
       (send _poseArray :serialize s)
     ;; nav_msgs/Path _path
       (send _path :serialize s)
     ;; geometry_msgs/Twist[] _twists
     (write-long (length _twists) s)
     (dolist (elem _twists)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/PoseArray _poseArray
     (send _poseArray :deserialize buf ptr-) (incf ptr- (send _poseArray :serialization-length))
   ;; nav_msgs/Path _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;; geometry_msgs/Twist[] _twists
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _twists (let (r) (dotimes (i n) (push (instance geometry_msgs::Twist :init) r)) r))
     (dolist (elem- _twists)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mirror_detect::Plan :md5sum-) "efe7f656178756fff0e279bd9579e433")
(setf (get mirror_detect::Plan :datatype-) "mirror_detect/Plan")
(setf (get mirror_detect::Plan :definition-)
      "std_msgs/Header header
geometry_msgs/PoseArray poseArray 
nav_msgs/Path path
geometry_msgs/Twist[] twists

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
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :mirror_detect/Plan "efe7f656178756fff0e279bd9579e433")


