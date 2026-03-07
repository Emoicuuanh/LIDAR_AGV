// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ErrorRobotToPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_angle = null;
      this.error_position = null;
    }
    else {
      if (initObj.hasOwnProperty('error_angle')) {
        this.error_angle = initObj.error_angle
      }
      else {
        this.error_angle = 0.0;
      }
      if (initObj.hasOwnProperty('error_position')) {
        this.error_position = initObj.error_position
      }
      else {
        this.error_position = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ErrorRobotToPath
    // Serialize message field [error_angle]
    bufferOffset = _serializer.float64(obj.error_angle, buffer, bufferOffset);
    // Serialize message field [error_position]
    bufferOffset = _serializer.float64(obj.error_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorRobotToPath
    let len;
    let data = new ErrorRobotToPath(null);
    // Deserialize message field [error_angle]
    data.error_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error_position]
    data.error_position = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/ErrorRobotToPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dfe8fe7d4e33da3bdbaadca9414e0299';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 error_angle
    float64 error_position
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ErrorRobotToPath(null);
    if (msg.error_angle !== undefined) {
      resolved.error_angle = msg.error_angle;
    }
    else {
      resolved.error_angle = 0.0
    }

    if (msg.error_position !== undefined) {
      resolved.error_position = msg.error_position;
    }
    else {
      resolved.error_position = 0.0
    }

    return resolved;
    }
};

module.exports = ErrorRobotToPath;
