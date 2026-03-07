// Auto-generated. Do not edit!

// (in-package agv_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DataCheckRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Req = null;
    }
    else {
      if (initObj.hasOwnProperty('Req')) {
        this.Req = initObj.Req
      }
      else {
        this.Req = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataCheckRequest
    // Serialize message field [Req]
    bufferOffset = _serializer.int8(obj.Req, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataCheckRequest
    let len;
    let data = new DataCheckRequest(null);
    // Deserialize message field [Req]
    data.Req = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_msgs/DataCheckRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b938ae46c8d1418d0a9ad86f4e8a5a10';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 Req
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataCheckRequest(null);
    if (msg.Req !== undefined) {
      resolved.Req = msg.Req;
    }
    else {
      resolved.Req = 0
    }

    return resolved;
    }
};

class DataCheckResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Res = null;
    }
    else {
      if (initObj.hasOwnProperty('Res')) {
        this.Res = initObj.Res
      }
      else {
        this.Res = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataCheckResponse
    // Serialize message field [Res]
    bufferOffset = _serializer.string(obj.Res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataCheckResponse
    let len;
    let data = new DataCheckResponse(null);
    // Deserialize message field [Res]
    data.Res = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.Res);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_msgs/DataCheckResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adc762752bc2aac9031068139943f509';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Res
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataCheckResponse(null);
    if (msg.Res !== undefined) {
      resolved.Res = msg.Res;
    }
    else {
      resolved.Res = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: DataCheckRequest,
  Response: DataCheckResponse,
  md5sum() { return '24fe1e776fba9e3f89df1698abc9415d'; },
  datatype() { return 'agv_msgs/DataCheck'; }
};
