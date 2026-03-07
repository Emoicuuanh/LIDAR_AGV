// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Route = require('./Route.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RouteArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id_request = null;
      this.routes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id_request')) {
        this.id_request = initObj.id_request
      }
      else {
        this.id_request = '';
      }
      if (initObj.hasOwnProperty('routes')) {
        this.routes = initObj.routes
      }
      else {
        this.routes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id_request]
    bufferOffset = _serializer.string(obj.id_request, buffer, bufferOffset);
    // Serialize message field [routes]
    // Serialize the length for message field [routes]
    bufferOffset = _serializer.uint32(obj.routes.length, buffer, bufferOffset);
    obj.routes.forEach((val) => {
      bufferOffset = Route.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteArray
    let len;
    let data = new RouteArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id_request]
    data.id_request = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [routes]
    // Deserialize array length for message field [routes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.routes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.routes[i] = Route.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.id_request);
    object.routes.forEach((val) => {
      length += Route.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/RouteArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68e00687fc15821fd35f16dce9cc143b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header # time of route generation
    string id_request
    Route[] routes
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
    MSG: tuw_multi_robot_msgs/Route
    #################################################################
    ## used to guide a single vehicle along segments
    #################################################################
    Header header # time of route generation
    string robot_name
    string id_request
    RouteSegment[] segments # route segments a robot has to follow
    ================================================================================
    MSG: tuw_multi_robot_msgs/RouteSegment
    #################################################################
    ## Describes a segment on a route with: start, end, width
    ## and preconditions for synchronisation to other robots
    #################################################################
    
    int32 segment_id                        # the unique identifier of a segment
    RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment
    geometry_msgs/Pose start                # startpoint of the segment
    geometry_msgs/Pose end                  # endpoint of the segment
    string start_properties
    string end_properties
    float32 width                           # width of the segment
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id_request !== undefined) {
      resolved.id_request = msg.id_request;
    }
    else {
      resolved.id_request = ''
    }

    if (msg.routes !== undefined) {
      resolved.routes = new Array(msg.routes.length);
      for (let i = 0; i < resolved.routes.length; ++i) {
        resolved.routes[i] = Route.Resolve(msg.routes[i]);
      }
    }
    else {
      resolved.routes = []
    }

    return resolved;
    }
};

module.exports = RouteArray;
