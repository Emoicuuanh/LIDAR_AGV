;; Auto-generated. Do not edit!


(when (boundp 'docking::BoundingBox)
  (if (not (find-package "DOCKING"))
    (make-package "DOCKING"))
  (shadow 'BoundingBox (find-package "DOCKING")))
(unless (find-package "DOCKING::BOUNDINGBOX")
  (make-package "DOCKING::BOUNDINGBOX"))

(in-package "ROS")
;;//! \htmlinclude BoundingBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "VISUALIZATION_MSGS"))
  (ros::roseus-add-msgs "visualization_msgs"))


(defclass docking::BoundingBox
  :super ros::object
  :slots (_header _pose _min _max _dimensions _marker _area _volume _label ))

(defmethod docking::BoundingBox
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:min __min) (instance geometry_msgs::Point :init))
    ((:max __max) (instance geometry_msgs::Point :init))
    ((:dimensions __dimensions) (instance geometry_msgs::Vector3 :init))
    ((:marker __marker) (instance visualization_msgs::Marker :init))
    ((:area __area) 0.0)
    ((:volume __volume) 0.0)
    ((:label __label) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _min __min)
   (setq _max __max)
   (setq _dimensions __dimensions)
   (setq _marker __marker)
   (setq _area (float __area))
   (setq _volume (float __volume))
   (setq _label (round __label))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
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
  (:dimensions
   (&rest __dimensions)
   (if (keywordp (car __dimensions))
       (send* _dimensions __dimensions)
     (progn
       (if __dimensions (setq _dimensions (car __dimensions)))
       _dimensions)))
  (:marker
   (&rest __marker)
   (if (keywordp (car __marker))
       (send* _marker __marker)
     (progn
       (if __marker (setq _marker (car __marker)))
       _marker)))
  (:area
   (&optional __area)
   (if __area (setq _area __area)) _area)
  (:volume
   (&optional __volume)
   (if __volume (setq _volume __volume)) _volume)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Point _min
    (send _min :serialization-length)
    ;; geometry_msgs/Point _max
    (send _max :serialization-length)
    ;; geometry_msgs/Vector3 _dimensions
    (send _dimensions :serialization-length)
    ;; visualization_msgs/Marker _marker
    (send _marker :serialization-length)
    ;; float64 _area
    8
    ;; float64 _volume
    8
    ;; uint32 _label
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Point _min
       (send _min :serialize s)
     ;; geometry_msgs/Point _max
       (send _max :serialize s)
     ;; geometry_msgs/Vector3 _dimensions
       (send _dimensions :serialize s)
     ;; visualization_msgs/Marker _marker
       (send _marker :serialize s)
     ;; float64 _area
       (sys::poke _area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _volume
       (sys::poke _volume (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _label
       (write-long _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Point _min
     (send _min :deserialize buf ptr-) (incf ptr- (send _min :serialization-length))
   ;; geometry_msgs/Point _max
     (send _max :deserialize buf ptr-) (incf ptr- (send _max :serialization-length))
   ;; geometry_msgs/Vector3 _dimensions
     (send _dimensions :deserialize buf ptr-) (incf ptr- (send _dimensions :serialization-length))
   ;; visualization_msgs/Marker _marker
     (send _marker :deserialize buf ptr-) (incf ptr- (send _marker :serialization-length))
   ;; float64 _area
     (setq _area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _volume
     (setq _volume (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _label
     (setq _label (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get docking::BoundingBox :md5sum-) "9b47543b3aa27f5e1c01342808908c7b")
(setf (get docking::BoundingBox :datatype-) "docking/BoundingBox")
(setf (get docking::BoundingBox :definition-)
      "std_msgs/Header header
geometry_msgs/Pose pose
geometry_msgs/Point min
geometry_msgs/Point max
geometry_msgs/Vector3 dimensions
visualization_msgs/Marker marker
float64 area
float64 volume
uint32 label

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



(provide :docking/BoundingBox "9b47543b3aa27f5e1c01342808908c7b")


