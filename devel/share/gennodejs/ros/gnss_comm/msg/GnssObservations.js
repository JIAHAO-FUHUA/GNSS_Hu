// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GnssObservation = require('./GnssObservation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssObservations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.observations = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('observations')) {
        this.observations = initObj.observations
      }
      else {
        this.observations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssObservations
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [observations]
    // Serialize the length for message field [observations]
    bufferOffset = _serializer.uint32(obj.observations.length, buffer, bufferOffset);
    obj.observations.forEach((val) => {
      bufferOffset = GnssObservation.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssObservations
    let len;
    let data = new GnssObservations(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [observations]
    // Deserialize array length for message field [observations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.observations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.observations[i] = GnssObservation.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.observations.forEach((val) => {
      length += GnssObservation.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssObservations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fa545dbe3bd92fe626968338708f3c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    GnssObservation[] observations   # Observations of each satellites
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
    MSG: gnss_comm/GnssObservation
    string prn        # Satellite PRN number
    uint16 week       # GPS week
    float64 tow       # GPS time of week
    float64[] SNR      # Signal strengths
    uint8[] LLI       # Loss of lock indicators
    string[] code     # Code indicators
    float64[] L       # Carrier phase cycles
    float64[] P       # Pseudoranges
    float64[] D       # Dopplers
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssObservations(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.observations !== undefined) {
      resolved.observations = new Array(msg.observations.length);
      for (let i = 0; i < resolved.observations.length; ++i) {
        resolved.observations[i] = GnssObservation.Resolve(msg.observations[i]);
      }
    }
    else {
      resolved.observations = []
    }

    return resolved;
    }
};

module.exports = GnssObservations;
