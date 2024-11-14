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

class GnssObservation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.week = null;
      this.tow = null;
      this.SNR = null;
      this.LLI = null;
      this.code = null;
      this.L = null;
      this.P = null;
      this.D = null;
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
      if (initObj.hasOwnProperty('SNR')) {
        this.SNR = initObj.SNR
      }
      else {
        this.SNR = [];
      }
      if (initObj.hasOwnProperty('LLI')) {
        this.LLI = initObj.LLI
      }
      else {
        this.LLI = [];
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = [];
      }
      if (initObj.hasOwnProperty('L')) {
        this.L = initObj.L
      }
      else {
        this.L = [];
      }
      if (initObj.hasOwnProperty('P')) {
        this.P = initObj.P
      }
      else {
        this.P = [];
      }
      if (initObj.hasOwnProperty('D')) {
        this.D = initObj.D
      }
      else {
        this.D = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssObservation
    // Serialize message field [prn]
    bufferOffset = _serializer.string(obj.prn, buffer, bufferOffset);
    // Serialize message field [week]
    bufferOffset = _serializer.uint16(obj.week, buffer, bufferOffset);
    // Serialize message field [tow]
    bufferOffset = _serializer.float64(obj.tow, buffer, bufferOffset);
    // Serialize message field [SNR]
    bufferOffset = _arraySerializer.float64(obj.SNR, buffer, bufferOffset, null);
    // Serialize message field [LLI]
    bufferOffset = _arraySerializer.uint8(obj.LLI, buffer, bufferOffset, null);
    // Serialize message field [code]
    bufferOffset = _arraySerializer.string(obj.code, buffer, bufferOffset, null);
    // Serialize message field [L]
    bufferOffset = _arraySerializer.float64(obj.L, buffer, bufferOffset, null);
    // Serialize message field [P]
    bufferOffset = _arraySerializer.float64(obj.P, buffer, bufferOffset, null);
    // Serialize message field [D]
    bufferOffset = _arraySerializer.float64(obj.D, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssObservation
    let len;
    let data = new GnssObservation(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [week]
    data.week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [tow]
    data.tow = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SNR]
    data.SNR = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [LLI]
    data.LLI = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [code]
    data.code = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [L]
    data.L = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [P]
    data.P = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [D]
    data.D = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prn);
    length += 8 * object.SNR.length;
    length += object.LLI.length;
    object.code.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.L.length;
    length += 8 * object.P.length;
    length += 8 * object.D.length;
    return length + 38;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssObservation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1046d106d7c9fd0ab168f0ec9fdcf788';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GnssObservation(null);
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

    if (msg.SNR !== undefined) {
      resolved.SNR = msg.SNR;
    }
    else {
      resolved.SNR = []
    }

    if (msg.LLI !== undefined) {
      resolved.LLI = msg.LLI;
    }
    else {
      resolved.LLI = []
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = []
    }

    if (msg.L !== undefined) {
      resolved.L = msg.L;
    }
    else {
      resolved.L = []
    }

    if (msg.P !== undefined) {
      resolved.P = msg.P;
    }
    else {
      resolved.P = []
    }

    if (msg.D !== undefined) {
      resolved.D = msg.D;
    }
    else {
      resolved.D = []
    }

    return resolved;
    }
};

module.exports = GnssObservation;
