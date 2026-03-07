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

class DataChanged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Name = null;
      this.Value = null;
    }
    else {
      if (initObj.hasOwnProperty('Name')) {
        this.Name = initObj.Name
      }
      else {
        this.Name = '';
      }
      if (initObj.hasOwnProperty('Value')) {
        this.Value = initObj.Value
      }
      else {
        this.Value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataChanged
    // Serialize message field [Name]
    bufferOffset = _serializer.string(obj.Name, buffer, bufferOffset);
    // Serialize message field [Value]
    bufferOffset = _serializer.string(obj.Value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataChanged
    let len;
    let data = new DataChanged(null);
    // Deserialize message field [Name]
    data.Name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Value]
    data.Value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Name);
    length += _getByteLength(object.Value);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/DataChanged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0e75800c1d72baee3c36c59949425a9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Name
    string Value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataChanged(null);
    if (msg.Name !== undefined) {
      resolved.Name = msg.Name;
    }
    else {
      resolved.Name = ''
    }

    if (msg.Value !== undefined) {
      resolved.Value = msg.Value;
    }
    else {
      resolved.Value = ''
    }

    return resolved;
    }
};

module.exports = DataChanged;
