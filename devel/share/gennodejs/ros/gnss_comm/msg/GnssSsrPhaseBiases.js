// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GnssSsrPhaseBias = require('./GnssSsrPhaseBias.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssSsrPhaseBiases {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.biases = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('biases')) {
        this.biases = initObj.biases
      }
      else {
        this.biases = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssSsrPhaseBiases
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [biases]
    // Serialize the length for message field [biases]
    bufferOffset = _serializer.uint32(obj.biases.length, buffer, bufferOffset);
    obj.biases.forEach((val) => {
      bufferOffset = GnssSsrPhaseBias.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssSsrPhaseBiases
    let len;
    let data = new GnssSsrPhaseBiases(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [biases]
    // Deserialize array length for message field [biases]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.biases = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.biases[i] = GnssSsrPhaseBias.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.biases.forEach((val) => {
      length += GnssSsrPhaseBias.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssSsrPhaseBiases';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6159b3ab70f3feffd59baf141fb2772d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header 
    GnssSsrPhaseBias[] biases  # SSR phase biases
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
    MSG: gnss_comm/GnssSsrPhaseBias
    string prn        # Satellite PRN number
    uint16 week       # GPS week, SSR message
    float64 tow       # GPS time of week, SSR message
    uint32 iod        # Issue of data, SSR message
    uint8 isdpb       # If differenced
    float64 udi       # SSR update interval
    string[] phase    # Phase indicators
    float64[] bias    # Phase biases
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssSsrPhaseBiases(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.biases !== undefined) {
      resolved.biases = new Array(msg.biases.length);
      for (let i = 0; i < resolved.biases.length; ++i) {
        resolved.biases[i] = GnssSsrPhaseBias.Resolve(msg.biases[i]);
      }
    }
    else {
      resolved.biases = []
    }

    return resolved;
    }
};

module.exports = GnssSsrPhaseBiases;
