// Auto-generated. Do not edit!

// (in-package fastech_io.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetIORequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIORequest
    // Serialize message field [pin]
    bufferOffset = _serializer.int64(obj.pin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIORequest
    let len;
    let data = new GetIORequest(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fastech_io/GetIORequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13ce2e1fd6796d00dec37deecb854c69';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 pin
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIORequest(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    return resolved;
    }
};

class GetIOResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.status_set = null;
      this.output_voltage = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('status_set')) {
        this.status_set = initObj.status_set
      }
      else {
        this.status_set = false;
      }
      if (initObj.hasOwnProperty('output_voltage')) {
        this.output_voltage = initObj.output_voltage
      }
      else {
        this.output_voltage = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIOResponse
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [status_set]
    bufferOffset = _serializer.bool(obj.status_set, buffer, bufferOffset);
    // Serialize message field [output_voltage]
    bufferOffset = _serializer.int64(obj.output_voltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIOResponse
    let len;
    let data = new GetIOResponse(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [status_set]
    data.status_set = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [output_voltage]
    data.output_voltage = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fastech_io/GetIOResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d4d261b4d34e979bf1f8d9fc9f93527';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    bool status_set
    int64 output_voltage
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIOResponse(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.status_set !== undefined) {
      resolved.status_set = msg.status_set;
    }
    else {
      resolved.status_set = false
    }

    if (msg.output_voltage !== undefined) {
      resolved.output_voltage = msg.output_voltage;
    }
    else {
      resolved.output_voltage = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetIORequest,
  Response: GetIOResponse,
  md5sum() { return '8dc7716b39efd26155b31938acfbd81d'; },
  datatype() { return 'fastech_io/GetIO'; }
};
