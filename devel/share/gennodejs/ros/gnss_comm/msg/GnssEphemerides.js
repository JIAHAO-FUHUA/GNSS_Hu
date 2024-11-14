// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GnssEphemeris = require('./GnssEphemeris.js');
let GlonassEphemeris = require('./GlonassEphemeris.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssEphemerides {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ephemerides = null;
      this.glonass_ephemerides = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ephemerides')) {
        this.ephemerides = initObj.ephemerides
      }
      else {
        this.ephemerides = [];
      }
      if (initObj.hasOwnProperty('glonass_ephemerides')) {
        this.glonass_ephemerides = initObj.glonass_ephemerides
      }
      else {
        this.glonass_ephemerides = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssEphemerides
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ephemerides]
    // Serialize the length for message field [ephemerides]
    bufferOffset = _serializer.uint32(obj.ephemerides.length, buffer, bufferOffset);
    obj.ephemerides.forEach((val) => {
      bufferOffset = GnssEphemeris.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [glonass_ephemerides]
    // Serialize the length for message field [glonass_ephemerides]
    bufferOffset = _serializer.uint32(obj.glonass_ephemerides.length, buffer, bufferOffset);
    obj.glonass_ephemerides.forEach((val) => {
      bufferOffset = GlonassEphemeris.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssEphemerides
    let len;
    let data = new GnssEphemerides(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ephemerides]
    // Deserialize array length for message field [ephemerides]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ephemerides = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ephemerides[i] = GnssEphemeris.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [glonass_ephemerides]
    // Deserialize array length for message field [glonass_ephemerides]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.glonass_ephemerides = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.glonass_ephemerides[i] = GlonassEphemeris.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.ephemerides.forEach((val) => {
      length += GnssEphemeris.getMessageSize(val);
    });
    object.glonass_ephemerides.forEach((val) => {
      length += GlonassEphemeris.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssEphemerides';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '431654d65783239591dcbb9ac2bccfdd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header 
    GnssEphemeris[] ephemerides             # GPS, BDS, Galileo ephemeris of each satellites
    GlonassEphemeris[] glonass_ephemerides  # Glonass ephemeris of each satellites
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
    MSG: gnss_comm/GnssEphemeris
    string prn        # Satellite PRN number
    uint16 week       # GPS week
    uint8 sva         # SV accuracy (URA index)
    uint16 code       # GPS: code on L2, GAL/BDS: data source
    uint8 iode        # Issue of data, ephemeris
    uint16 iodc       # Issue of data, clock
    uint8 svh         # SV health
    float64 toc       # Time of clock
    float64 idot      # SV orbit parameter
    float64 crs       # SV orbit parameter
    float64 deln      # SV orbit parameter
    float64 M0        # SV orbit parameter
    float64 cuc       # SV orbit parameter
    float64 e         # SV orbit parameter
    float64 cus       # SV orbit parameter
    float64 A         # SV orbit parameter
    float64 toes      # SV orbit parameter
    float64 cic       # SV orbit parameter
    float64 OMG0      # SV orbit parameter
    float64 cis       # SV orbit parameter
    float64 i0        # SV orbit parameter
    float64 crc       # SV orbit parameter
    float64 omg       # SV orbit parameter
    float64 OMGd      # SV orbit parameter
    float64[] tgd     # Group delay parameters
    float64 f2        # SV clock parameter
    float64 f1        # SV clock parameter
    float64 f0        # SV clock parameter
    ================================================================================
    MSG: gnss_comm/GlonassEphemeris
    string prn        # Satellite PRN number
    uint16 week       # GPS week
    int8 frq          # Satellite frequency number
    uint8 iode        # Issue of data, ephemeris
    uint8 svh         # SV health
    uint8 age         # Age of operation
    float64 toe       # Epoch of epherides
    float64 tof       # Message frame time
    float64[] pos     # Satellite position
    float64[] vel     # Satellite velocity
    float64[] acc     # Satellite acceleration
    float64 taun      # SV clock bias
    float64 gamn      # SV relative freq bias
    float64 dtaun     # Delay between L1 and L2
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssEphemerides(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ephemerides !== undefined) {
      resolved.ephemerides = new Array(msg.ephemerides.length);
      for (let i = 0; i < resolved.ephemerides.length; ++i) {
        resolved.ephemerides[i] = GnssEphemeris.Resolve(msg.ephemerides[i]);
      }
    }
    else {
      resolved.ephemerides = []
    }

    if (msg.glonass_ephemerides !== undefined) {
      resolved.glonass_ephemerides = new Array(msg.glonass_ephemerides.length);
      for (let i = 0; i < resolved.glonass_ephemerides.length; ++i) {
        resolved.glonass_ephemerides[i] = GlonassEphemeris.Resolve(msg.glonass_ephemerides[i]);
      }
    }
    else {
      resolved.glonass_ephemerides = []
    }

    return resolved;
    }
};

module.exports = GnssEphemerides;
