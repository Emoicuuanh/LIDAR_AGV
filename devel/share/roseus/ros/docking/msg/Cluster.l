;; Auto-generated. Do not edit!


(when (boundp 'docking::Cluster)
  (if (not (find-package "DOCKING"))
    (make-package "DOCKING"))
  (shadow 'Cluster (find-package "DOCKING")))
(unless (find-package "DOCKING::CLUSTER")
  (make-package "DOCKING::CLUSTER"))

(in-package "ROS")
;;//! \htmlinclude Cluster.msg.html
(if (not (find-package "PCL_MSGS"))
  (ros::roseus-add-msgs "pcl_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass docking::Cluster
  :super ros::object
  :slots (_header _cloud _points _bbox _clusterID _lines _icp _icpCombinedCloud _isDock _potentialDock ))

(defmethod docking::Cluster
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cloud __cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:points __points) (instance pcl_msgs::PointIndices :init))
    ((:bbox __bbox) (instance docking::BoundingBox :init))
    ((:clusterID __clusterID) (instance std_msgs::Int32 :init))
    ((:lines __lines) (instance docking::LineArray :init))
    ((:icp __icp) (instance docking::ICP :init))
    ((:icpCombinedCloud __icpCombinedCloud) (instance sensor_msgs::PointCloud2 :init))
    ((:isDock __isDock) (instance std_msgs::Bool :init))
    ((:potentialDock __potentialDock) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cloud __cloud)
   (setq _points __points)
   (setq _bbox __bbox)
   (setq _clusterID __clusterID)
   (setq _lines __lines)
   (setq _icp __icp)
   (setq _icpCombinedCloud __icpCombinedCloud)
   (setq _isDock __isDock)
   (setq _potentialDock __potentialDock)
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
  (:bbox
   (&rest __bbox)
   (if (keywordp (car __bbox))
       (send* _bbox __bbox)
     (progn
       (if __bbox (setq _bbox (car __bbox)))
       _bbox)))
  (:clusterID
   (&rest __clusterID)
   (if (keywordp (car __clusterID))
       (send* _clusterID __clusterID)
     (progn
       (if __clusterID (setq _clusterID (car __clusterID)))
       _clusterID)))
  (:lines
   (&rest __lines)
   (if (keywordp (car __lines))
       (send* _lines __lines)
     (progn
       (if __lines (setq _lines (car __lines)))
       _lines)))
  (:icp
   (&rest __icp)
   (if (keywordp (car __icp))
       (send* _icp __icp)
     (progn
       (if __icp (setq _icp (car __icp)))
       _icp)))
  (:icpCombinedCloud
   (&rest __icpCombinedCloud)
   (if (keywordp (car __icpCombinedCloud))
       (send* _icpCombinedCloud __icpCombinedCloud)
     (progn
       (if __icpCombinedCloud (setq _icpCombinedCloud (car __icpCombinedCloud)))
       _icpCombinedCloud)))
  (:isDock
   (&rest __isDock)
   (if (keywordp (car __isDock))
       (send* _isDock __isDock)
     (progn
       (if __isDock (setq _isDock (car __isDock)))
       _isDock)))
  (:potentialDock
   (&rest __potentialDock)
   (if (keywordp (car __potentialDock))
       (send* _potentialDock __potentialDock)
     (progn
       (if __potentialDock (setq _potentialDock (car __potentialDock)))
       _potentialDock)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/PointCloud2 _cloud
    (send _cloud :serialization-length)
    ;; pcl_msgs/PointIndices _points
    (send _points :serialization-length)
    ;; docking/BoundingBox _bbox
    (send _bbox :serialization-length)
    ;; std_msgs/Int32 _clusterID
    (send _clusterID :serialization-length)
    ;; docking/LineArray _lines
    (send _lines :serialization-length)
    ;; docking/ICP _icp
    (send _icp :serialization-length)
    ;; sensor_msgs/PointCloud2 _icpCombinedCloud
    (send _icpCombinedCloud :serialization-length)
    ;; std_msgs/Bool _isDock
    (send _isDock :serialization-length)
    ;; std_msgs/Bool _potentialDock
    (send _potentialDock :serialization-length)
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
     ;; docking/BoundingBox _bbox
       (send _bbox :serialize s)
     ;; std_msgs/Int32 _clusterID
       (send _clusterID :serialize s)
     ;; docking/LineArray _lines
       (send _lines :serialize s)
     ;; docking/ICP _icp
       (send _icp :serialize s)
     ;; sensor_msgs/PointCloud2 _icpCombinedCloud
       (send _icpCombinedCloud :serialize s)
     ;; std_msgs/Bool _isDock
       (send _isDock :serialize s)
     ;; std_msgs/Bool _potentialDock
       (send _potentialDock :serialize s)
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
   ;; docking/BoundingBox _bbox
     (send _bbox :deserialize buf ptr-) (incf ptr- (send _bbox :serialization-length))
   ;; std_msgs/Int32 _clusterID
     (send _clusterID :deserialize buf ptr-) (incf ptr- (send _clusterID :serialization-length))
   ;; docking/LineArray _lines
     (send _lines :deserialize buf ptr-) (incf ptr- (send _lines :serialization-length))
   ;; docking/ICP _icp
     (send _icp :deserialize buf ptr-) (incf ptr- (send _icp :serialization-length))
   ;; sensor_msgs/PointCloud2 _icpCombinedCloud
     (send _icpCombinedCloud :deserialize buf ptr-) (incf ptr- (send _icpCombinedCloud :serialization-length))
   ;; std_msgs/Bool _isDock
     (send _isDock :deserialize buf ptr-) (incf ptr- (send _isDock :serialization-length))
   ;; std_msgs/Bool _potentialDock
     (send _potentialDock :deserialize buf ptr-) (incf ptr- (send _potentialDock :serialization-length))
   ;;
   self)
  )

(setf (get docking::Cluster :md5sum-) "02daab748633aad9b1c9e2b830f65829")
(setf (get docking::Cluster :datatype-) "docking/Cluster")
(setf (get docking::Cluster :definition-)
      "std_msgs/Header header
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



(provide :docking/Cluster "02daab748633aad9b1c9e2b830f65829")


