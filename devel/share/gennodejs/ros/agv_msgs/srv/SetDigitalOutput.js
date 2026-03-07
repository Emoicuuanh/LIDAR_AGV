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

class SetDigitalOutputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
      this.value = null;
      this.duration_latch_ms = null;
      this.duration_blink_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('pin')) {
        this.pin = initObj.pin
      }
      else {
        this.pin = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = false;
      }
      if (initObj.hasOwnProperty('duration_latch_ms')) {
        this.duration_latch_ms = initObj.duration_latch_ms
      }
      else {
        this.duration_latch_ms = 0;
      }
      if (initObj.hasOwnProperty('duration_blink_ms')) {
        this.duration_blink_ms = initObj.duration_blink_ms
      }
      else {
        this.duration_blink_ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDigitalOutputRequest
    // Serialize message field [pin]
    bufferOffset = _serializer.int8(obj.pin, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    // Serialize message field [duration_latch_ms]
    bufferOffset = _serializer.int64(obj.duration_latch_ms, buffer, bufferOffset);
    // Serialize message field [duration_blink_ms]
    bufferOffset = _serializer.int64(obj.duration_blink_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDigitalOutputRequest
    let len;
    let data = new SetDigitalOutputRequest(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [duration_latch_ms]
    data.duration_latch_ms = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [duration_blink_ms]
    data.duration_blink_ms = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_msgs/SetDigitalOutputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb44bbbb2d68dd58810edaa5d98aa5a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 pin
    bool value
    # If duration_latch > 0 and duration_blink = 0, the output latch n (ms) then
    # set to set the opposite value (True to False and False to True)
    int64 duration_latch_ms
    # If duration_blink > 0 and duration_latch = 0, the output toggle with
    # duration = duration_latch (ms)
    int64 duration_blink_ms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDigitalOutputRequest(null);
    if (msg.pin !== undefined) {
      resolved.pin = msg.pin;
    }
    else {
      resolved.pin = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    if (msg.duration_latch_ms !== undefined) {
      resolved.duration_latch_ms = msg.duration_latch_ms;
    }
    else {
      resolved.duration_latch_ms = 0
    }

    if (msg.duration_blink_ms !== undefined) {
      resolved.duration_blink_ms = msg.duration_blink_ms;
    }
    else {
      resolved.duration_blink_ms = 0
    }

    return resolved;
    }
};

class SetDigitalOutputResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetDigitalOutputResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetDigitalOutputResponse
    let len;
    let data = new SetDigitalOutputResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'agv_msgs/SetDigitalOutputResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 0: NG
    # 1: OK
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetDigitalOutputResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SetDigitalOutputRequest,
  Response: SetDigitalOutputResponse,
  md5sum() { return 'f41bbedf7777f22daed45c19cf82315a'; },
  datatype() { return 'agv_msgs/SetDigitalOutput'; }
};
