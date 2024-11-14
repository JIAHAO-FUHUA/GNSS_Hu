// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GnssSsrEphemeris = require('./GnssSsrEphemeris.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssSsrEphemerides {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.corrections = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('corrections')) {
        this.corrections = initObj.corrections
      }
      else {
        this.corrections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssSsrEphemerides
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [corrections]
    // Serialize the length for message field [corrections]
    bufferOffset = _serializer.uint32(obj.corrections.length, buffer, bufferOffset);
    obj.corrections.forEach((val) => {
      bufferOffset = GnssSsrEphemeris.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssSsrEphemerides
    let len;
    let data = new GnssSsrEphemerides(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [corrections]
    // Deserialize array length for message field [corrections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.corrections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.corrections[i] = GnssSsrEphemeris.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.corrections.forEach((val) => {
      length += GnssSsrEphemeris.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssSsrEphemerides';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4d2051d76baaed52944bc5181382d27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header 
    GnssSsrEphemeris[] corrections  # SSR ephemeris corrections
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
    MSG: gnss_comm/GnssSsrEphemeris
    string prn        # Satellite PRN number
    uint16 week       # GPS week, SSR message
    float64 tow       # GPS time of week, SSR message
    uint32 iod        # Issue of data, SSR message
    float64 udi       # SSR update interval
    uint8 iode        # Issue of data, ephemeris
    uint32 iodcrc     # Issue of data crc for BDS
    uint8 refd        # Sat ref datum (0:ITRF,1:regional)
    float64[] deph    # Delta orbit {radial,along,cross}
    float64[] ddeph   # Dot delta orbit {radial,along,cross}
    float64[] dclk    # Delta clock {c0,c1,c2}
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssSsrEphemerides(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.corrections !== undefined) {
      resolved.corrections = new Array(msg.corrections.length);
      for (let i = 0; i < resolved.corrections.length; ++i) {
        resolved.corrections[i] = GnssSsrEphemeris.Resolve(msg.corrections[i]);
      }
    }
    else {
      resolved.corrections = []
    }

    return resolved;
    }
};

module.exports = GnssSsrEphemerides;
