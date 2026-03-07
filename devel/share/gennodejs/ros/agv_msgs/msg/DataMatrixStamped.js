// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CartesianPosition = require('./CartesianPosition.js');
let CartesianCoordinate = require('./CartesianCoordinate.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DataMatrixStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lable = null;
      this.absolute = null;
      this.possition = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lable')) {
        this.lable = initObj.lable
      }
      else {
        this.lable = new CartesianPosition();
      }
      if (initObj.hasOwnProperty('absolute')) {
        this.absolute = initObj.absolute
      }
      else {
        this.absolute = new CartesianPosition();
      }
      if (initObj.hasOwnProperty('possition')) {
        this.possition = initObj.possition
      }
      else {
        this.possition = new CartesianCoordinate();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataMatrixStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lable]
    bufferOffset = CartesianPosition.serialize(obj.lable, buffer, bufferOffset);
    // Serialize message field [absolute]
    bufferOffset = CartesianPosition.serialize(obj.absolute, buffer, bufferOffset);
    // Serialize message field [possition]
    bufferOffset = CartesianCoordinate.serialize(obj.possition, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataMatrixStamped
    let len;
    let data = new DataMatrixStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lable]
    data.lable = CartesianPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [absolute]
    data.absolute = CartesianPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [possition]
    data.possition = CartesianCoordinate.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/DataMatrixStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '875dba3a16cc734d0c14bd7f0a092201';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    CartesianPosition lable
    CartesianPosition absolute
    CartesianCoordinate possition
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
    
    ================================================================================
    MSG: agv_msgs/CartesianPosition
    int32 x
    int32 y
    ================================================================================
    MSG: agv_msgs/CartesianCoordinate
    int32 x
    int32 y
    float64 angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataMatrixStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lable !== undefined) {
      resolved.lable = CartesianPosition.Resolve(msg.lable)
    }
    else {
      resolved.lable = new CartesianPosition()
    }

    if (msg.absolute !== undefined) {
      resolved.absolute = CartesianPosition.Resolve(msg.absolute)
    }
    else {
      resolved.absolute = new CartesianPosition()
    }

    if (msg.possition !== undefined) {
      resolved.possition = CartesianCoordinate.Resolve(msg.possition)
    }
    else {
      resolved.possition = new CartesianCoordinate()
    }

    return resolved;
    }
};

module.exports = DataMatrixStamped;
