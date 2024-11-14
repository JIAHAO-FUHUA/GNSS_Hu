// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GnssEphemMsg = require('./GnssEphemMsg.js');
let GnssGloEphemMsg = require('./GnssGloEphemMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GnssEphemMsgarray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ephem = null;
      this.gloephem = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ephem')) {
        this.ephem = initObj.ephem
      }
      else {
        this.ephem = [];
      }
      if (initObj.hasOwnProperty('gloephem')) {
        this.gloephem = initObj.gloephem
      }
      else {
        this.gloephem = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssEphemMsgarray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ephem]
    // Serialize the length for message field [ephem]
    bufferOffset = _serializer.uint32(obj.ephem.length, buffer, bufferOffset);
    obj.ephem.forEach((val) => {
      bufferOffset = GnssEphemMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gloephem]
    // Serialize the length for message field [gloephem]
    bufferOffset = _serializer.uint32(obj.gloephem.length, buffer, bufferOffset);
    obj.gloephem.forEach((val) => {
      bufferOffset = GnssGloEphemMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssEphemMsgarray
    let len;
    let data = new GnssEphemMsgarray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ephem]
    // Deserialize array length for message field [ephem]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ephem = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ephem[i] = GnssEphemMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gloephem]
    // Deserialize array length for message field [gloephem]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.gloephem = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gloephem[i] = GnssGloEphemMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 252 * object.ephem.length;
    length += 148 * object.gloephem.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssEphemMsgarray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31054b3280a005cf30c1076c7645b85e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header 
    GnssEphemMsg[] ephem             # GPS, BDS, Galileo ephemeris of each satellites
    GnssGloEphemMsg[] gloephem 
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
    MSG: gnss_comm/GnssEphemMsg
    # This message contains GPS, Galileo and BeiDou ephemeris data
    
    uint32 sat
    GnssTimeMsg ttr
    GnssTimeMsg toe
    GnssTimeMsg toc
    float64 toe_tow
    uint32 week
    uint32 iode
    uint32 iodc
    uint32 health
    uint32 code
    float64 ura
    float64 A
    float64 e
    float64 i0
    float64 omg
    float64 OMG0
    float64 M0
    float64 delta_n
    float64 OMG_dot
    float64 i_dot
    float64 cuc
    float64 cus
    float64 crc
    float64 crs
    float64 cic
    float64 cis
    float64 af0
    float64 af1
    float64 af2
    float64 tgd0
    float64 tgd1
    float64 A_dot
    float64 n_dot
    ================================================================================
    MSG: gnss_comm/GnssTimeMsg
    # This message contains GNSS time expressed in the form of 
    # GNSS week number and time of week(in seconds)
    
    uint32 week
    float64 tow
    ================================================================================
    MSG: gnss_comm/GnssGloEphemMsg
    # This message contains GLONASS ephemeris data
    
    uint32 sat
    GnssTimeMsg ttr
    GnssTimeMsg toe
    int32  freqo
    uint32 iode
    uint32 health
    uint32 age
    float64 ura
    float64 pos_x
    float64 pos_y
    float64 pos_z
    float64 vel_x
    float64 vel_y
    float64 vel_z
    float64 acc_x
    float64 acc_y
    float64 acc_z
    float64 tau_n
    float64 gamma
    float64 delta_tau_n
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssEphemMsgarray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ephem !== undefined) {
      resolved.ephem = new Array(msg.ephem.length);
      for (let i = 0; i < resolved.ephem.length; ++i) {
        resolved.ephem[i] = GnssEphemMsg.Resolve(msg.ephem[i]);
      }
    }
    else {
      resolved.ephem = []
    }

    if (msg.gloephem !== undefined) {
      resolved.gloephem = new Array(msg.gloephem.length);
      for (let i = 0; i < resolved.gloephem.length; ++i) {
        resolved.gloephem[i] = GnssGloEphemMsg.Resolve(msg.gloephem[i]);
      }
    }
    else {
      resolved.gloephem = []
    }

    return resolved;
    }
};

module.exports = GnssEphemMsgarray;
