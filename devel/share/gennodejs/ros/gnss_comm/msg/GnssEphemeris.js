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

class GnssEphemeris {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.week = null;
      this.sva = null;
      this.code = null;
      this.iode = null;
      this.iodc = null;
      this.svh = null;
      this.toc = null;
      this.idot = null;
      this.crs = null;
      this.deln = null;
      this.M0 = null;
      this.cuc = null;
      this.e = null;
      this.cus = null;
      this.A = null;
      this.toes = null;
      this.cic = null;
      this.OMG0 = null;
      this.cis = null;
      this.i0 = null;
      this.crc = null;
      this.omg = null;
      this.OMGd = null;
      this.tgd = null;
      this.f2 = null;
      this.f1 = null;
      this.f0 = null;
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
      if (initObj.hasOwnProperty('sva')) {
        this.sva = initObj.sva
      }
      else {
        this.sva = 0;
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('iode')) {
        this.iode = initObj.iode
      }
      else {
        this.iode = 0;
      }
      if (initObj.hasOwnProperty('iodc')) {
        this.iodc = initObj.iodc
      }
      else {
        this.iodc = 0;
      }
      if (initObj.hasOwnProperty('svh')) {
        this.svh = initObj.svh
      }
      else {
        this.svh = 0;
      }
      if (initObj.hasOwnProperty('toc')) {
        this.toc = initObj.toc
      }
      else {
        this.toc = 0.0;
      }
      if (initObj.hasOwnProperty('idot')) {
        this.idot = initObj.idot
      }
      else {
        this.idot = 0.0;
      }
      if (initObj.hasOwnProperty('crs')) {
        this.crs = initObj.crs
      }
      else {
        this.crs = 0.0;
      }
      if (initObj.hasOwnProperty('deln')) {
        this.deln = initObj.deln
      }
      else {
        this.deln = 0.0;
      }
      if (initObj.hasOwnProperty('M0')) {
        this.M0 = initObj.M0
      }
      else {
        this.M0 = 0.0;
      }
      if (initObj.hasOwnProperty('cuc')) {
        this.cuc = initObj.cuc
      }
      else {
        this.cuc = 0.0;
      }
      if (initObj.hasOwnProperty('e')) {
        this.e = initObj.e
      }
      else {
        this.e = 0.0;
      }
      if (initObj.hasOwnProperty('cus')) {
        this.cus = initObj.cus
      }
      else {
        this.cus = 0.0;
      }
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = 0.0;
      }
      if (initObj.hasOwnProperty('toes')) {
        this.toes = initObj.toes
      }
      else {
        this.toes = 0.0;
      }
      if (initObj.hasOwnProperty('cic')) {
        this.cic = initObj.cic
      }
      else {
        this.cic = 0.0;
      }
      if (initObj.hasOwnProperty('OMG0')) {
        this.OMG0 = initObj.OMG0
      }
      else {
        this.OMG0 = 0.0;
      }
      if (initObj.hasOwnProperty('cis')) {
        this.cis = initObj.cis
      }
      else {
        this.cis = 0.0;
      }
      if (initObj.hasOwnProperty('i0')) {
        this.i0 = initObj.i0
      }
      else {
        this.i0 = 0.0;
      }
      if (initObj.hasOwnProperty('crc')) {
        this.crc = initObj.crc
      }
      else {
        this.crc = 0.0;
      }
      if (initObj.hasOwnProperty('omg')) {
        this.omg = initObj.omg
      }
      else {
        this.omg = 0.0;
      }
      if (initObj.hasOwnProperty('OMGd')) {
        this.OMGd = initObj.OMGd
      }
      else {
        this.OMGd = 0.0;
      }
      if (initObj.hasOwnProperty('tgd')) {
        this.tgd = initObj.tgd
      }
      else {
        this.tgd = [];
      }
      if (initObj.hasOwnProperty('f2')) {
        this.f2 = initObj.f2
      }
      else {
        this.f2 = 0.0;
      }
      if (initObj.hasOwnProperty('f1')) {
        this.f1 = initObj.f1
      }
      else {
        this.f1 = 0.0;
      }
      if (initObj.hasOwnProperty('f0')) {
        this.f0 = initObj.f0
      }
      else {
        this.f0 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssEphemeris
    // Serialize message field [prn]
    bufferOffset = _serializer.string(obj.prn, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint16(obj.week, buffer, bufferOffset);
    // Serialize message field [sva]
    bufferOffset = _serializer.uint8(obj.sva, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.uint16(obj.code, buffer, bufferOffset);
    // Serialize message field [iode]
    bufferOffset = _serializer.uint8(obj.iode, buffer, bufferOffset);
    // Serialize message field [iodc]
    bufferOffset = _serializer.uint16(obj.iodc, buffer, bufferOffset);
    // Serialize message field [svh]
    bufferOffset = _serializer.uint8(obj.svh, buffer, bufferOffset);
    // Serialize message field [toc]
    bufferOffset = _serializer.float64(obj.toc, buffer, bufferOffset);
    // Serialize message field [idot]
    bufferOffset = _serializer.float64(obj.idot, buffer, bufferOffset);
    // Serialize message field [crs]
    bufferOffset = _serializer.float64(obj.crs, buffer, bufferOffset);
    // Serialize message field [deln]
    bufferOffset = _serializer.float64(obj.deln, buffer, bufferOffset);
    // Serialize message field [M0]
    bufferOffset = _serializer.float64(obj.M0, buffer, bufferOffset);
    // Serialize message field [cuc]
    bufferOffset = _serializer.float64(obj.cuc, buffer, bufferOffset);
    // Serialize message field [e]
    bufferOffset = _serializer.float64(obj.e, buffer, bufferOffset);
    // Serialize message field [cus]
    bufferOffset = _serializer.float64(obj.cus, buffer, bufferOffset);
    // Serialize message field [A]
    bufferOffset = _serializer.float64(obj.A, buffer, bufferOffset);
    // Serialize message field [toes]
    bufferOffset = _serializer.float64(obj.toes, buffer, bufferOffset);
    // Serialize message field [cic]
    bufferOffset = _serializer.float64(obj.cic, buffer, bufferOffset);
    // Serialize message field [OMG0]
    bufferOffset = _serializer.float64(obj.OMG0, buffer, bufferOffset);
    // Serialize message field [cis]
    bufferOffset = _serializer.float64(obj.cis, buffer, bufferOffset);
    // Serialize message field [i0]
    bufferOffset = _serializer.float64(obj.i0, buffer, bufferOffset);
    // Serialize message field [crc]
    bufferOffset = _serializer.float64(obj.crc, buffer, bufferOffset);
    // Serialize message field [omg]
    bufferOffset = _serializer.float64(obj.omg, buffer, bufferOffset);
    // Serialize message field [OMGd]
    bufferOffset = _serializer.float64(obj.OMGd, buffer, bufferOffset);
    // Serialize message field [tgd]
    bufferOffset = _arraySerializer.float64(obj.tgd, buffer, bufferOffset, null);
    // Serialize message field [f2]
    bufferOffset = _serializer.float64(obj.f2, buffer, bufferOffset);
    // Serialize message field [f1]
    bufferOffset = _serializer.float64(obj.f1, buffer, bufferOffset);
    // Serialize message field [f0]
    bufferOffset = _serializer.float64(obj.f0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssEphemeris
    let len;
    let data = new GnssEphemeris(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sva]
    data.sva = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [iode]
    data.iode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [iodc]
    data.iodc = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [svh]
    data.svh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [toc]
    data.toc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [idot]
    data.idot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [crs]
    data.crs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [deln]
    data.deln = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [M0]
    data.M0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cuc]
    data.cuc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [e]
    data.e = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cus]
    data.cus = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [A]
    data.A = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [toes]
    data.toes = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cic]
    data.cic = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [OMG0]
    data.OMG0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cis]
    data.cis = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [i0]
    data.i0 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [crc]
    data.crc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omg]
    data.omg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [OMGd]
    data.OMGd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tgd]
    data.tgd = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [f2]
    data.f2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f1]
    data.f1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f0]
    data.f0 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prn);
    length += 8 * object.tgd.length;
    return length + 177;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssEphemeris';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f182a49b5f433f32cb565ad1e7c4c34a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssEphemeris(null);
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

    if (msg.sva !== undefined) {
      resolved.sva = msg.sva;
    }
    else {
      resolved.sva = 0
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.iode !== undefined) {
      resolved.iode = msg.iode;
    }
    else {
      resolved.iode = 0
    }

    if (msg.iodc !== undefined) {
      resolved.iodc = msg.iodc;
    }
    else {
      resolved.iodc = 0
    }

    if (msg.svh !== undefined) {
      resolved.svh = msg.svh;
    }
    else {
      resolved.svh = 0
    }

    if (msg.toc !== undefined) {
      resolved.toc = msg.toc;
    }
    else {
      resolved.toc = 0.0
    }

    if (msg.idot !== undefined) {
      resolved.idot = msg.idot;
    }
    else {
      resolved.idot = 0.0
    }

    if (msg.crs !== undefined) {
      resolved.crs = msg.crs;
    }
    else {
      resolved.crs = 0.0
    }

    if (msg.deln !== undefined) {
      resolved.deln = msg.deln;
    }
    else {
      resolved.deln = 0.0
    }

    if (msg.M0 !== undefined) {
      resolved.M0 = msg.M0;
    }
    else {
      resolved.M0 = 0.0
    }

    if (msg.cuc !== undefined) {
      resolved.cuc = msg.cuc;
    }
    else {
      resolved.cuc = 0.0
    }

    if (msg.e !== undefined) {
      resolved.e = msg.e;
    }
    else {
      resolved.e = 0.0
    }

    if (msg.cus !== undefined) {
      resolved.cus = msg.cus;
    }
    else {
      resolved.cus = 0.0
    }

    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = 0.0
    }

    if (msg.toes !== undefined) {
      resolved.toes = msg.toes;
    }
    else {
      resolved.toes = 0.0
    }

    if (msg.cic !== undefined) {
      resolved.cic = msg.cic;
    }
    else {
      resolved.cic = 0.0
    }

    if (msg.OMG0 !== undefined) {
      resolved.OMG0 = msg.OMG0;
    }
    else {
      resolved.OMG0 = 0.0
    }

    if (msg.cis !== undefined) {
      resolved.cis = msg.cis;
    }
    else {
      resolved.cis = 0.0
    }

    if (msg.i0 !== undefined) {
      resolved.i0 = msg.i0;
    }
    else {
      resolved.i0 = 0.0
    }

    if (msg.crc !== undefined) {
      resolved.crc = msg.crc;
    }
    else {
      resolved.crc = 0.0
    }

    if (msg.omg !== undefined) {
      resolved.omg = msg.omg;
    }
    else {
      resolved.omg = 0.0
    }

    if (msg.OMGd !== undefined) {
      resolved.OMGd = msg.OMGd;
    }
    else {
      resolved.OMGd = 0.0
    }

    if (msg.tgd !== undefined) {
      resolved.tgd = msg.tgd;
    }
    else {
      resolved.tgd = []
    }

    if (msg.f2 !== undefined) {
      resolved.f2 = msg.f2;
    }
    else {
      resolved.f2 = 0.0
    }

    if (msg.f1 !== undefined) {
      resolved.f1 = msg.f1;
    }
    else {
      resolved.f1 = 0.0
    }

    if (msg.f0 !== undefined) {
      resolved.f0 = msg.f0;
    }
    else {
      resolved.f0 = 0.0
    }

    return resolved;
    }
};

module.exports = GnssEphemeris;
