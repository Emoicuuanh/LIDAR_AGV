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

class DiffDriverMotorSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Direction = null;
      this.BaseSpeed = null;
      this.Left = null;
      this.Right = null;
      this.Break = null;
    }
    else {
      if (initObj.hasOwnProperty('Direction')) {
        this.Direction = initObj.Direction
      }
      else {
        this.Direction = false;
      }
      if (initObj.hasOwnProperty('BaseSpeed')) {
        this.BaseSpeed = initObj.BaseSpeed
      }
      else {
        this.BaseSpeed = 0;
      }
      if (initObj.hasOwnProperty('Left')) {
        this.Left = initObj.Left
      }
      else {
        this.Left = 0.0;
      }
      if (initObj.hasOwnProperty('Right')) {
        this.Right = initObj.Right
      }
      else {
        this.Right = 0.0;
      }
      if (initObj.hasOwnProperty('Break')) {
        this.Break = initObj.Break
      }
      else {
        this.Break = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiffDriverMotorSpeed
    // Serialize message field [Direction]
    bufferOffset = _serializer.bool(obj.Direction, buffer, bufferOffset);
    // Serialize message field [BaseSpeed]
    bufferOffset = _serializer.int16(obj.BaseSpeed, buffer, bufferOffset);
    // Serialize message field [Left]
    bufferOffset = _serializer.float32(obj.Left, buffer, bufferOffset);
    // Serialize message field [Right]
    bufferOffset = _serializer.float32(obj.Right, buffer, bufferOffset);
    // Serialize message field [Break]
    bufferOffset = _serializer.bool(obj.Break, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiffDriverMotorSpeed
    let len;
    let data = new DiffDriverMotorSpeed(null);
    // Deserialize message field [Direction]
    data.Direction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [BaseSpeed]
    data.BaseSpeed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Left]
    data.Left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Right]
    data.Right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Break]
    data.Break = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/DiffDriverMotorSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd5fbb3f71154e3a8fc658dbedadf9d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool Direction # Forward = 0, Backward = 1
    int16 BaseSpeed # 0 -> 255
    float32 Left # 0 -> 100
    float32 Right # 0 -> 100
    bool Break
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DiffDriverMotorSpeed(null);
    if (msg.Direction !== undefined) {
      resolved.Direction = msg.Direction;
    }
    else {
      resolved.Direction = false
    }

    if (msg.BaseSpeed !== undefined) {
      resolved.BaseSpeed = msg.BaseSpeed;
    }
    else {
      resolved.BaseSpeed = 0
    }

    if (msg.Left !== undefined) {
      resolved.Left = msg.Left;
    }
    else {
      resolved.Left = 0.0
    }

    if (msg.Right !== undefined) {
      resolved.Right = msg.Right;
    }
    else {
      resolved.Right = 0.0
    }

    if (msg.Break !== undefined) {
      resolved.Break = msg.Break;
    }
    else {
      resolved.Break = false
    }

    return resolved;
    }
};

module.exports = DiffDriverMotorSpeed;
