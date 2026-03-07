// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RouterStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.success = null;
      this.current_planning_robot = null;
      this.active_robots = null;
      this.missing_robots = null;
      this.duration = null;
      this.overall_path_length = null;
      this.longest_path_length = null;
      this.priority_scheduling_attempts = null;
      this.speed_scheduling_attempts = null;
      this.error_code = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('current_planning_robot')) {
        this.current_planning_robot = initObj.current_planning_robot
      }
      else {
        this.current_planning_robot = '';
      }
      if (initObj.hasOwnProperty('active_robots')) {
        this.active_robots = initObj.active_robots
      }
      else {
        this.active_robots = [];
      }
      if (initObj.hasOwnProperty('missing_robots')) {
        this.missing_robots = initObj.missing_robots
      }
      else {
        this.missing_robots = [];
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('overall_path_length')) {
        this.overall_path_length = initObj.overall_path_length
      }
      else {
        this.overall_path_length = 0;
      }
      if (initObj.hasOwnProperty('longest_path_length')) {
        this.longest_path_length = initObj.longest_path_length
      }
      else {
        this.longest_path_length = 0;
      }
      if (initObj.hasOwnProperty('priority_scheduling_attempts')) {
        this.priority_scheduling_attempts = initObj.priority_scheduling_attempts
      }
      else {
        this.priority_scheduling_attempts = 0;
      }
      if (initObj.hasOwnProperty('speed_scheduling_attempts')) {
        this.speed_scheduling_attempts = initObj.speed_scheduling_attempts
      }
      else {
        this.speed_scheduling_attempts = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouterStatus
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [current_planning_robot]
    bufferOffset = _serializer.string(obj.current_planning_robot, buffer, bufferOffset);
    // Serialize message field [active_robots]
    bufferOffset = _arraySerializer.string(obj.active_robots, buffer, bufferOffset, null);
    // Serialize message field [missing_robots]
    bufferOffset = _arraySerializer.string(obj.missing_robots, buffer, bufferOffset, null);
    // Serialize message field [duration]
    bufferOffset = _serializer.int32(obj.duration, buffer, bufferOffset);
    // Serialize message field [overall_path_length]
    bufferOffset = _serializer.int32(obj.overall_path_length, buffer, bufferOffset);
    // Serialize message field [longest_path_length]
    bufferOffset = _serializer.int32(obj.longest_path_length, buffer, bufferOffset);
    // Serialize message field [priority_scheduling_attempts]
    bufferOffset = _serializer.int32(obj.priority_scheduling_attempts, buffer, bufferOffset);
    // Serialize message field [speed_scheduling_attempts]
    bufferOffset = _serializer.int32(obj.speed_scheduling_attempts, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.string(obj.error_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouterStatus
    let len;
    let data = new RouterStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [current_planning_robot]
    data.current_planning_robot = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [active_robots]
    data.active_robots = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [missing_robots]
    data.missing_robots = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [duration]
    data.duration = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [overall_path_length]
    data.overall_path_length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [longest_path_length]
    data.longest_path_length = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [priority_scheduling_attempts]
    data.priority_scheduling_attempts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_scheduling_attempts]
    data.speed_scheduling_attempts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.current_planning_robot);
    object.active_robots.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.missing_robots.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.error_code);
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RouterStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12b84073f615141f7e5cf477f238bb5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## A message to publish the status of the last route
    ## generation
    #################################################################
    
    int32 id # the unique id of the new plan
    bool success # true if a routing table was found to the given scenario
    string current_planning_robot
    string[] active_robots
    string[] missing_robots # if the plan fails because of absent robots, these robots are listed here
    int32 duration # the time until a routing table was found
    int32 overall_path_length # the overall path length in the routing table (calculated using weights)
    int32 longest_path_length # the longest path length in a routing table (calculated using weights)
    int32 priority_scheduling_attempts # shows how often robot priorities are exchanged
    int32 speed_scheduling_attempts # shows how many robots speed was reduced during planning
    string error_code
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouterStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.current_planning_robot !== undefined) {
      resolved.current_planning_robot = msg.current_planning_robot;
    }
    else {
      resolved.current_planning_robot = ''
    }

    if (msg.active_robots !== undefined) {
      resolved.active_robots = msg.active_robots;
    }
    else {
      resolved.active_robots = []
    }

    if (msg.missing_robots !== undefined) {
      resolved.missing_robots = msg.missing_robots;
    }
    else {
      resolved.missing_robots = []
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.overall_path_length !== undefined) {
      resolved.overall_path_length = msg.overall_path_length;
    }
    else {
      resolved.overall_path_length = 0
    }

    if (msg.longest_path_length !== undefined) {
      resolved.longest_path_length = msg.longest_path_length;
    }
    else {
      resolved.longest_path_length = 0
    }

    if (msg.priority_scheduling_attempts !== undefined) {
      resolved.priority_scheduling_attempts = msg.priority_scheduling_attempts;
    }
    else {
      resolved.priority_scheduling_attempts = 0
    }

    if (msg.speed_scheduling_attempts !== undefined) {
      resolved.speed_scheduling_attempts = msg.speed_scheduling_attempts;
    }
    else {
      resolved.speed_scheduling_attempts = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = ''
    }

    return resolved;
    }
};

module.exports = RouterStatus;
