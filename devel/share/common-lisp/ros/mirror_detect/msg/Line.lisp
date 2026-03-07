; Auto-generated. Do not edit!


(cl:in-package mirror_detect-msg)


;//! \htmlinclude Line.msg.html

(cl:defclass <Line> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cloud
    :reader cloud
    :initarg :cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (points
    :reader points
    :initarg :points
    :type pcl_msgs-msg:PointIndices
    :initform (cl:make-instance 'pcl_msgs-msg:PointIndices))
   (coefficients
    :reader coefficients
    :initarg :coefficients
    :type pcl_msgs-msg:ModelCoefficients
    :initform (cl:make-instance 'pcl_msgs-msg:ModelCoefficients))
   (centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (length
    :reader length
    :initarg :length
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (clusterID
    :reader clusterID
    :initarg :clusterID
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (lineID
    :reader lineID
    :initarg :lineID
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (marker
    :reader marker
    :initarg :marker
    :type visualization_msgs-msg:Marker
    :initform (cl:make-instance 'visualization_msgs-msg:Marker)))
)

(cl:defclass Line (<Line>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Line>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Line)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mirror_detect-msg:<Line> is deprecated: use mirror_detect-msg:Line instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:header-val is deprecated.  Use mirror_detect-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cloud-val :lambda-list '(m))
(cl:defmethod cloud-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:cloud-val is deprecated.  Use mirror_detect-msg:cloud instead.")
  (cloud m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:points-val is deprecated.  Use mirror_detect-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'coefficients-val :lambda-list '(m))
(cl:defmethod coefficients-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:coefficients-val is deprecated.  Use mirror_detect-msg:coefficients instead.")
  (coefficients m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:centroid-val is deprecated.  Use mirror_detect-msg:centroid instead.")
  (centroid m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:length-val is deprecated.  Use mirror_detect-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'clusterID-val :lambda-list '(m))
(cl:defmethod clusterID-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:clusterID-val is deprecated.  Use mirror_detect-msg:clusterID instead.")
  (clusterID m))

(cl:ensure-generic-function 'lineID-val :lambda-list '(m))
(cl:defmethod lineID-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:lineID-val is deprecated.  Use mirror_detect-msg:lineID instead.")
  (lineID m))

(cl:ensure-generic-function 'marker-val :lambda-list '(m))
(cl:defmethod marker-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:marker-val is deprecated.  Use mirror_detect-msg:marker instead.")
  (marker m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Line>) ostream)
  "Serializes a message object of type '<Line>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'points) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coefficients) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'length) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'clusterID) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lineID) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'marker) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Line>) istream)
  "Deserializes a message object of type '<Line>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'points) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coefficients) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'length) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'clusterID) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lineID) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'marker) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Line>)))
  "Returns string type for a message object of type '<Line>"
  "mirror_detect/Line")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Line)))
  "Returns string type for a message object of type 'Line"
  "mirror_detect/Line")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Line>)))
  "Returns md5sum for a message object of type '<Line>"
  "8c607fa17c6dc912977f417ffd910f85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Line)))
  "Returns md5sum for a message object of type 'Line"
  "8c607fa17c6dc912977f417ffd910f85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Line>)))
  "Returns full string definition for message of type '<Line>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/PointCloud2 cloud~%pcl_msgs/PointIndices points~%pcl_msgs/ModelCoefficients coefficients~%geometry_msgs/Pose centroid~%std_msgs/Float32 length~%std_msgs/Int32 clusterID~%std_msgs/Int32 lineID~%visualization_msgs/Marker marker~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: pcl_msgs/PointIndices~%Header header~%int32[] indices~%~%~%================================================================================~%MSG: pcl_msgs/ModelCoefficients~%Header header~%float32[] values~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%uint8 DELETEALL=3~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Line)))
  "Returns full string definition for message of type 'Line"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/PointCloud2 cloud~%pcl_msgs/PointIndices points~%pcl_msgs/ModelCoefficients coefficients~%geometry_msgs/Pose centroid~%std_msgs/Float32 length~%std_msgs/Int32 clusterID~%std_msgs/Int32 lineID~%visualization_msgs/Marker marker~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: pcl_msgs/PointIndices~%Header header~%int32[] indices~%~%~%================================================================================~%MSG: pcl_msgs/ModelCoefficients~%Header header~%float32[] values~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%uint8 DELETEALL=3~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Line>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'points))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coefficients))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'length))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'clusterID))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lineID))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'marker))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Line>))
  "Converts a ROS message object to a list"
  (cl:list 'Line
    (cl:cons ':header (header msg))
    (cl:cons ':cloud (cloud msg))
    (cl:cons ':points (points msg))
    (cl:cons ':coefficients (coefficients msg))
    (cl:cons ':centroid (centroid msg))
    (cl:cons ':length (length msg))
    (cl:cons ':clusterID (clusterID msg))
    (cl:cons ':lineID (lineID msg))
    (cl:cons ':marker (marker msg))
))
