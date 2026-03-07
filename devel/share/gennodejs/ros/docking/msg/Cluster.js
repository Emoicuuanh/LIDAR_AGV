// Auto-generated. Do not edit!

// (in-package docking.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BoundingBox = require('./BoundingBox.js');
let LineArray = require('./LineArray.js');
let ICP = require('./ICP.js');
let sensor_msgs = _finder('sensor_msgs');
let pcl_msgs = _finder('pcl_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Cluster {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cloud = null;
      this.points = null;
      this.bbox = null;
      this.clusterID = null;
      this.lines = null;
      this.icp = null;
      this.icpCombinedCloud = null;
      this.isDock = null;
      this.potentialDock = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cloud')) {
        this.cloud = initObj.cloud
      }
      else {
        this.cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = new pcl_msgs.msg.PointIndices();
      }
      if (initObj.hasOwnProperty('bbox')) {
        this.bbox = initObj.bbox
      }
      else {
        this.bbox = new BoundingBox();
      }
      if (initObj.hasOwnProperty('clusterID')) {
        this.clusterID = initObj.clusterID
      }
      else {
        this.clusterID = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('lines')) {
        this.lines = initObj.lines
      }
      else {
        this.lines = new LineArray();
      }
      if (initObj.hasOwnProperty('icp')) {
        this.icp = initObj.icp
      }
      else {
        this.icp = new ICP();
      }
      if (initObj.hasOwnProperty('icpCombinedCloud')) {
        this.icpCombinedCloud = initObj.icpCombinedCloud
      }
      else {
        this.icpCombinedCloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('isDock')) {
        this.isDock = initObj.isDock
      }
      else {
        this.isDock = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('potentialDock')) {
        this.potentialDock = initObj.potentialDock
      }
      else {
        this.potentialDock = new std_msgs.msg.Bool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cluster
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.cloud, buffer, bufferOffset);
    // Serialize message field [points]
    bufferOffset = pcl_msgs.msg.PointIndices.serialize(obj.points, buffer, bufferOffset);
    // Serialize message field [bbox]
    bufferOffset = BoundingBox.serialize(obj.bbox, buffer, bufferOffset);
    // Serialize message field [clusterID]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.clusterID, buffer, bufferOffset);
    // Serialize message field [lines]
    bufferOffset = LineArray.serialize(obj.lines, buffer, bufferOffset);
    // Serialize message field [icp]
    bufferOffset = ICP.serialize(obj.icp, buffer, bufferOffset);
    // Serialize message field [icpCombinedCloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.icpCombinedCloud, buffer, bufferOffset);
    // Serialize message field [isDock]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.isDock, buffer, bufferOffset);
    // Serialize message field [potentialDock]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.potentialDock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cluster
    let len;
    let data = new Cluster(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud]
    data.cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [points]
    data.points = pcl_msgs.msg.PointIndices.deserialize(buffer, bufferOffset);
    // Deserialize message field [bbox]
    data.bbox = BoundingBox.deserialize(buffer, bufferOffset);
    // Deserialize message field [clusterID]
    data.clusterID = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [lines]
    data.lines = LineArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [icp]
    data.icp = ICP.deserialize(buffer, bufferOffset);
    // Deserialize message field [icpCombinedCloud]
    data.icpCombinedCloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [isDock]
    data.isDock = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [potentialDock]
    data.potentialDock = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.cloud);
    length += pcl_msgs.msg.PointIndices.getMessageSize(object.points);
    length += BoundingBox.getMessageSize(object.bbox);
    length += LineArray.getMessageSize(object.lines);
    length += ICP.getMessageSize(object.icp);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.icpCombinedCloud);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'docking/Cluster';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '02daab748633aad9b1c9e2b830f65829';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    # contents of the "fields" array.
    
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
    # <a href="http://wiki.ros.org/tf">tf</a> package. 
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cluster(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cloud !== undefined) {
      resolved.cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.cloud)
    }
    else {
      resolved.cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.points !== undefined) {
      resolved.points = pcl_msgs.msg.PointIndices.Resolve(msg.points)
    }
    else {
      resolved.points = new pcl_msgs.msg.PointIndices()
    }

    if (msg.bbox !== undefined) {
      resolved.bbox = BoundingBox.Resolve(msg.bbox)
    }
    else {
      resolved.bbox = new BoundingBox()
    }

    if (msg.clusterID !== undefined) {
      resolved.clusterID = std_msgs.msg.Int32.Resolve(msg.clusterID)
    }
    else {
      resolved.clusterID = new std_msgs.msg.Int32()
    }

    if (msg.lines !== undefined) {
      resolved.lines = LineArray.Resolve(msg.lines)
    }
    else {
      resolved.lines = new LineArray()
    }

    if (msg.icp !== undefined) {
      resolved.icp = ICP.Resolve(msg.icp)
    }
    else {
      resolved.icp = new ICP()
    }

    if (msg.icpCombinedCloud !== undefined) {
      resolved.icpCombinedCloud = sensor_msgs.msg.PointCloud2.Resolve(msg.icpCombinedCloud)
    }
    else {
      resolved.icpCombinedCloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.isDock !== undefined) {
      resolved.isDock = std_msgs.msg.Bool.Resolve(msg.isDock)
    }
    else {
      resolved.isDock = new std_msgs.msg.Bool()
    }

    if (msg.potentialDock !== undefined) {
      resolved.potentialDock = std_msgs.msg.Bool.Resolve(msg.potentialDock)
    }
    else {
      resolved.potentialDock = new std_msgs.msg.Bool()
    }

    return resolved;
    }
};

module.exports = Cluster;
