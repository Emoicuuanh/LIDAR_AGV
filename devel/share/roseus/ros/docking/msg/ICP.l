;; Auto-generated. Do not edit!


(when (boundp 'docking::ICP)
  (if (not (find-package "DOCKING"))
    (make-package "DOCKING"))
  (shadow 'ICP (find-package "DOCKING")))
(unless (find-package "DOCKING::ICP")
  (make-package "DOCKING::ICP"))

(in-package "ROS")
;;//! \htmlinclude ICP.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "VISUALIZATION_MSGS"))
  (ros::roseus-add-msgs "visualization_msgs"))


(defclass docking::ICP
  :super ros::object
  :slots (_header _poseStamped _transformStamped _poseTextMarker _score ))

(defmethod docking::ICP
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:poseStamped __poseStamped) (instance geometry_msgs::PoseStamped :init))
    ((:transformStamped __transformStamped) (instance geometry_msgs::TransformStamped :init))
    ((:poseTextMarker __poseTextMarker) (instance visualization_msgs::Marker :init))
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _poseStamped __poseStamped)
   (setq _transformStamped __transformStamped)
   (setq _poseTextMarker __poseTextMarker)
   (setq _score (float __score))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:poseStamped
   (&rest __poseStamped)
   (if (keywordp (car __poseStamped))
       (send* _poseStamped __poseStamped)
     (progn
       (if __poseStamped (setq _poseStamped (car __poseStamped)))
       _poseStamped)))
  (:transformStamped
   (&rest __transformStamped)
   (if (keywordp (car __transformStamped))
       (send* _transformStamped __transformStamped)
     (progn
       (if __transformStamped (setq _transformStamped (car __transformStamped)))
       _transformStamped)))
  (:poseTextMarker
   (&rest __poseTextMarker)
   (if (keywordp (car __poseTextMarker))
       (send* _poseTextMarker __poseTextMarker)
     (progn
       (if __poseTextMarker (setq _poseTextMarker (car __poseTextMarker)))
       _poseTextMarker)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/PoseStamped _poseStamped
    (send _poseStamped :serialization-length)
    ;; geometry_msgs/TransformStamped _transformStamped
    (send _transformStamped :serialization-length)
    ;; visualization_msgs/Marker _poseTextMarker
    (send _poseTextMarker :serialization-length)
    ;; float64 _score
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/PoseStamped _poseStamped
       (send _poseStamped :serialize s)
     ;; geometry_msgs/TransformStamped _transformStamped
       (send _transformStamped :serialize s)
     ;; visualization_msgs/Marker _poseTextMarker
       (send _poseTextMarker :serialize s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/PoseStamped _poseStamped
     (send _poseStamped :deserialize buf ptr-) (incf ptr- (send _poseStamped :serialization-length))
   ;; geometry_msgs/TransformStamped _transformStamped
     (send _transformStamped :deserialize buf ptr-) (incf ptr- (send _transformStamped :serialization-length))
   ;; visualization_msgs/Marker _poseTextMarker
     (send _poseTextMarker :deserialize buf ptr-) (incf ptr- (send _poseTextMarker :serialization-length))
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get docking::ICP :md5sum-) "d017f52f94ea1d14ea6e4ecdfc5f2fc5")
(setf (get docking::ICP :datatype-) "docking/ICP")
(setf (get docking::ICP :definition-)
      "std_msgs/Header header
geometry_msgs/PoseStamped poseStamped
geometry_msgs/TransformStamped transformStamped
visualization_msgs/Marker poseTextMarker
float64 score

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
================================================================================
MSG: visualization_msgs/Marker
# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :docking/ICP "d017f52f94ea1d14ea6e4ecdfc5f2fc5")


