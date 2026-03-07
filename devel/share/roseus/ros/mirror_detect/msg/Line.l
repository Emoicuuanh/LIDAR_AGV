;; Auto-generated. Do not edit!


(when (boundp 'mirror_detect::Line)
  (if (not (find-package "MIRROR_DETECT"))
    (make-package "MIRROR_DETECT"))
  (shadow 'Line (find-package "MIRROR_DETECT")))
(unless (find-package "MIRROR_DETECT::LINE")
  (make-package "MIRROR_DETECT::LINE"))

(in-package "ROS")
;;//! \htmlinclude Line.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "PCL_MSGS"))
  (ros::roseus-add-msgs "pcl_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "VISUALIZATION_MSGS"))
  (ros::roseus-add-msgs "visualization_msgs"))


(defclass mirror_detect::Line
  :super ros::object
  :slots (_header _cloud _points _coefficients _centroid _length _clusterID _lineID _marker ))

(defmethod mirror_detect::Line
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:points __points) (instance pcl_msgs::PointIndices :init))
    ((:coefficients __coefficients) (instance pcl_msgs::ModelCoefficients :init))
    ((:centroid __centroid) (instance geometry_msgs::Pose :init))
    ((:length __length) (instance std_msgs::Float32 :init))
    ((:clusterID __clusterID) (instance std_msgs::Int32 :init))
    ((:lineID __lineID) (instance std_msgs::Int32 :init))
    ((:marker __marker) (instance visualization_msgs::Marker :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cloud __cloud)
   (setq _points __points)
   (setq _coefficients __coefficients)
   (setq _centroid __centroid)
   (setq _length __length)
   (setq _clusterID __clusterID)
   (setq _lineID __lineID)
   (setq _marker __marker)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cloud
   (&rest __cloud)
   (if (keywordp (car __cloud))
       (send* _cloud __cloud)
     (progn
       (if __cloud (setq _cloud (car __cloud)))
       _cloud)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:coefficients
   (&rest __coefficients)
   (if (keywordp (car __coefficients))
       (send* _coefficients __coefficients)
     (progn
       (if __coefficients (setq _coefficients (car __coefficients)))
       _coefficients)))
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:length
   (&rest __length)
   (if (keywordp (car __length))
       (send* _length __length)
     (progn
       (if __length (setq _length (car __length)))
       _length)))
  (:clusterID
   (&rest __clusterID)
   (if (keywordp (car __clusterID))
       (send* _clusterID __clusterID)
     (progn
       (if __clusterID (setq _clusterID (car __clusterID)))
       _clusterID)))
  (:lineID
   (&rest __lineID)
   (if (keywordp (car __lineID))
       (send* _lineID __lineID)
     (progn
       (if __lineID (setq _lineID (car __lineID)))
       _lineID)))
  (:marker
   (&rest __marker)
   (if (keywordp (car __marker))
       (send* _marker __marker)
     (progn
       (if __marker (setq _marker (car __marker)))
       _marker)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ;; pcl_msgs/PointIndices _points
    (send _points :serialization-length)
    ;; pcl_msgs/ModelCoefficients _coefficients
    (send _coefficients :serialization-length)
    ;; geometry_msgs/Pose _centroid
    (send _centroid :serialization-length)
    ;; std_msgs/Float32 _length
    (send _length :serialization-length)
    ;; std_msgs/Int32 _clusterID
    (send _clusterID :serialization-length)
    ;; std_msgs/Int32 _lineID
    (send _lineID :serialization-length)
    ;; visualization_msgs/Marker _marker
    (send _marker :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/PointCloud2 _cloud
       (send _cloud :serialize s)
     ;; pcl_msgs/PointIndices _points
       (send _points :serialize s)
     ;; pcl_msgs/ModelCoefficients _coefficients
       (send _coefficients :serialize s)
     ;; geometry_msgs/Pose _centroid
       (send _centroid :serialize s)
     ;; std_msgs/Float32 _length
       (send _length :serialize s)
     ;; std_msgs/Int32 _clusterID
       (send _clusterID :serialize s)
     ;; std_msgs/Int32 _lineID
       (send _lineID :serialize s)
     ;; visualization_msgs/Marker _marker
       (send _marker :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/PointCloud2 _cloud
     (send _cloud :deserialize buf ptr-) (incf ptr- (send _cloud :serialization-length))
   ;; pcl_msgs/PointIndices _points
     (send _points :deserialize buf ptr-) (incf ptr- (send _points :serialization-length))
   ;; pcl_msgs/ModelCoefficients _coefficients
     (send _coefficients :deserialize buf ptr-) (incf ptr- (send _coefficients :serialization-length))
   ;; geometry_msgs/Pose _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;; std_msgs/Float32 _length
     (send _length :deserialize buf ptr-) (incf ptr- (send _length :serialization-length))
   ;; std_msgs/Int32 _clusterID
     (send _clusterID :deserialize buf ptr-) (incf ptr- (send _clusterID :serialization-length))
   ;; std_msgs/Int32 _lineID
     (send _lineID :deserialize buf ptr-) (incf ptr- (send _lineID :serialization-length))
   ;; visualization_msgs/Marker _marker
     (send _marker :deserialize buf ptr-) (incf ptr- (send _marker :serialization-length))
   ;;
   self)
  )

(setf (get mirror_detect::Line :md5sum-) "8c607fa17c6dc912977f417ffd910f85")
(setf (get mirror_detect::Line :datatype-) "mirror_detect/Line")
(setf (get mirror_detect::Line :definition-)
      "std_msgs/Header header
sensor_msgs/PointCloud2 cloud
pcl_msgs/PointIndices points
pcl_msgs/ModelCoefficients coefficients
geometry_msgs/Pose centroid
std_msgs/Float32 length
std_msgs/Int32 clusterID
std_msgs/Int32 lineID
visualization_msgs/Marker marker

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
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: pcl_msgs/PointIndices
Header header
int32[] indices


================================================================================
MSG: pcl_msgs/ModelCoefficients
Header header
float32[] values


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
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/Int32
int32 data
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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :mirror_detect/Line "8c607fa17c6dc912977f417ffd910f85")


