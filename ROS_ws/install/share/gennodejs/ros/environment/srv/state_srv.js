// Auto-generated. Do not edit!

// (in-package environment.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let env_state_msg = require('../msg/env_state_msg.js');

//-----------------------------------------------------------

class state_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_state = null;
    }
    else {
      if (initObj.hasOwnProperty('request_state')) {
        this.request_state = initObj.request_state
      }
      else {
        this.request_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type state_srvRequest
    // Serialize message field [request_state]
    bufferOffset = _serializer.int32(obj.request_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type state_srvRequest
    let len;
    let data = new state_srvRequest(null);
    // Deserialize message field [request_state]
    data.request_state = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'environment/state_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48be3c20da7cd22920845a0d2bc7c79a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 request_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new state_srvRequest(null);
    if (msg.request_state !== undefined) {
      resolved.request_state = msg.request_state;
    }
    else {
      resolved.request_state = 0
    }

    return resolved;
    }
};

class state_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new env_state_msg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type state_srvResponse
    // Serialize message field [state]
    bufferOffset = env_state_msg.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type state_srvResponse
    let len;
    let data = new state_srvResponse(null);
    // Deserialize message field [state]
    data.state = env_state_msg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += env_state_msg.getMessageSize(object.state);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'environment/state_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7972d307c80e773b612efef345e2a97a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    env_state_msg state
    
    
    ================================================================================
    MSG: environment/env_state_msg
    float32[] state
    int32 done
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new state_srvResponse(null);
    if (msg.state !== undefined) {
      resolved.state = env_state_msg.Resolve(msg.state)
    }
    else {
      resolved.state = new env_state_msg()
    }

    return resolved;
    }
};

module.exports = {
  Request: state_srvRequest,
  Response: state_srvResponse,
  md5sum() { return '1c52b5ad9ad4070922180340d7801b38'; },
  datatype() { return 'environment/state_srv'; }
};
