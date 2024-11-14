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

class GnssSsrEphemeris {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.week = null;
      this.tow = null;
      this.iod = null;
      this.udi = null;
      this.iode = null;
      this.iodcrc = null;
      this.refd = null;
      this.deph = null;
      this.ddeph = null;
      this.dclk = null;
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
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0.0;
      }
      if (initObj.hasOwnProperty('iod')) {
        this.iod = initObj.iod
      }
      else {
        this.iod = 0;
      }
      if (initObj.hasOwnProperty('udi')) {
        this.udi = initObj.udi
      }
      else {
        this.udi = 0.0;
      }
      if (initObj.hasOwnProperty('iode')) {
        this.iode = initObj.iode
      }
      else {
        this.iode = 0;
      }
      if (initObj.hasOwnProperty('iodcrc')) {
        this.iodcrc = initObj.iodcrc
      }
      else {
        this.iodcrc = 0;
      }
      if (initObj.hasOwnProperty('refd')) {
        this.refd = initObj.refd
      }
      else {
        this.refd = 0;
      }
      if (initObj.hasOwnProperty('deph')) {
        this.deph = initObj.deph
      }
      else {
        this.deph = [];
      }
      if (initObj.hasOwnProperty('ddeph')) {
        this.ddeph = initObj.ddeph
      }
      else {
        this.ddeph = [];
      }
      if (initObj.hasOwnProperty('dclk')) {
        this.dclk = initObj.dclk
      }
      else {
        this.dclk = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssSsrEphemeris
    // Serialize message field [prn]
    bufferOffset = _serializer.string(obj.prn, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint16(obj.week, buffer, bufferOffset);
    // Serialize message field [tow]
    bufferOffset = _serializer.float64(obj.tow, buffer, bufferOffset);
    // Serialize message field [iod]
    bufferOffset = _serializer.uint32(obj.iod, buffer, bufferOffset);
    // Serialize message field [udi]
    bufferOffset = _serializer.float64(obj.udi, buffer, bufferOffset);
    // Serialize message field [iode]
    bufferOffset = _serializer.uint8(obj.iode, buffer, bufferOffset);
    // Serialize message field [iodcrc]
    bufferOffset = _serializer.uint32(obj.iodcrc, buffer, bufferOffset);
    // Serialize message field [refd]
    bufferOffset = _serializer.uint8(obj.refd, buffer, bufferOffset);
    // Serialize message field [deph]
    bufferOffset = _arraySerializer.float64(obj.deph, buffer, bufferOffset, null);
    // Serialize message field [ddeph]
    bufferOffset = _arraySerializer.float64(obj.ddeph, buffer, bufferOffset, null);
    // Serialize message field [dclk]
    bufferOffset = _arraySerializer.float64(obj.dclk, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssSsrEphemeris
    let len;
    let data = new GnssSsrEphemeris(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tow]
    data.tow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iod]
    data.iod = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [udi]
    data.udi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iode]
    data.iode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [iodcrc]
    data.iodcrc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [refd]
    data.refd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [deph]
    data.deph = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [ddeph]
    data.ddeph = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [dclk]
    data.dclk = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prn);
    length += 8 * object.deph.length;
    length += 8 * object.ddeph.length;
    length += 8 * object.dclk.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssSsrEphemeris';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90ff7dc20ab8b7d1ed3917babacbe669';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GnssSsrEphemeris(null);
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

    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0.0
    }

    if (msg.iod !== undefined) {
      resolved.iod = msg.iod;
    }
    else {
      resolved.iod = 0
    }

    if (msg.udi !== undefined) {
      resolved.udi = msg.udi;
    }
    else {
      resolved.udi = 0.0
    }

    if (msg.iode !== undefined) {
      resolved.iode = msg.iode;
    }
    else {
      resolved.iode = 0
    }

    if (msg.iodcrc !== undefined) {
      resolved.iodcrc = msg.iodcrc;
    }
    else {
      resolved.iodcrc = 0
    }

    if (msg.refd !== undefined) {
      resolved.refd = msg.refd;
    }
    else {
      resolved.refd = 0
    }

    if (msg.deph !== undefined) {
      resolved.deph = msg.deph;
    }
    else {
      resolved.deph = []
    }

    if (msg.ddeph !== undefined) {
      resolved.ddeph = msg.ddeph;
    }
    else {
      resolved.ddeph = []
    }

    if (msg.dclk !== undefined) {
      resolved.dclk = msg.dclk;
    }
    else {
      resolved.dclk = []
    }

    return resolved;
    }
};

module.exports = GnssSsrEphemeris;
