// Auto-generated. Do not edit!

// (in-package agv_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let WaypointGlobal = require('../msg/WaypointGlobal.js');

//-----------------------------------------------------------

class WaypointsPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointsPathRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointsPathRequest
    let len;
    let data = new WaypointsPathRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_msgs/WaypointsPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointsPathRequest(null);
    return resolved;
    }
};

class WaypointsPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Waypoints = null;
      this.use_lidar = null;
    }
    else {
      if (initObj.hasOwnProperty('Waypoints')) {
        this.Waypoints = initObj.Waypoints
      }
      else {
        this.Waypoints = [];
      }
      if (initObj.hasOwnProperty('use_lidar')) {
        this.use_lidar = initObj.use_lidar
      }
      else {
        this.use_lidar = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointsPathResponse
    // Serialize message field [Waypoints]
    // Serialize the length for message field [Waypoints]
    bufferOffset = _serializer.uint32(obj.Waypoints.length, buffer, bufferOffset);
    obj.Waypoints.forEach((val) => {
      bufferOffset = WaypointGlobal.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [use_lidar]
    bufferOffset = _serializer.bool(obj.use_lidar, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointsPathResponse
    let len;
    let data = new WaypointsPathResponse(null);
    // Deserialize message field [Waypoints]
    // Deserialize array length for message field [Waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Waypoints[i] = WaypointGlobal.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [use_lidar]
    data.use_lidar = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.Waypoints.forEach((val) => {
      length += WaypointGlobal.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_msgs/WaypointsPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2db582d2ba373ee4ec120bf4766af126';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    WaypointGlobal[] Waypoints
    bool use_lidar
    
    ================================================================================
    MSG: agv_msgs/WaypointGlobal
    geometry_msgs/PoseStamped Pose
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointsPathResponse(null);
    if (msg.Waypoints !== undefined) {
      resolved.Waypoints = new Array(msg.Waypoints.length);
      for (let i = 0; i < resolved.Waypoints.length; ++i) {
        resolved.Waypoints[i] = WaypointGlobal.Resolve(msg.Waypoints[i]);
      }
    }
    else {
      resolved.Waypoints = []
    }

    if (msg.use_lidar !== undefined) {
      resolved.use_lidar = msg.use_lidar;
    }
    else {
      resolved.use_lidar = false
    }

    return resolved;
    }
};

module.exports = {
  Request: WaypointsPathRequest,
  Response: WaypointsPathResponse,
  md5sum() { return '2db582d2ba373ee4ec120bf4766af126'; },
  datatype() { return 'agv_msgs/WaypointsPath'; }
};
