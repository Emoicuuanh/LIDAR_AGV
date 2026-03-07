// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BasicFunction = require('./BasicFunction.js');

//-----------------------------------------------------------

class CardWithFunction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Id = null;
      this.Functions = null;
    }
    else {
      if (initObj.hasOwnProperty('Id')) {
        this.Id = initObj.Id
      }
      else {
        this.Id = 0;
      }
      if (initObj.hasOwnProperty('Functions')) {
        this.Functions = initObj.Functions
      }
      else {
        this.Functions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CardWithFunction
    // Serialize message field [Id]
    bufferOffset = _serializer.int64(obj.Id, buffer, bufferOffset);
    // Serialize message field [Functions]
    // Serialize the length for message field [Functions]
    bufferOffset = _serializer.uint32(obj.Functions.length, buffer, bufferOffset);
    obj.Functions.forEach((val) => {
      bufferOffset = BasicFunction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CardWithFunction
    let len;
    let data = new CardWithFunction(null);
    // Deserialize message field [Id]
    data.Id = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [Functions]
    // Deserialize array length for message field [Functions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Functions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Functions[i] = BasicFunction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.Functions.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/CardWithFunction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd142f4b6d50baad4bba4d3ea3a40a57e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 Id
    BasicFunction[] Functions
    ================================================================================
    MSG: agv_msgs/BasicFunction
    int8 FuncId
    int8 ParId
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CardWithFunction(null);
    if (msg.Id !== undefined) {
      resolved.Id = msg.Id;
    }
    else {
      resolved.Id = 0
    }

    if (msg.Functions !== undefined) {
      resolved.Functions = new Array(msg.Functions.length);
      for (let i = 0; i < resolved.Functions.length; ++i) {
        resolved.Functions[i] = BasicFunction.Resolve(msg.Functions[i]);
      }
    }
    else {
      resolved.Functions = []
    }

    return resolved;
    }
};

module.exports = CardWithFunction;
