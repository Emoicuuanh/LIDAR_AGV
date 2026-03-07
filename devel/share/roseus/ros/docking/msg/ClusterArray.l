;; Auto-generated. Do not edit!


(when (boundp 'docking::ClusterArray)
  (if (not (find-package "DOCKING"))
    (make-package "DOCKING"))
  (shadow 'ClusterArray (find-package "DOCKING")))
(unless (find-package "DOCKING::CLUSTERARRAY")
  (make-package "DOCKING::CLUSTERARRAY"))

(in-package "ROS")
;;//! \htmlinclude ClusterArray.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass docking::ClusterArray
  :super ros::object
  :slots (_header _combinedCloud _clusters ))

(defmethod docking::ClusterArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:combinedCloud __combinedCloud) (instance sensor_msgs::PointCloud2 :init))
    ((:clusters __clusters) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _combinedCloud __combinedCloud)
   (setq _clusters __clusters)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:combinedCloud
   (&rest __combinedCloud)
   (if (keywordp (car __combinedCloud))
       (send* _combinedCloud __combinedCloud)
     (progn
       (if __combinedCloud (setq _combinedCloud (car __combinedCloud)))
       _combinedCloud)))
  (:clusters
   (&rest __clusters)
   (if (keywordp (car __clusters))
       (send* _clusters __clusters)
     (progn
       (if __clusters (setq _clusters (car __clusters)))
       _clusters)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/PointCloud2 _combinedCloud
    (send _combinedCloud :serialization-length)
    ;; docking/Cluster[] _clusters
    (apply #'+ (send-all _clusters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/PointCloud2 _combinedCloud
       (send _combinedCloud :serialize s)
     ;; docking/Cluster[] _clusters
     (write-long (length _clusters) s)
     (dolist (elem _clusters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/PointCloud2 _combinedCloud
     (send _combinedCloud :deserialize buf ptr-) (incf ptr- (send _combinedCloud :serialization-length))
   ;; docking/Cluster[] _clusters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clusters (let (r) (dotimes (i n) (push (instance docking::Cluster :init) r)) r))
     (dolist (elem- _clusters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get docking::ClusterArray :md5sum-) "4e69a4a815d38b46c096c858e9129268")
(setf (get docking::ClusterArray :datatype-) "docking/ClusterArray")
(setf (get docking::ClusterArray :definition-)
      "std_msgs/Header header
sensor_msgs/PointCloud2 combinedCloud
docking/Cluster[] clusters

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
MSG: docking/Cluster
std_msgs/Header header
sensor_msgs/PointCloud2 cloud
pcl_msgs/PointIndices points
docking/BoundingBox bbox
std_msgs/Int32 clusterID
docking/LineArray lines
docking/ICP icp
sensor_msgs/PointCloud2 icpCombinedCloud
std_msgs/Bool isDock
std_msgs/Bool potentialDock

================================================================================
MSG: pcl_msgs/PointIndices
Header header
int32[] indices


================================================================================
MSG: docking/BoundingBox
std_msgs/Header header
geometry_msgs/Pose pose
geometry_msgs/Point min
geometry_msgs/Point max
geometry_msgs/Vector3 dimensions
visualization_msgs/Marker marker
float64 area
float64 volume
uint32 label

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

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: docking/LineArray
std_msgs/Header header
sensor_msgs/PointCloud2 combinedCloud
docking/Line[] lines

================================================================================
MSG: docking/Line
std_msgs/Header header
sensor_msgs/PointCloud2 cloud
pcl_msgs/PointIndices points
pcl_msgs/ModelCoefficients coefficients
geometry_msgs/Pose centroid
std_msgs/Float32 length
std_msgs/Int32 clusterID
std_msgs/Int32 lineID
visualization_msgs/Marker marker

================================================================================
MSG: pcl_msgs/ModelCoefficients
Header header
float32[] values


================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: docking/ICP
std_msgs/Header header
geometry_msgs/PoseStamped poseStamped
geometry_msgs/TransformStamped transformStamped
visualization_msgs/Marker poseTextMarker
float64 score

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: std_msgs/Bool
bool data
")



(provide :docking/ClusterArray "4e69a4a815d38b46c096c858e9129268")


