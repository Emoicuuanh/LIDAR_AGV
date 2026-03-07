// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetRobotStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotStatusRequest
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotStatusRequest
    let len;
    let data = new GetRobotStatusRequest(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tuw_multi_robot_msgs/GetRobotStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '889a1d391e36604c7ce79bf95df72cb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_name  # Node A gửi tên robot
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRobotStatusRequest(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    return resolved;
    }
};

class GetRobotStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detail_status_run_pause_by_route = null;
      this.detail_status_run_pause_by_detect_collision = null;
      this.is_pause_by_route = null;
      this.is_pause_by_detect_collision = null;
    }
    else {
      if (initObj.hasOwnProperty('detail_status_run_pause_by_route')) {
        this.detail_status_run_pause_by_route = initObj.detail_status_run_pause_by_route
      }
      else {
        this.detail_status_run_pause_by_route = '';
      }
      if (initObj.hasOwnProperty('detail_status_run_pause_by_detect_collision')) {
        this.detail_status_run_pause_by_detect_collision = initObj.detail_status_run_pause_by_detect_collision
      }
      else {
        this.detail_status_run_pause_by_detect_collision = '';
      }
      if (initObj.hasOwnProperty('is_pause_by_route')) {
        this.is_pause_by_route = initObj.is_pause_by_route
      }
      else {
        this.is_pause_by_route = false;
      }
      if (initObj.hasOwnProperty('is_pause_by_detect_collision')) {
        this.is_pause_by_detect_collision = initObj.is_pause_by_detect_collision
      }
      else {
        this.is_pause_by_detect_collision = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRobotStatusResponse
    // Serialize message field [detail_status_run_pause_by_route]
    bufferOffset = _serializer.string(obj.detail_status_run_pause_by_route, buffer, bufferOffset);
    // Serialize message field [detail_status_run_pause_by_detect_collision]
    bufferOffset = _serializer.string(obj.detail_status_run_pause_by_detect_collision, buffer, bufferOffset);
    // Serialize message field [is_pause_by_route]
    bufferOffset = _serializer.bool(obj.is_pause_by_route, buffer, bufferOffset);
    // Serialize message field [is_pause_by_detect_collision]
    bufferOffset = _serializer.bool(obj.is_pause_by_detect_collision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRobotStatusResponse
    let len;
    let data = new GetRobotStatusResponse(null);
    // Deserialize message field [detail_status_run_pause_by_route]
    data.detail_status_run_pause_by_route = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detail_status_run_pause_by_detect_collision]
    data.detail_status_run_pause_by_detect_collision = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_pause_by_route]
    data.is_pause_by_route = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_pause_by_detect_collision]
    data.is_pause_by_detect_collision = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.detail_status_run_pause_by_route);
    length += _getByteLength(object.detail_status_run_pause_by_detect_collision);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tuw_multi_robot_msgs/GetRobotStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e0181cc2948e5b629415138d14801dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string detail_status_run_pause_by_route
    string detail_status_run_pause_by_detect_collision
    bool is_pause_by_route
    bool is_pause_by_detect_collision
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRobotStatusResponse(null);
    if (msg.detail_status_run_pause_by_route !== undefined) {
      resolved.detail_status_run_pause_by_route = msg.detail_status_run_pause_by_route;
    }
    else {
      resolved.detail_status_run_pause_by_route = ''
    }

    if (msg.detail_status_run_pause_by_detect_collision !== undefined) {
      resolved.detail_status_run_pause_by_detect_collision = msg.detail_status_run_pause_by_detect_collision;
    }
    else {
      resolved.detail_status_run_pause_by_detect_collision = ''
    }

    if (msg.is_pause_by_route !== undefined) {
      resolved.is_pause_by_route = msg.is_pause_by_route;
    }
    else {
      resolved.is_pause_by_route = false
    }

    if (msg.is_pause_by_detect_collision !== undefined) {
      resolved.is_pause_by_detect_collision = msg.is_pause_by_detect_collision;
    }
    else {
      resolved.is_pause_by_detect_collision = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRobotStatusRequest,
  Response: GetRobotStatusResponse,
  md5sum() { return 'ab256237ff1a2b88df7251fe3daff94b'; },
  datatype() { return 'tuw_multi_robot_msgs/GetRobotStatus'; }
};
