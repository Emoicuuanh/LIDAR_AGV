// Auto-generated. Do not edit!

// (in-package docking.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let visualization_msgs = _finder('visualization_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LineOfSight {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.endPoint = null;
      this.length = null;
      this.slope = null;
      this.arrow = null;
      this.delta = null;
      this.phi = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('endPoint')) {
        this.endPoint = initObj.endPoint
      }
      else {
        this.endPoint = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('slope')) {
        this.slope = initObj.slope
      }
      else {
        this.slope = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('arrow')) {
        this.arrow = initObj.arrow
      }
      else {
        this.arrow = new visualization_msgs.msg.Marker();
      }
      if (initObj.hasOwnProperty('delta')) {
        this.delta = initObj.delta
      }
      else {
        this.delta = new std_msgs.msg.Float32();
      }
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = new std_msgs.msg.Float32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LineOfSight
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [endPoint]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.endPoint, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.length, buffer, bufferOffset);
    // Serialize message field [slope]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.slope, buffer, bufferOffset);
    // Serialize message field [arrow]
    bufferOffset = visualization_msgs.msg.Marker.serialize(obj.arrow, buffer, bufferOffset);
    // Serialize message field [delta]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.delta, buffer, bufferOffset);
    // Serialize message field [phi]
    bufferOffset = std_msgs.msg.Float32.serialize(obj.phi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LineOfSight
    let len;
    let data = new LineOfSight(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [endPoint]
    data.endPoint = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [slope]
    data.slope = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [arrow]
    data.arrow = visualization_msgs.msg.Marker.deserialize(buffer, bufferOffset);
    // Deserialize message field [delta]
    data.delta = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    // Deserialize message field [phi]
    data.phi = std_msgs.msg.Float32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += visualization_msgs.msg.Marker.getMessageSize(object.arrow);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'docking/LineOfSight';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '118e20594c8cc96bcd681c83a206d0ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/Vector3 endPoint
    std_msgs/Float32 length
    std_msgs/Float32 slope
    visualization_msgs/Marker arrow
    std_msgs/Float32 delta # Angle between LOS and Robot Frame X Axis
    std_msgs/Float32 phi # Angle between LOS and Dock Frame X Axis
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
    MSG: std_msgs/Float32
    float32 data
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
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LineOfSight(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.endPoint !== undefined) {
      resolved.endPoint = geometry_msgs.msg.Vector3.Resolve(msg.endPoint)
    }
    else {
      resolved.endPoint = new geometry_msgs.msg.Vector3()
    }

    if (msg.length !== undefined) {
      resolved.length = std_msgs.msg.Float32.Resolve(msg.length)
    }
    else {
      resolved.length = new std_msgs.msg.Float32()
    }

    if (msg.slope !== undefined) {
      resolved.slope = std_msgs.msg.Float32.Resolve(msg.slope)
    }
    else {
      resolved.slope = new std_msgs.msg.Float32()
    }

    if (msg.arrow !== undefined) {
      resolved.arrow = visualization_msgs.msg.Marker.Resolve(msg.arrow)
    }
    else {
      resolved.arrow = new visualization_msgs.msg.Marker()
    }

    if (msg.delta !== undefined) {
      resolved.delta = std_msgs.msg.Float32.Resolve(msg.delta)
    }
    else {
      resolved.delta = new std_msgs.msg.Float32()
    }

    if (msg.phi !== undefined) {
      resolved.phi = std_msgs.msg.Float32.Resolve(msg.phi)
    }
    else {
      resolved.phi = new std_msgs.msg.Float32()
    }

    return resolved;
    }
};

module.exports = LineOfSight;
