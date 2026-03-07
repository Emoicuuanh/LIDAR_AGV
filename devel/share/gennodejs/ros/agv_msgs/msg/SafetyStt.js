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

class SafetyStt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Id = null;
      this.Name = null;
      this.Current_Job = null;
      this.Range_1 = null;
      this.Range_2 = null;
      this.Range_3 = null;
    }
    else {
      if (initObj.hasOwnProperty('Id')) {
        this.Id = initObj.Id
      }
      else {
        this.Id = 0;
      }
      if (initObj.hasOwnProperty('Name')) {
        this.Name = initObj.Name
      }
      else {
        this.Name = '';
      }
      if (initObj.hasOwnProperty('Current_Job')) {
        this.Current_Job = initObj.Current_Job
      }
      else {
        this.Current_Job = 0;
      }
      if (initObj.hasOwnProperty('Range_1')) {
        this.Range_1 = initObj.Range_1
      }
      else {
        this.Range_1 = 0;
      }
      if (initObj.hasOwnProperty('Range_2')) {
        this.Range_2 = initObj.Range_2
      }
      else {
        this.Range_2 = 0;
      }
      if (initObj.hasOwnProperty('Range_3')) {
        this.Range_3 = initObj.Range_3
      }
      else {
        this.Range_3 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SafetyStt
    // Serialize message field [Id]
    bufferOffset = _serializer.uint8(obj.Id, buffer, bufferOffset);
    // Serialize message field [Name]
    bufferOffset = _serializer.string(obj.Name, buffer, bufferOffset);
    // Serialize message field [Current_Job]
    bufferOffset = _serializer.uint8(obj.Current_Job, buffer, bufferOffset);
    // Serialize message field [Range_1]
    bufferOffset = _serializer.uint8(obj.Range_1, buffer, bufferOffset);
    // Serialize message field [Range_2]
    bufferOffset = _serializer.uint8(obj.Range_2, buffer, bufferOffset);
    // Serialize message field [Range_3]
    bufferOffset = _serializer.uint8(obj.Range_3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SafetyStt
    let len;
    let data = new SafetyStt(null);
    // Deserialize message field [Id]
    data.Id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Name]
    data.Name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Current_Job]
    data.Current_Job = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Range_1]
    data.Range_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Range_2]
    data.Range_2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Range_3]
    data.Range_3 = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Name);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/SafetyStt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f93827b3264a5c1f06a6cdd2faf3051e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 Id
    string Name
    uint8 Current_Job
    uint8 Range_1
    uint8 Range_2
    uint8 Range_3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SafetyStt(null);
    if (msg.Id !== undefined) {
      resolved.Id = msg.Id;
    }
    else {
      resolved.Id = 0
    }

    if (msg.Name !== undefined) {
      resolved.Name = msg.Name;
    }
    else {
      resolved.Name = ''
    }

    if (msg.Current_Job !== undefined) {
      resolved.Current_Job = msg.Current_Job;
    }
    else {
      resolved.Current_Job = 0
    }

    if (msg.Range_1 !== undefined) {
      resolved.Range_1 = msg.Range_1;
    }
    else {
      resolved.Range_1 = 0
    }

    if (msg.Range_2 !== undefined) {
      resolved.Range_2 = msg.Range_2;
    }
    else {
      resolved.Range_2 = 0
    }

    if (msg.Range_3 !== undefined) {
      resolved.Range_3 = msg.Range_3;
    }
    else {
      resolved.Range_3 = 0
    }

    return resolved;
    }
};

module.exports = SafetyStt;
