// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotInfo = require('./RobotInfo.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotInfoArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_info = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robot_info')) {
        this.robot_info = initObj.robot_info
      }
      else {
        this.robot_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfoArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_info]
    // Serialize the length for message field [robot_info]
    bufferOffset = _serializer.uint32(obj.robot_info.length, buffer, bufferOffset);
    obj.robot_info.forEach((val) => {
      bufferOffset = RobotInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfoArray
    let len;
    let data = new RobotInfoArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_info]
    // Deserialize array length for message field [robot_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robot_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robot_info[i] = RobotInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.robot_info.forEach((val) => {
      length += RobotInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RobotInfoArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8499af4683f82d8a5f5431edfe73ca8f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header # time of route generation
    RobotInfo[] robot_info
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
    MSG: tuw_multi_robot_msgs/RobotInfo
    #################################################################
    ## Presents dynamic parameters of a robot
    #################################################################
    
    Header header                            # the creation time
    string robot_name                        # the name of the robot (used in preconditions and topics)
    geometry_msgs/PoseWithCovariance pose    # the robots current pose within the frame related to the msgs header
    geometry_msgs/Twist velocity             # velocity of the robot (linear and angular)
    int32 shape                              # the shape of the robots (see enums)
    uint32 layout_map
    float32[] shape_variables                # shape variables to define width height, ...
    RoutePrecondition sync                   # the current position in the last received plan (-1 means none)
    string   mode                             # the mode of operation
    string   status                           # the status of the robot
    string detail_status
    int32   good_id                          # the good id attached to the robot
    int32   order_id                         # the order id scheduled to this robot (-1: none)
    int32   order_status                     # the status of the assigned order
    
    # mode
    int32 MODE_NA = 0                   # undefined mode
    int32 MODE_IDLE = 1                 # robot is idle
    int32 MODE_SEGMENT_FOLLOWING = 2    # robot is in mode segment following
    int32 MODE_PICKUP = 3               # robot is picking up goods
    
    # status
    int32 STATUS_DRIVING = 0             # robot is driving
    int32 STATUS_STOPPED = 1            # robot has stopped
    int32 STATUS_DONE = 2               # robot has finished its last job
    int32 STATUS_BROKEN = 3             # robot is broken and not ready for any task
    
    # good_id
    int32 GOOD_EMPTY = -1               # no goods attached
    int32 GOOD_NA = -2                  # undefined good
    
    # shape
    int32 SHAPE_CIRCLE = 0                 # robot is in shape of a circle    ShapeVars
    int32 SHAPE_RECTANGLE = 1
    
    # order_status
    int32 ORDER_NONE = 0                # no order assigned
    int32 ORDER_APPROACH = 1            # the robot approaches the first station of the order
    int32 ORDER_PICKUP = 2              # the robot picks up a good at the station
    int32 ORDER_TRANSPORT = 3           # the robot currently transports a good from one station to another
    int32 ORDER_DROP = 4                # the robot drops a good at the last station of its order, finishing the order
    
    bool auto_mode
    bool pause
    bool init_pose
    bool allow_estimate_pose
    string current_action_type
    string direction_move
    string state_move
    string mission_group
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: tuw_multi_robot_msgs/RoutePrecondition
    #################################################################
    ## Route Preconditions are used to sync robots on a route
    ## e.g.: Each robot publishes its current step of its route
    ## with such a message
    ## The specific segments of a route are marked with such
    ## preconditions to block a robot from entering a segment
    ## until the sync message of the other robot has the right
    ## route_segment_nr
    #################################################################
    
    string robot_id                  # the robot name for the precondition
    int32 current_route_segment      # the segment nr of the route executed by the given robot
    uint32 current_segment_id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfoArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_info !== undefined) {
      resolved.robot_info = new Array(msg.robot_info.length);
      for (let i = 0; i < resolved.robot_info.length; ++i) {
        resolved.robot_info[i] = RobotInfo.Resolve(msg.robot_info[i]);
      }
    }
    else {
      resolved.robot_info = []
    }

    return resolved;
    }
};

module.exports = RobotInfoArray;
