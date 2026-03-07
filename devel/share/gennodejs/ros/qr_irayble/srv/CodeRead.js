// Auto-generated. Do not edit!

// (in-package qr_irayble.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CodeReadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TimeOut = null;
    }
    else {
      if (initObj.hasOwnProperty('TimeOut')) {
        this.TimeOut = initObj.TimeOut
      }
      else {
        this.TimeOut = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CodeReadRequest
    // Serialize message field [TimeOut]
    bufferOffset = _serializer.int8(obj.TimeOut, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CodeReadRequest
    let len;
    let data = new CodeReadRequest(null);
    // Deserialize message field [TimeOut]
    data.TimeOut = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'qr_irayble/CodeReadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d24a691b70fc267c6fc5116b95e671e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 TimeOut
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CodeReadRequest(null);
    if (msg.TimeOut !== undefined) {
      resolved.TimeOut = msg.TimeOut;
    }
    else {
      resolved.TimeOut = 0
    }

    return resolved;
    }
};

class CodeReadResponse {
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
    // Serializes a message object of type CodeReadResponse
    // Serialize message field [Res]
    bufferOffset = _serializer.string(obj.Res, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CodeReadResponse
    let len;
    let data = new CodeReadResponse(null);
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
    return 'qr_irayble/CodeReadResponse';
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
    const resolved = new CodeReadResponse(null);
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
  Request: CodeReadRequest,
  Response: CodeReadResponse,
  md5sum() { return '67df3b6773c89deb64fbc2e4def3a244'; },
  datatype() { return 'qr_irayble/CodeRead'; }
};
