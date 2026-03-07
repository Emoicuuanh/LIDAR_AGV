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

class SetValueOutputRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pin = null;
      this.value = null;
      this.mode = null;
      this.period_ms = null;
      this.ontime_ms = null;
      this.conut_time = null;
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
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('period_ms')) {
        this.period_ms = initObj.period_ms
      }
      else {
        this.period_ms = 0;
      }
      if (initObj.hasOwnProperty('ontime_ms')) {
        this.ontime_ms = initObj.ontime_ms
      }
      else {
        this.ontime_ms = 0;
      }
      if (initObj.hasOwnProperty('conut_time')) {
        this.conut_time = initObj.conut_time
      }
      else {
        this.conut_time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetValueOutputRequest
    // Serialize message field [pin]
    bufferOffset = _serializer.int8(obj.pin, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    // Serialize message field [period_ms]
    bufferOffset = _serializer.int64(obj.period_ms, buffer, bufferOffset);
    // Serialize message field [ontime_ms]
    bufferOffset = _serializer.int64(obj.ontime_ms, buffer, bufferOffset);
    // Serialize message field [conut_time]
    bufferOffset = _serializer.int64(obj.conut_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetValueOutputRequest
    let len;
    let data = new SetValueOutputRequest(null);
    // Deserialize message field [pin]
    data.pin = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [period_ms]
    data.period_ms = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ontime_ms]
    data.ontime_ms = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [conut_time]
    data.conut_time = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 27;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fastech_io/SetValueOutputRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0918dc9bfb1f342ab034ce610aecde92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # number pin change: 0 - 31
    int8 pin
    # value change : True{on} , False {off}
    bool value
    # mode: Currently there are 2 modes, mod = 1 just on/off , mod = 2Pwm
    int8 mode
    
    # use only when mod = 2, if mod = 1 nothing change
    # period_ms = cycle pwm = ontime + offtime, max_period_ms = 65535
    int64 period_ms
    # ontime_ms = period_ms - time_off, max_ontime_ms = 65535
    int64 ontime_ms
    # total number toggle
    int64 conut_time
    #max_cout_time = 4294967295, mid_cout_time = 1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetValueOutputRequest(null);
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

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.period_ms !== undefined) {
      resolved.period_ms = msg.period_ms;
    }
    else {
      resolved.period_ms = 0
    }

    if (msg.ontime_ms !== undefined) {
      resolved.ontime_ms = msg.ontime_ms;
    }
    else {
      resolved.ontime_ms = 0
    }

    if (msg.conut_time !== undefined) {
      resolved.conut_time = msg.conut_time;
    }
    else {
      resolved.conut_time = 0
    }

    return resolved;
    }
};

class SetValueOutputResponse {
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
    // Serializes a message object of type SetValueOutputResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetValueOutputResponse
    let len;
    let data = new SetValueOutputResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fastech_io/SetValueOutputResponse';
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
    const resolved = new SetValueOutputResponse(null);
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
  Request: SetValueOutputRequest,
  Response: SetValueOutputResponse,
  md5sum() { return '37dae036605eb749cf1271f9d460c346'; },
  datatype() { return 'fastech_io/SetValueOutput'; }
};
