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

class LedControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.type = null;
      this.duration = null;
      this.blink_interval = null;
      this.start_index = null;
      this.stop_index = null;
      this.r = null;
      this.g = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
      if (initObj.hasOwnProperty('blink_interval')) {
        this.blink_interval = initObj.blink_interval
      }
      else {
        this.blink_interval = 0;
      }
      if (initObj.hasOwnProperty('start_index')) {
        this.start_index = initObj.start_index
      }
      else {
        this.start_index = 0;
      }
      if (initObj.hasOwnProperty('stop_index')) {
        this.stop_index = initObj.stop_index
      }
      else {
        this.stop_index = 0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0;
      }
      if (initObj.hasOwnProperty('g')) {
        this.g = initObj.g
      }
      else {
        this.g = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedControl
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.uint16(obj.duration, buffer, bufferOffset);
    // Serialize message field [blink_interval]
    bufferOffset = _serializer.uint16(obj.blink_interval, buffer, bufferOffset);
    // Serialize message field [start_index]
    bufferOffset = _serializer.uint8(obj.start_index, buffer, bufferOffset);
    // Serialize message field [stop_index]
    bufferOffset = _serializer.uint8(obj.stop_index, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.uint8(obj.r, buffer, bufferOffset);
    // Serialize message field [g]
    bufferOffset = _serializer.uint8(obj.g, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.uint8(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedControl
    let len;
    let data = new LedControl(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blink_interval]
    data.blink_interval = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_index]
    data.start_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stop_index]
    data.stop_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [g]
    data.g = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/LedControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '785892508c5956b411606316386b78eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    uint8 type
    uint16 duration
    uint16 blink_interval
    uint8 start_index
    uint8 stop_index
    uint8 r
    uint8 g
    uint8 b
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedControl(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    if (msg.blink_interval !== undefined) {
      resolved.blink_interval = msg.blink_interval;
    }
    else {
      resolved.blink_interval = 0
    }

    if (msg.start_index !== undefined) {
      resolved.start_index = msg.start_index;
    }
    else {
      resolved.start_index = 0
    }

    if (msg.stop_index !== undefined) {
      resolved.stop_index = msg.stop_index;
    }
    else {
      resolved.stop_index = 0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0
    }

    if (msg.g !== undefined) {
      resolved.g = msg.g;
    }
    else {
      resolved.g = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    return resolved;
    }
};

module.exports = LedControl;
