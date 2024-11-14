// Auto-generated. Do not edit!

// (in-package gnss_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GlonassEphemeris {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.week = null;
      this.frq = null;
      this.iode = null;
      this.svh = null;
      this.age = null;
      this.toe = null;
      this.tof = null;
      this.pos = null;
      this.vel = null;
      this.acc = null;
      this.taun = null;
      this.gamn = null;
      this.dtaun = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = '';
      }
      if (initObj.hasOwnProperty('week')) {
        this.week = initObj.week
      }
      else {
        this.week = 0;
      }
      if (initObj.hasOwnProperty('frq')) {
        this.frq = initObj.frq
      }
      else {
        this.frq = 0;
      }
      if (initObj.hasOwnProperty('iode')) {
        this.iode = initObj.iode
      }
      else {
        this.iode = 0;
      }
      if (initObj.hasOwnProperty('svh')) {
        this.svh = initObj.svh
      }
      else {
        this.svh = 0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('toe')) {
        this.toe = initObj.toe
      }
      else {
        this.toe = 0.0;
      }
      if (initObj.hasOwnProperty('tof')) {
        this.tof = initObj.tof
      }
      else {
        this.tof = 0.0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = [];
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = [];
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = [];
      }
      if (initObj.hasOwnProperty('taun')) {
        this.taun = initObj.taun
      }
      else {
        this.taun = 0.0;
      }
      if (initObj.hasOwnProperty('gamn')) {
        this.gamn = initObj.gamn
      }
      else {
        this.gamn = 0.0;
      }
      if (initObj.hasOwnProperty('dtaun')) {
        this.dtaun = initObj.dtaun
      }
      else {
        this.dtaun = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlonassEphemeris
    // Serialize message field [prn]
    bufferOffset = _serializer.string(obj.prn, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint16(obj.week, buffer, bufferOffset);
    // Serialize message field [frq]
    bufferOffset = _serializer.int8(obj.frq, buffer, bufferOffset);
    // Serialize message field [iode]
    bufferOffset = _serializer.uint8(obj.iode, buffer, bufferOffset);
    // Serialize message field [svh]
    bufferOffset = _serializer.uint8(obj.svh, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint8(obj.age, buffer, bufferOffset);
    // Serialize message field [toe]
    bufferOffset = _serializer.float64(obj.toe, buffer, bufferOffset);
    // Serialize message field [tof]
    bufferOffset = _serializer.float64(obj.tof, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = _arraySerializer.float64(obj.pos, buffer, bufferOffset, null);
    // Serialize message field [vel]
    bufferOffset = _arraySerializer.float64(obj.vel, buffer, bufferOffset, null);
    // Serialize message field [acc]
    bufferOffset = _arraySerializer.float64(obj.acc, buffer, bufferOffset, null);
    // Serialize message field [taun]
    bufferOffset = _serializer.float64(obj.taun, buffer, bufferOffset);
    // Serialize message field [gamn]
    bufferOffset = _serializer.float64(obj.gamn, buffer, bufferOffset);
    // Serialize message field [dtaun]
    bufferOffset = _serializer.float64(obj.dtaun, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlonassEphemeris
    let len;
    let data = new GlonassEphemeris(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [frq]
    data.frq = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [iode]
    data.iode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [svh]
    data.svh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [toe]
    data.toe = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tof]
    data.tof = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [vel]
    data.vel = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [acc]
    data.acc = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [taun]
    data.taun = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gamn]
    data.gamn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dtaun]
    data.dtaun = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prn);
    length += 8 * object.pos.length;
    length += 8 * object.vel.length;
    length += 8 * object.acc.length;
    return length + 62;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GlonassEphemeris';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9f92a33d8424e6a6e4db533429ffaef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GlonassEphemeris(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = ''
    }

    if (msg.week !== undefined) {
      resolved.week = msg.week;
    }
    else {
      resolved.week = 0
    }

    if (msg.frq !== undefined) {
      resolved.frq = msg.frq;
    }
    else {
      resolved.frq = 0
    }

    if (msg.iode !== undefined) {
      resolved.iode = msg.iode;
    }
    else {
      resolved.iode = 0
    }

    if (msg.svh !== undefined) {
      resolved.svh = msg.svh;
    }
    else {
      resolved.svh = 0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.toe !== undefined) {
      resolved.toe = msg.toe;
    }
    else {
      resolved.toe = 0.0
    }

    if (msg.tof !== undefined) {
      resolved.tof = msg.tof;
    }
    else {
      resolved.tof = 0.0
    }

    if (msg.pos !== undefined) {
      resolved.pos = msg.pos;
    }
    else {
      resolved.pos = []
    }

    if (msg.vel !== undefined) {
      resolved.vel = msg.vel;
    }
    else {
      resolved.vel = []
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = []
    }

    if (msg.taun !== undefined) {
      resolved.taun = msg.taun;
    }
    else {
      resolved.taun = 0.0
    }

    if (msg.gamn !== undefined) {
      resolved.gamn = msg.gamn;
    }
    else {
      resolved.gamn = 0.0
    }

    if (msg.dtaun !== undefined) {
      resolved.dtaun = msg.dtaun;
    }
    else {
      resolved.dtaun = 0.0
    }

    return resolved;
    }
};

module.exports = GlonassEphemeris;
