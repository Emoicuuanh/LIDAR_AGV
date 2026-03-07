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

class HmiControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.ChangeDirection = null;
      this.RunType = null;
      this.TurnType = null;
      this.RotateType = null;
      this.MaxSpeedSet = null;
      this.MinSpeedSet = null;
      this.Sound = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('ChangeDirection')) {
        this.ChangeDirection = initObj.ChangeDirection
      }
      else {
        this.ChangeDirection = false;
      }
      if (initObj.hasOwnProperty('RunType')) {
        this.RunType = initObj.RunType
      }
      else {
        this.RunType = 0;
      }
      if (initObj.hasOwnProperty('TurnType')) {
        this.TurnType = initObj.TurnType
      }
      else {
        this.TurnType = 0;
      }
      if (initObj.hasOwnProperty('RotateType')) {
        this.RotateType = initObj.RotateType
      }
      else {
        this.RotateType = 0;
      }
      if (initObj.hasOwnProperty('MaxSpeedSet')) {
        this.MaxSpeedSet = initObj.MaxSpeedSet
      }
      else {
        this.MaxSpeedSet = 0.0;
      }
      if (initObj.hasOwnProperty('MinSpeedSet')) {
        this.MinSpeedSet = initObj.MinSpeedSet
      }
      else {
        this.MinSpeedSet = 0.0;
      }
      if (initObj.hasOwnProperty('Sound')) {
        this.Sound = initObj.Sound
      }
      else {
        this.Sound = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HmiControl
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [ChangeDirection]
    bufferOffset = _serializer.bool(obj.ChangeDirection, buffer, bufferOffset);
    // Serialize message field [RunType]
    bufferOffset = _serializer.int8(obj.RunType, buffer, bufferOffset);
    // Serialize message field [TurnType]
    bufferOffset = _serializer.int8(obj.TurnType, buffer, bufferOffset);
    // Serialize message field [RotateType]
    bufferOffset = _serializer.int8(obj.RotateType, buffer, bufferOffset);
    // Serialize message field [MaxSpeedSet]
    bufferOffset = _serializer.float32(obj.MaxSpeedSet, buffer, bufferOffset);
    // Serialize message field [MinSpeedSet]
    bufferOffset = _serializer.float32(obj.MinSpeedSet, buffer, bufferOffset);
    // Serialize message field [Sound]
    bufferOffset = _serializer.int8(obj.Sound, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HmiControl
    let len;
    let data = new HmiControl(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [ChangeDirection]
    data.ChangeDirection = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RunType]
    data.RunType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [TurnType]
    data.TurnType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RotateType]
    data.RotateType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [MaxSpeedSet]
    data.MaxSpeedSet = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [MinSpeedSet]
    data.MinSpeedSet = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Sound]
    data.Sound = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/HmiControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a758689cc2994c3e06241914d97ca23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    bool ChangeDirection
    int8 RunType
    int8 TurnType
    int8 RotateType
    float32 MaxSpeedSet
    float32 MinSpeedSet
    int8 Sound
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HmiControl(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.ChangeDirection !== undefined) {
      resolved.ChangeDirection = msg.ChangeDirection;
    }
    else {
      resolved.ChangeDirection = false
    }

    if (msg.RunType !== undefined) {
      resolved.RunType = msg.RunType;
    }
    else {
      resolved.RunType = 0
    }

    if (msg.TurnType !== undefined) {
      resolved.TurnType = msg.TurnType;
    }
    else {
      resolved.TurnType = 0
    }

    if (msg.RotateType !== undefined) {
      resolved.RotateType = msg.RotateType;
    }
    else {
      resolved.RotateType = 0
    }

    if (msg.MaxSpeedSet !== undefined) {
      resolved.MaxSpeedSet = msg.MaxSpeedSet;
    }
    else {
      resolved.MaxSpeedSet = 0.0
    }

    if (msg.MinSpeedSet !== undefined) {
      resolved.MinSpeedSet = msg.MinSpeedSet;
    }
    else {
      resolved.MinSpeedSet = 0.0
    }

    if (msg.Sound !== undefined) {
      resolved.Sound = msg.Sound;
    }
    else {
      resolved.Sound = 0
    }

    return resolved;
    }
};

module.exports = HmiControl;
