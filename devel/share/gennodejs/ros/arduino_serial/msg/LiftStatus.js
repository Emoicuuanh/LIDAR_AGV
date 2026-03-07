// Auto-generated. Do not edit!

// (in-package arduino_serial.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LiftStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.sensor_max = null;
      this.sensor_min = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('sensor_max')) {
        this.sensor_max = initObj.sensor_max
      }
      else {
        this.sensor_max = false;
      }
      if (initObj.hasOwnProperty('sensor_min')) {
        this.sensor_min = initObj.sensor_min
      }
      else {
        this.sensor_min = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LiftStatus
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [sensor_max]
    bufferOffset = _serializer.bool(obj.sensor_max, buffer, bufferOffset);
    // Serialize message field [sensor_min]
    bufferOffset = _serializer.bool(obj.sensor_min, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LiftStatus
    let len;
    let data = new LiftStatus(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [sensor_max]
    data.sensor_max = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sensor_min]
    data.sensor_min = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arduino_serial/LiftStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff08c76cb254ec9297cccc8566cbbf64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    bool sensor_max
    bool sensor_min
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LiftStatus(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.sensor_max !== undefined) {
      resolved.sensor_max = msg.sensor_max;
    }
    else {
      resolved.sensor_max = false
    }

    if (msg.sensor_min !== undefined) {
      resolved.sensor_min = msg.sensor_min;
    }
    else {
      resolved.sensor_min = false
    }

    return resolved;
    }
};

module.exports = LiftStatus;
