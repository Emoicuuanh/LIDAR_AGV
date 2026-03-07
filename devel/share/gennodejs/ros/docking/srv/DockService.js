// Auto-generated. Do not edit!

// (in-package docking.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class DockServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose_target = null;
      this.enable_detect = null;
      this.use_scan_merge = null;
    }
    else {
      if (initObj.hasOwnProperty('pose_target')) {
        this.pose_target = initObj.pose_target
      }
      else {
        this.pose_target = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('enable_detect')) {
        this.enable_detect = initObj.enable_detect
      }
      else {
        this.enable_detect = false;
      }
      if (initObj.hasOwnProperty('use_scan_merge')) {
        this.use_scan_merge = initObj.use_scan_merge
      }
      else {
        this.use_scan_merge = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockServiceRequest
    // Serialize message field [pose_target]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose_target, buffer, bufferOffset);
    // Serialize message field [enable_detect]
    bufferOffset = _serializer.bool(obj.enable_detect, buffer, bufferOffset);
    // Serialize message field [use_scan_merge]
    bufferOffset = _serializer.bool(obj.use_scan_merge, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockServiceRequest
    let len;
    let data = new DockServiceRequest(null);
    // Deserialize message field [pose_target]
    data.pose_target = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [enable_detect]
    data.enable_detect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_scan_merge]
    data.use_scan_merge = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 58;
  }

  static datatype() {
    // Returns string type for a service object
    return 'docking/DockServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0d2310575e388a4e8074040e836bd0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose pose_target
    bool enable_detect
    bool use_scan_merge
    
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
    const resolved = new DockServiceRequest(null);
    if (msg.pose_target !== undefined) {
      resolved.pose_target = geometry_msgs.msg.Pose.Resolve(msg.pose_target)
    }
    else {
      resolved.pose_target = new geometry_msgs.msg.Pose()
    }

    if (msg.enable_detect !== undefined) {
      resolved.enable_detect = msg.enable_detect;
    }
    else {
      resolved.enable_detect = false
    }

    if (msg.use_scan_merge !== undefined) {
      resolved.use_scan_merge = msg.use_scan_merge;
    }
    else {
      resolved.use_scan_merge = false
    }

    return resolved;
    }
};

class DockServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DockServiceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DockServiceResponse
    let len;
    let data = new DockServiceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'docking/DockServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DockServiceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: DockServiceRequest,
  Response: DockServiceResponse,
  md5sum() { return '61a574ebc6ea32888de3ea49d447d92c'; },
  datatype() { return 'docking/DockService'; }
};
