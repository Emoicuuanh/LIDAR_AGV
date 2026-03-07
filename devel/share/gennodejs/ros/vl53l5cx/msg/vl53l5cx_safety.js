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

class vl53l5cx_safety {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status_left = null;
      this.status_right = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status_left')) {
        this.status_left = initObj.status_left
      }
      else {
        this.status_left = 0;
      }
      if (initObj.hasOwnProperty('status_right')) {
        this.status_right = initObj.status_right
      }
      else {
        this.status_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vl53l5cx_safety
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status_left]
    bufferOffset = _serializer.int32(obj.status_left, buffer, bufferOffset);
    // Serialize message field [status_right]
    bufferOffset = _serializer.int32(obj.status_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vl53l5cx_safety
    let len;
    let data = new vl53l5cx_safety(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status_left]
    data.status_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status_right]
    data.status_right = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vl53l5cx/vl53l5cx_safety';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b53fa10636d0f6cce0051b430e70c58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 status_left 
    int32 status_right  
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
    const resolved = new vl53l5cx_safety(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status_left !== undefined) {
      resolved.status_left = msg.status_left;
    }
    else {
      resolved.status_left = 0
    }

    if (msg.status_right !== undefined) {
      resolved.status_right = msg.status_right;
    }
    else {
      resolved.status_right = 0
    }

    return resolved;
    }
};

module.exports = vl53l5cx_safety;
