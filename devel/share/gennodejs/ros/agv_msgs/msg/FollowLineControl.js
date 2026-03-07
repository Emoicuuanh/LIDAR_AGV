// Auto-generated. Do not edit!

// (in-package agv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FollowLineControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.RunType = null;
      this.TurnType = null;
      this.RotateType = null;
      this.Speed = null;
      this.Direction = null;
      this.SmootherStopSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('RunType')) {
        this.RunType = initObj.RunType
      }
      else {
        this.RunType = 0;
      }
      if (initObj.hasOwnProperty('TurnType')) {
        this.TurnType = initObj.TurnType
      }
      else {
        this.TurnType = 0;
      }
      if (initObj.hasOwnProperty('RotateType')) {
        this.RotateType = initObj.RotateType
      }
      else {
        this.RotateType = 0;
      }
      if (initObj.hasOwnProperty('Speed')) {
        this.Speed = initObj.Speed
      }
      else {
        this.Speed = 0.0;
      }
      if (initObj.hasOwnProperty('Direction')) {
        this.Direction = initObj.Direction
      }
      else {
        this.Direction = 0;
      }
      if (initObj.hasOwnProperty('SmootherStopSpeed')) {
        this.SmootherStopSpeed = initObj.SmootherStopSpeed
      }
      else {
        this.SmootherStopSpeed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FollowLineControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [RunType]
    bufferOffset = _serializer.int8(obj.RunType, buffer, bufferOffset);
    // Serialize message field [TurnType]
    bufferOffset = _serializer.int8(obj.TurnType, buffer, bufferOffset);
    // Serialize message field [RotateType]
    bufferOffset = _serializer.int8(obj.RotateType, buffer, bufferOffset);
    // Serialize message field [Speed]
    bufferOffset = _serializer.float32(obj.Speed, buffer, bufferOffset);
    // Serialize message field [Direction]
    bufferOffset = _serializer.int8(obj.Direction, buffer, bufferOffset);
    // Serialize message field [SmootherStopSpeed]
    bufferOffset = _serializer.int8(obj.SmootherStopSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FollowLineControl
    let len;
    let data = new FollowLineControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [RunType]
    data.RunType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [TurnType]
    data.TurnType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [RotateType]
    data.RotateType = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [Speed]
    data.Speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Direction]
    data.Direction = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [SmootherStopSpeed]
    data.SmootherStopSpeed = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/FollowLineControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50ae4d462d3b60eb3a76ed656bf6246a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int8 RunType
    int8 TurnType
    int8 RotateType
    float32 Speed
    int8 Direction
    int8 SmootherStopSpeed
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
    const resolved = new FollowLineControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.RunType !== undefined) {
      resolved.RunType = msg.RunType;
    }
    else {
      resolved.RunType = 0
    }

    if (msg.TurnType !== undefined) {
      resolved.TurnType = msg.TurnType;
    }
    else {
      resolved.TurnType = 0
    }

    if (msg.RotateType !== undefined) {
      resolved.RotateType = msg.RotateType;
    }
    else {
      resolved.RotateType = 0
    }

    if (msg.Speed !== undefined) {
      resolved.Speed = msg.Speed;
    }
    else {
      resolved.Speed = 0.0
    }

    if (msg.Direction !== undefined) {
      resolved.Direction = msg.Direction;
    }
    else {
      resolved.Direction = 0
    }

    if (msg.SmootherStopSpeed !== undefined) {
      resolved.SmootherStopSpeed = msg.SmootherStopSpeed;
    }
    else {
      resolved.SmootherStopSpeed = 0
    }

    return resolved;
    }
};

module.exports = FollowLineControl;
