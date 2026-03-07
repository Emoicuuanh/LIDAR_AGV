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

class Pid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.kp = null;
      this.ki = null;
      this.kd = null;
      this.up = null;
      this.ui = null;
      this.ud = null;
      this.u_total = null;
      this.error = null;
      this.prev_error = null;
      this.real_error = null;
      this.real_prev_error = null;
      this.delta_error = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('kp')) {
        this.kp = initObj.kp
      }
      else {
        this.kp = 0.0;
      }
      if (initObj.hasOwnProperty('ki')) {
        this.ki = initObj.ki
      }
      else {
        this.ki = 0.0;
      }
      if (initObj.hasOwnProperty('kd')) {
        this.kd = initObj.kd
      }
      else {
        this.kd = 0.0;
      }
      if (initObj.hasOwnProperty('up')) {
        this.up = initObj.up
      }
      else {
        this.up = 0.0;
      }
      if (initObj.hasOwnProperty('ui')) {
        this.ui = initObj.ui
      }
      else {
        this.ui = 0.0;
      }
      if (initObj.hasOwnProperty('ud')) {
        this.ud = initObj.ud
      }
      else {
        this.ud = 0.0;
      }
      if (initObj.hasOwnProperty('u_total')) {
        this.u_total = initObj.u_total
      }
      else {
        this.u_total = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
      if (initObj.hasOwnProperty('prev_error')) {
        this.prev_error = initObj.prev_error
      }
      else {
        this.prev_error = 0.0;
      }
      if (initObj.hasOwnProperty('real_error')) {
        this.real_error = initObj.real_error
      }
      else {
        this.real_error = 0.0;
      }
      if (initObj.hasOwnProperty('real_prev_error')) {
        this.real_prev_error = initObj.real_prev_error
      }
      else {
        this.real_prev_error = 0.0;
      }
      if (initObj.hasOwnProperty('delta_error')) {
        this.delta_error = initObj.delta_error
      }
      else {
        this.delta_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pid
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [kp]
    bufferOffset = _serializer.float32(obj.kp, buffer, bufferOffset);
    // Serialize message field [ki]
    bufferOffset = _serializer.float32(obj.ki, buffer, bufferOffset);
    // Serialize message field [kd]
    bufferOffset = _serializer.float32(obj.kd, buffer, bufferOffset);
    // Serialize message field [up]
    bufferOffset = _serializer.float32(obj.up, buffer, bufferOffset);
    // Serialize message field [ui]
    bufferOffset = _serializer.float32(obj.ui, buffer, bufferOffset);
    // Serialize message field [ud]
    bufferOffset = _serializer.float32(obj.ud, buffer, bufferOffset);
    // Serialize message field [u_total]
    bufferOffset = _serializer.float32(obj.u_total, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float32(obj.error, buffer, bufferOffset);
    // Serialize message field [prev_error]
    bufferOffset = _serializer.float32(obj.prev_error, buffer, bufferOffset);
    // Serialize message field [real_error]
    bufferOffset = _serializer.float32(obj.real_error, buffer, bufferOffset);
    // Serialize message field [real_prev_error]
    bufferOffset = _serializer.float32(obj.real_prev_error, buffer, bufferOffset);
    // Serialize message field [delta_error]
    bufferOffset = _serializer.float32(obj.delta_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pid
    let len;
    let data = new Pid(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [kp]
    data.kp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ki]
    data.ki = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [kd]
    data.kd = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [up]
    data.up = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ui]
    data.ui = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ud]
    data.ud = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [u_total]
    data.u_total = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [prev_error]
    data.prev_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [real_error]
    data.real_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [real_prev_error]
    data.real_prev_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [delta_error]
    data.delta_error = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/Pid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d7a75423894f0c2f93aead664ca1c0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    float32 kp
    float32 ki
    float32 kd
    float32 up
    float32 ui
    float32 ud
    float32 u_total
    float32 error
    float32 prev_error
    float32 real_error
    float32 real_prev_error
    float32 delta_error
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pid(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.kp !== undefined) {
      resolved.kp = msg.kp;
    }
    else {
      resolved.kp = 0.0
    }

    if (msg.ki !== undefined) {
      resolved.ki = msg.ki;
    }
    else {
      resolved.ki = 0.0
    }

    if (msg.kd !== undefined) {
      resolved.kd = msg.kd;
    }
    else {
      resolved.kd = 0.0
    }

    if (msg.up !== undefined) {
      resolved.up = msg.up;
    }
    else {
      resolved.up = 0.0
    }

    if (msg.ui !== undefined) {
      resolved.ui = msg.ui;
    }
    else {
      resolved.ui = 0.0
    }

    if (msg.ud !== undefined) {
      resolved.ud = msg.ud;
    }
    else {
      resolved.ud = 0.0
    }

    if (msg.u_total !== undefined) {
      resolved.u_total = msg.u_total;
    }
    else {
      resolved.u_total = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    if (msg.prev_error !== undefined) {
      resolved.prev_error = msg.prev_error;
    }
    else {
      resolved.prev_error = 0.0
    }

    if (msg.real_error !== undefined) {
      resolved.real_error = msg.real_error;
    }
    else {
      resolved.real_error = 0.0
    }

    if (msg.real_prev_error !== undefined) {
      resolved.real_prev_error = msg.real_prev_error;
    }
    else {
      resolved.real_prev_error = 0.0
    }

    if (msg.delta_error !== undefined) {
      resolved.delta_error = msg.delta_error;
    }
    else {
      resolved.delta_error = 0.0
    }

    return resolved;
    }
};

module.exports = Pid;
