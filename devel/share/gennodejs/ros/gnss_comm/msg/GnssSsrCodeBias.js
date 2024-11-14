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

class GnssSsrCodeBias {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.week = null;
      this.tow = null;
      this.iod = null;
      this.udi = null;
      this.isdcb = null;
      this.code = null;
      this.bias = null;
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
      if (initObj.hasOwnProperty('isdcb')) {
        this.isdcb = initObj.isdcb
      }
      else {
        this.isdcb = 0;
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = [];
      }
      if (initObj.hasOwnProperty('bias')) {
        this.bias = initObj.bias
      }
      else {
        this.bias = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssSsrCodeBias
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
    // Serialize message field [isdcb]
    bufferOffset = _serializer.uint8(obj.isdcb, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _arraySerializer.string(obj.code, buffer, bufferOffset, null);
    // Serialize message field [bias]
    bufferOffset = _arraySerializer.float64(obj.bias, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssSsrCodeBias
    let len;
    let data = new GnssSsrCodeBias(null);
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
    // Deserialize message field [isdcb]
    data.isdcb = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [bias]
    data.bias = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prn);
    object.code.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.bias.length;
    return length + 35;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_comm/GnssSsrCodeBias';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce4d49239692f6cf4c5f50ef544acb9f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string prn        # Satellite PRN number
    uint16 week       # GPS week, SSR message
    float64 tow       # GPS time of week, SSR message
    uint32 iod        # Issue of data, SSR message
    float64 udi       # SSR update interval
    uint8 isdcb       # If differenced
    string[] code     # Code indicators
    float64[] bias    # Code biases
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssSsrCodeBias(null);
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

    if (msg.isdcb !== undefined) {
      resolved.isdcb = msg.isdcb;
    }
    else {
      resolved.isdcb = 0
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = []
    }

    if (msg.bias !== undefined) {
      resolved.bias = msg.bias;
    }
    else {
      resolved.bias = []
    }

    return resolved;
    }
};

module.exports = GnssSsrCodeBias;
