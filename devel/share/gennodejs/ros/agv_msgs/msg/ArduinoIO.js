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

class ArduinoIO {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.EMG = null;
      this.Start_1 = null;
      this.Start_2 = null;
      this.Stop_1 = null;
      this.Stop_2 = null;
      this.Remote_A = null;
      this.Remote_B = null;
      this.Motor1_En = null;
      this.Motor1_Break = null;
      this.Motor1_Dir = null;
      this.Motor2_En = null;
      this.Motor2_Break = null;
      this.Motor2_Dir = null;
      this.Bumper_1 = null;
      this.Bumper_2 = null;
      this.lift_max = null;
      this.lift_min = null;
      this.auto_man_sw = null;
      this.Release_motor = null;
      this.Battery_1 = null;
      this.Battery_2 = null;
      this.Battery_3 = null;
      this.Battery_4 = null;
      this.Charging = null;
      this.Encoder_Left = null;
      this.Encoder_Right = null;
      this.Safety_1 = null;
      this.Safety_2 = null;
      this.Safety_3 = null;
      this.Safety_4 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('EMG')) {
        this.EMG = initObj.EMG
      }
      else {
        this.EMG = false;
      }
      if (initObj.hasOwnProperty('Start_1')) {
        this.Start_1 = initObj.Start_1
      }
      else {
        this.Start_1 = false;
      }
      if (initObj.hasOwnProperty('Start_2')) {
        this.Start_2 = initObj.Start_2
      }
      else {
        this.Start_2 = false;
      }
      if (initObj.hasOwnProperty('Stop_1')) {
        this.Stop_1 = initObj.Stop_1
      }
      else {
        this.Stop_1 = false;
      }
      if (initObj.hasOwnProperty('Stop_2')) {
        this.Stop_2 = initObj.Stop_2
      }
      else {
        this.Stop_2 = false;
      }
      if (initObj.hasOwnProperty('Remote_A')) {
        this.Remote_A = initObj.Remote_A
      }
      else {
        this.Remote_A = false;
      }
      if (initObj.hasOwnProperty('Remote_B')) {
        this.Remote_B = initObj.Remote_B
      }
      else {
        this.Remote_B = false;
      }
      if (initObj.hasOwnProperty('Motor1_En')) {
        this.Motor1_En = initObj.Motor1_En
      }
      else {
        this.Motor1_En = false;
      }
      if (initObj.hasOwnProperty('Motor1_Break')) {
        this.Motor1_Break = initObj.Motor1_Break
      }
      else {
        this.Motor1_Break = false;
      }
      if (initObj.hasOwnProperty('Motor1_Dir')) {
        this.Motor1_Dir = initObj.Motor1_Dir
      }
      else {
        this.Motor1_Dir = false;
      }
      if (initObj.hasOwnProperty('Motor2_En')) {
        this.Motor2_En = initObj.Motor2_En
      }
      else {
        this.Motor2_En = false;
      }
      if (initObj.hasOwnProperty('Motor2_Break')) {
        this.Motor2_Break = initObj.Motor2_Break
      }
      else {
        this.Motor2_Break = false;
      }
      if (initObj.hasOwnProperty('Motor2_Dir')) {
        this.Motor2_Dir = initObj.Motor2_Dir
      }
      else {
        this.Motor2_Dir = false;
      }
      if (initObj.hasOwnProperty('Bumper_1')) {
        this.Bumper_1 = initObj.Bumper_1
      }
      else {
        this.Bumper_1 = false;
      }
      if (initObj.hasOwnProperty('Bumper_2')) {
        this.Bumper_2 = initObj.Bumper_2
      }
      else {
        this.Bumper_2 = false;
      }
      if (initObj.hasOwnProperty('lift_max')) {
        this.lift_max = initObj.lift_max
      }
      else {
        this.lift_max = false;
      }
      if (initObj.hasOwnProperty('lift_min')) {
        this.lift_min = initObj.lift_min
      }
      else {
        this.lift_min = false;
      }
      if (initObj.hasOwnProperty('auto_man_sw')) {
        this.auto_man_sw = initObj.auto_man_sw
      }
      else {
        this.auto_man_sw = false;
      }
      if (initObj.hasOwnProperty('Release_motor')) {
        this.Release_motor = initObj.Release_motor
      }
      else {
        this.Release_motor = false;
      }
      if (initObj.hasOwnProperty('Battery_1')) {
        this.Battery_1 = initObj.Battery_1
      }
      else {
        this.Battery_1 = 0.0;
      }
      if (initObj.hasOwnProperty('Battery_2')) {
        this.Battery_2 = initObj.Battery_2
      }
      else {
        this.Battery_2 = 0.0;
      }
      if (initObj.hasOwnProperty('Battery_3')) {
        this.Battery_3 = initObj.Battery_3
      }
      else {
        this.Battery_3 = 0.0;
      }
      if (initObj.hasOwnProperty('Battery_4')) {
        this.Battery_4 = initObj.Battery_4
      }
      else {
        this.Battery_4 = 0.0;
      }
      if (initObj.hasOwnProperty('Charging')) {
        this.Charging = initObj.Charging
      }
      else {
        this.Charging = false;
      }
      if (initObj.hasOwnProperty('Encoder_Left')) {
        this.Encoder_Left = initObj.Encoder_Left
      }
      else {
        this.Encoder_Left = 0;
      }
      if (initObj.hasOwnProperty('Encoder_Right')) {
        this.Encoder_Right = initObj.Encoder_Right
      }
      else {
        this.Encoder_Right = 0;
      }
      if (initObj.hasOwnProperty('Safety_1')) {
        this.Safety_1 = initObj.Safety_1
      }
      else {
        this.Safety_1 = 0;
      }
      if (initObj.hasOwnProperty('Safety_2')) {
        this.Safety_2 = initObj.Safety_2
      }
      else {
        this.Safety_2 = 0;
      }
      if (initObj.hasOwnProperty('Safety_3')) {
        this.Safety_3 = initObj.Safety_3
      }
      else {
        this.Safety_3 = 0;
      }
      if (initObj.hasOwnProperty('Safety_4')) {
        this.Safety_4 = initObj.Safety_4
      }
      else {
        this.Safety_4 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArduinoIO
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [EMG]
    bufferOffset = _serializer.bool(obj.EMG, buffer, bufferOffset);
    // Serialize message field [Start_1]
    bufferOffset = _serializer.bool(obj.Start_1, buffer, bufferOffset);
    // Serialize message field [Start_2]
    bufferOffset = _serializer.bool(obj.Start_2, buffer, bufferOffset);
    // Serialize message field [Stop_1]
    bufferOffset = _serializer.bool(obj.Stop_1, buffer, bufferOffset);
    // Serialize message field [Stop_2]
    bufferOffset = _serializer.bool(obj.Stop_2, buffer, bufferOffset);
    // Serialize message field [Remote_A]
    bufferOffset = _serializer.bool(obj.Remote_A, buffer, bufferOffset);
    // Serialize message field [Remote_B]
    bufferOffset = _serializer.bool(obj.Remote_B, buffer, bufferOffset);
    // Serialize message field [Motor1_En]
    bufferOffset = _serializer.bool(obj.Motor1_En, buffer, bufferOffset);
    // Serialize message field [Motor1_Break]
    bufferOffset = _serializer.bool(obj.Motor1_Break, buffer, bufferOffset);
    // Serialize message field [Motor1_Dir]
    bufferOffset = _serializer.bool(obj.Motor1_Dir, buffer, bufferOffset);
    // Serialize message field [Motor2_En]
    bufferOffset = _serializer.bool(obj.Motor2_En, buffer, bufferOffset);
    // Serialize message field [Motor2_Break]
    bufferOffset = _serializer.bool(obj.Motor2_Break, buffer, bufferOffset);
    // Serialize message field [Motor2_Dir]
    bufferOffset = _serializer.bool(obj.Motor2_Dir, buffer, bufferOffset);
    // Serialize message field [Bumper_1]
    bufferOffset = _serializer.bool(obj.Bumper_1, buffer, bufferOffset);
    // Serialize message field [Bumper_2]
    bufferOffset = _serializer.bool(obj.Bumper_2, buffer, bufferOffset);
    // Serialize message field [lift_max]
    bufferOffset = _serializer.bool(obj.lift_max, buffer, bufferOffset);
    // Serialize message field [lift_min]
    bufferOffset = _serializer.bool(obj.lift_min, buffer, bufferOffset);
    // Serialize message field [auto_man_sw]
    bufferOffset = _serializer.bool(obj.auto_man_sw, buffer, bufferOffset);
    // Serialize message field [Release_motor]
    bufferOffset = _serializer.bool(obj.Release_motor, buffer, bufferOffset);
    // Serialize message field [Battery_1]
    bufferOffset = _serializer.float32(obj.Battery_1, buffer, bufferOffset);
    // Serialize message field [Battery_2]
    bufferOffset = _serializer.float32(obj.Battery_2, buffer, bufferOffset);
    // Serialize message field [Battery_3]
    bufferOffset = _serializer.float32(obj.Battery_3, buffer, bufferOffset);
    // Serialize message field [Battery_4]
    bufferOffset = _serializer.float32(obj.Battery_4, buffer, bufferOffset);
    // Serialize message field [Charging]
    bufferOffset = _serializer.bool(obj.Charging, buffer, bufferOffset);
    // Serialize message field [Encoder_Left]
    bufferOffset = _serializer.int32(obj.Encoder_Left, buffer, bufferOffset);
    // Serialize message field [Encoder_Right]
    bufferOffset = _serializer.int32(obj.Encoder_Right, buffer, bufferOffset);
    // Serialize message field [Safety_1]
    bufferOffset = _serializer.uint16(obj.Safety_1, buffer, bufferOffset);
    // Serialize message field [Safety_2]
    bufferOffset = _serializer.uint16(obj.Safety_2, buffer, bufferOffset);
    // Serialize message field [Safety_3]
    bufferOffset = _serializer.uint16(obj.Safety_3, buffer, bufferOffset);
    // Serialize message field [Safety_4]
    bufferOffset = _serializer.uint16(obj.Safety_4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArduinoIO
    let len;
    let data = new ArduinoIO(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [EMG]
    data.EMG = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Start_1]
    data.Start_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Start_2]
    data.Start_2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Stop_1]
    data.Stop_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Stop_2]
    data.Stop_2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Remote_A]
    data.Remote_A = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Remote_B]
    data.Remote_B = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Motor1_En]
    data.Motor1_En = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Motor1_Break]
    data.Motor1_Break = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Motor1_Dir]
    data.Motor1_Dir = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Motor2_En]
    data.Motor2_En = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Motor2_Break]
    data.Motor2_Break = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Motor2_Dir]
    data.Motor2_Dir = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Bumper_1]
    data.Bumper_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Bumper_2]
    data.Bumper_2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lift_max]
    data.lift_max = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [lift_min]
    data.lift_min = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [auto_man_sw]
    data.auto_man_sw = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Release_motor]
    data.Release_motor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Battery_1]
    data.Battery_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Battery_2]
    data.Battery_2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Battery_3]
    data.Battery_3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Battery_4]
    data.Battery_4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Charging]
    data.Charging = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Encoder_Left]
    data.Encoder_Left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Encoder_Right]
    data.Encoder_Right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Safety_1]
    data.Safety_1 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Safety_2]
    data.Safety_2 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Safety_3]
    data.Safety_3 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [Safety_4]
    data.Safety_4 = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'agv_msgs/ArduinoIO';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '675bff81b91834773820b3bad7d42153';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    bool EMG
    bool Start_1
    bool Start_2
    bool Stop_1
    bool Stop_2
    bool Remote_A
    bool Remote_B
    bool Motor1_En
    bool Motor1_Break
    bool Motor1_Dir
    bool Motor2_En
    bool Motor2_Break
    bool Motor2_Dir
    bool Bumper_1
    bool Bumper_2
    bool lift_max
    bool lift_min
    bool auto_man_sw
    bool Release_motor
    float32 Battery_1
    float32 Battery_2
    float32 Battery_3
    float32 Battery_4
    bool Charging
    int32 Encoder_Left
    int32 Encoder_Right
    uint16 Safety_1
    uint16 Safety_2
    uint16 Safety_3
    uint16 Safety_4
    
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
    const resolved = new ArduinoIO(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.EMG !== undefined) {
      resolved.EMG = msg.EMG;
    }
    else {
      resolved.EMG = false
    }

    if (msg.Start_1 !== undefined) {
      resolved.Start_1 = msg.Start_1;
    }
    else {
      resolved.Start_1 = false
    }

    if (msg.Start_2 !== undefined) {
      resolved.Start_2 = msg.Start_2;
    }
    else {
      resolved.Start_2 = false
    }

    if (msg.Stop_1 !== undefined) {
      resolved.Stop_1 = msg.Stop_1;
    }
    else {
      resolved.Stop_1 = false
    }

    if (msg.Stop_2 !== undefined) {
      resolved.Stop_2 = msg.Stop_2;
    }
    else {
      resolved.Stop_2 = false
    }

    if (msg.Remote_A !== undefined) {
      resolved.Remote_A = msg.Remote_A;
    }
    else {
      resolved.Remote_A = false
    }

    if (msg.Remote_B !== undefined) {
      resolved.Remote_B = msg.Remote_B;
    }
    else {
      resolved.Remote_B = false
    }

    if (msg.Motor1_En !== undefined) {
      resolved.Motor1_En = msg.Motor1_En;
    }
    else {
      resolved.Motor1_En = false
    }

    if (msg.Motor1_Break !== undefined) {
      resolved.Motor1_Break = msg.Motor1_Break;
    }
    else {
      resolved.Motor1_Break = false
    }

    if (msg.Motor1_Dir !== undefined) {
      resolved.Motor1_Dir = msg.Motor1_Dir;
    }
    else {
      resolved.Motor1_Dir = false
    }

    if (msg.Motor2_En !== undefined) {
      resolved.Motor2_En = msg.Motor2_En;
    }
    else {
      resolved.Motor2_En = false
    }

    if (msg.Motor2_Break !== undefined) {
      resolved.Motor2_Break = msg.Motor2_Break;
    }
    else {
      resolved.Motor2_Break = false
    }

    if (msg.Motor2_Dir !== undefined) {
      resolved.Motor2_Dir = msg.Motor2_Dir;
    }
    else {
      resolved.Motor2_Dir = false
    }

    if (msg.Bumper_1 !== undefined) {
      resolved.Bumper_1 = msg.Bumper_1;
    }
    else {
      resolved.Bumper_1 = false
    }

    if (msg.Bumper_2 !== undefined) {
      resolved.Bumper_2 = msg.Bumper_2;
    }
    else {
      resolved.Bumper_2 = false
    }

    if (msg.lift_max !== undefined) {
      resolved.lift_max = msg.lift_max;
    }
    else {
      resolved.lift_max = false
    }

    if (msg.lift_min !== undefined) {
      resolved.lift_min = msg.lift_min;
    }
    else {
      resolved.lift_min = false
    }

    if (msg.auto_man_sw !== undefined) {
      resolved.auto_man_sw = msg.auto_man_sw;
    }
    else {
      resolved.auto_man_sw = false
    }

    if (msg.Release_motor !== undefined) {
      resolved.Release_motor = msg.Release_motor;
    }
    else {
      resolved.Release_motor = false
    }

    if (msg.Battery_1 !== undefined) {
      resolved.Battery_1 = msg.Battery_1;
    }
    else {
      resolved.Battery_1 = 0.0
    }

    if (msg.Battery_2 !== undefined) {
      resolved.Battery_2 = msg.Battery_2;
    }
    else {
      resolved.Battery_2 = 0.0
    }

    if (msg.Battery_3 !== undefined) {
      resolved.Battery_3 = msg.Battery_3;
    }
    else {
      resolved.Battery_3 = 0.0
    }

    if (msg.Battery_4 !== undefined) {
      resolved.Battery_4 = msg.Battery_4;
    }
    else {
      resolved.Battery_4 = 0.0
    }

    if (msg.Charging !== undefined) {
      resolved.Charging = msg.Charging;
    }
    else {
      resolved.Charging = false
    }

    if (msg.Encoder_Left !== undefined) {
      resolved.Encoder_Left = msg.Encoder_Left;
    }
    else {
      resolved.Encoder_Left = 0
    }

    if (msg.Encoder_Right !== undefined) {
      resolved.Encoder_Right = msg.Encoder_Right;
    }
    else {
      resolved.Encoder_Right = 0
    }

    if (msg.Safety_1 !== undefined) {
      resolved.Safety_1 = msg.Safety_1;
    }
    else {
      resolved.Safety_1 = 0
    }

    if (msg.Safety_2 !== undefined) {
      resolved.Safety_2 = msg.Safety_2;
    }
    else {
      resolved.Safety_2 = 0
    }

    if (msg.Safety_3 !== undefined) {
      resolved.Safety_3 = msg.Safety_3;
    }
    else {
      resolved.Safety_3 = 0
    }

    if (msg.Safety_4 !== undefined) {
      resolved.Safety_4 = msg.Safety_4;
    }
    else {
      resolved.Safety_4 = 0
    }

    return resolved;
    }
};

module.exports = ArduinoIO;
