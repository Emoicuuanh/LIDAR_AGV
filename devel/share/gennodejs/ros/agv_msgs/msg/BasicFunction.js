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

class BasicFunction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.FuncId = null;
      this.ParId = null;
    }
    else {
      if (initObj.hasOwnProperty('FuncId')) {
        this.FuncId = initObj.FuncId
      }
      else {
        this.FuncId = 0;
      }
      if (initObj.hasOwnProperty('ParId')) {
        this.ParId = initObj.ParId
      }
      else {
        this.ParId = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BasicFunction
    // Serialize message field [FuncId]
    bufferOffset = _serializer.int8(obj.FuncId, buffer, bufferOffset);
    // Serialize message field [ParId]
    bufferOffset = _serializer.int8(obj.ParId, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BasicFunction
    let len;
    let data = new BasicFunction(null);
    // Deserialize message field [FuncId]
    data.FuncId = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ParId]
    data.ParId = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/BasicFunction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bd1e71c4c1a7cc1e9127efa7dba7022';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 FuncId
    int8 ParId
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BasicFunction(null);
    if (msg.FuncId !== undefined) {
      resolved.FuncId = msg.FuncId;
    }
    else {
      resolved.FuncId = 0
    }

    if (msg.ParId !== undefined) {
      resolved.ParId = msg.ParId;
    }
    else {
      resolved.ParId = 0
    }

    return resolved;
    }
};

module.exports = BasicFunction;
