// Auto-generated. Do not edit!

// (in-package tuw_multi_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Vertex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.valid = null;
      this.path = null;
      this.weight = null;
      this.width = null;
      this.successors = null;
      this.predecessors = null;
      this.layout = null;
      this.direction = null;
      this.special_pose = null;
      this.start_properties = null;
      this.end_properties = null;
      this.traffic_rule = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = [];
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('successors')) {
        this.successors = initObj.successors
      }
      else {
        this.successors = [];
      }
      if (initObj.hasOwnProperty('predecessors')) {
        this.predecessors = initObj.predecessors
      }
      else {
        this.predecessors = [];
      }
      if (initObj.hasOwnProperty('layout')) {
        this.layout = initObj.layout
      }
      else {
        this.layout = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = [];
      }
      if (initObj.hasOwnProperty('special_pose')) {
        this.special_pose = initObj.special_pose
      }
      else {
        this.special_pose = false;
      }
      if (initObj.hasOwnProperty('start_properties')) {
        this.start_properties = initObj.start_properties
      }
      else {
        this.start_properties = '';
      }
      if (initObj.hasOwnProperty('end_properties')) {
        this.end_properties = initObj.end_properties
      }
      else {
        this.end_properties = '';
      }
      if (initObj.hasOwnProperty('traffic_rule')) {
        this.traffic_rule = initObj.traffic_rule
      }
      else {
        this.traffic_rule = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vertex
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [path]
    // Serialize the length for message field [path]
    bufferOffset = _serializer.uint32(obj.path.length, buffer, bufferOffset);
    obj.path.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [weight]
    bufferOffset = _serializer.uint32(obj.weight, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [successors]
    bufferOffset = _arraySerializer.uint32(obj.successors, buffer, bufferOffset, null);
    // Serialize message field [predecessors]
    bufferOffset = _arraySerializer.uint32(obj.predecessors, buffer, bufferOffset, null);
    // Serialize message field [layout]
    bufferOffset = _serializer.int32(obj.layout, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _arraySerializer.string(obj.direction, buffer, bufferOffset, null);
    // Serialize message field [special_pose]
    bufferOffset = _serializer.bool(obj.special_pose, buffer, bufferOffset);
    // Serialize message field [start_properties]
    bufferOffset = _serializer.string(obj.start_properties, buffer, bufferOffset);
    // Serialize message field [end_properties]
    bufferOffset = _serializer.string(obj.end_properties, buffer, bufferOffset);
    // Serialize message field [traffic_rule]
    bufferOffset = _serializer.string(obj.traffic_rule, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vertex
    let len;
    let data = new Vertex(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [path]
    // Deserialize array length for message field [path]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.path = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.path[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [weight]
    data.weight = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [successors]
    data.successors = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [predecessors]
    data.predecessors = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [layout]
    data.layout = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [special_pose]
    data.special_pose = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [start_properties]
    data.start_properties = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [end_properties]
    data.end_properties = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [traffic_rule]
    data.traffic_rule = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.path.length;
    length += 4 * object.successors.length;
    length += 4 * object.predecessors.length;
    object.direction.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += _getByteLength(object.start_properties);
    length += _getByteLength(object.end_properties);
    length += _getByteLength(object.traffic_rule);
    return length + 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tuw_multi_robot_msgs/Vertex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cecf62a42e6d3f44ea93c3166ac94134';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################################################################
    ## A single vertex in a graph
    ## Each vertex of the same graph must have a unique id.
    ## Successors and Predecessors must have a common start or end
    ## point
    #################################################################
    uint32 id                   # Vertex id
    bool valid                  # true if it can be used for planning
    geometry_msgs/Point[] path  # points describing a path from the vertex start to the vertex endpoint
                                #    the first point in the array reprecents the start and the last the endpoint
                                #    this points can also be used by the vehciles local path following algorithm
    uint32 weight               # the weight of the vertex (e.g. length of the segment)
    float32 width               # fee space next to the vertex
    uint32[] successors         # edges to successors
    uint32[] predecessors       # edges to predecessor
    int32 layout
    string[] direction
    bool special_pose
    string start_properties
    string end_properties
    string traffic_rule
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Vertex(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.path !== undefined) {
      resolved.path = new Array(msg.path.length);
      for (let i = 0; i < resolved.path.length; ++i) {
        resolved.path[i] = geometry_msgs.msg.Point.Resolve(msg.path[i]);
      }
    }
    else {
      resolved.path = []
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.successors !== undefined) {
      resolved.successors = msg.successors;
    }
    else {
      resolved.successors = []
    }

    if (msg.predecessors !== undefined) {
      resolved.predecessors = msg.predecessors;
    }
    else {
      resolved.predecessors = []
    }

    if (msg.layout !== undefined) {
      resolved.layout = msg.layout;
    }
    else {
      resolved.layout = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = []
    }

    if (msg.special_pose !== undefined) {
      resolved.special_pose = msg.special_pose;
    }
    else {
      resolved.special_pose = false
    }

    if (msg.start_properties !== undefined) {
      resolved.start_properties = msg.start_properties;
    }
    else {
      resolved.start_properties = ''
    }

    if (msg.end_properties !== undefined) {
      resolved.end_properties = msg.end_properties;
    }
    else {
      resolved.end_properties = ''
    }

    if (msg.traffic_rule !== undefined) {
      resolved.traffic_rule = msg.traffic_rule;
    }
    else {
      resolved.traffic_rule = ''
    }

    return resolved;
    }
};

module.exports = Vertex;
