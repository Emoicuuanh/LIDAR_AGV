// Auto-generated. Do not edit!

// (in-package vl53l5cx.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ultra_vl53l5_safety {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
      this.ultra_safety = null;
      this.vl53l5_safety = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('ultra_safety')) {
        this.ultra_safety = initObj.ultra_safety
      }
      else {
        this.ultra_safety = false;
      }
      if (initObj.hasOwnProperty('vl53l5_safety')) {
        this.vl53l5_safety = initObj.vl53l5_safety
      }
      else {
        this.vl53l5_safety = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ultra_vl53l5_safety
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [ultra_safety]
    bufferOffset = _serializer.bool(obj.ultra_safety, buffer, bufferOffset);
    // Serialize message field [vl53l5_safety]
    bufferOffset = _serializer.bool(obj.vl53l5_safety, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ultra_vl53l5_safety
    let len;
    let data = new ultra_vl53l5_safety(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ultra_safety]
    data.ultra_safety = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vl53l5_safety]
    data.vl53l5_safety = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.frame_id);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vl53l5cx/ultra_vl53l5_safety';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7fc4490b7c400bae28e28613a322407';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
      uint32 seq
      time stamp
      string frame_id
    bool ultra_safety 
    bool vl53l5_safety 
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ultra_vl53l5_safety(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.ultra_safety !== undefined) {
      resolved.ultra_safety = msg.ultra_safety;
    }
    else {
      resolved.ultra_safety = false
    }

    if (msg.vl53l5_safety !== undefined) {
      resolved.vl53l5_safety = msg.vl53l5_safety;
    }
    else {
      resolved.vl53l5_safety = false
    }

    return resolved;
    }
};

module.exports = ultra_vl53l5_safety;
