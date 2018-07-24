// Auto-generated. Do not edit!

// (in-package environment.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let actor_action_msg = require('../msg/actor_action_msg.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class action_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new actor_action_msg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type action_srvRequest
    // Serialize message field [action]
    bufferOffset = actor_action_msg.serialize(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type action_srvRequest
    let len;
    let data = new action_srvRequest(null);
    // Deserialize message field [action]
    data.action = actor_action_msg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += actor_action_msg.getMessageSize(object.action);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'environment/action_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '877056a7f1686c7c622bba01eff5ff18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    actor_action_msg action
    
    ================================================================================
    MSG: environment/actor_action_msg
    int32 reset
    float32[] action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new action_srvRequest(null);
    if (msg.action !== undefined) {
      resolved.action = actor_action_msg.Resolve(msg.action)
    }
    else {
      resolved.action = new actor_action_msg()
    }

    return resolved;
    }
};

class action_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.complete = null;
    }
    else {
      if (initObj.hasOwnProperty('complete')) {
        this.complete = initObj.complete
      }
      else {
        this.complete = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type action_srvResponse
    // Serialize message field [complete]
    bufferOffset = _serializer.int32(obj.complete, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type action_srvResponse
    let len;
    let data = new action_srvResponse(null);
    // Deserialize message field [complete]
    data.complete = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'environment/action_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3608cad0f3f43fe218f81699aeb8ed4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 complete
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new action_srvResponse(null);
    if (msg.complete !== undefined) {
      resolved.complete = msg.complete;
    }
    else {
      resolved.complete = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: action_srvRequest,
  Response: action_srvResponse,
  md5sum() { return 'b9e4308448306b0b27e98964dd75d3af'; },
  datatype() { return 'environment/action_srv'; }
};
