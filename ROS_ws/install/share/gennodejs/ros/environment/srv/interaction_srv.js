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

let env_observation_msg = require('../msg/env_observation_msg.js');

//-----------------------------------------------------------

class interaction_srvRequest {
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
    // Serializes a message object of type interaction_srvRequest
    // Serialize message field [action]
    bufferOffset = actor_action_msg.serialize(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type interaction_srvRequest
    let len;
    let data = new interaction_srvRequest(null);
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
    return 'environment/interaction_srvRequest';
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
    const resolved = new interaction_srvRequest(null);
    if (msg.action !== undefined) {
      resolved.action = actor_action_msg.Resolve(msg.action)
    }
    else {
      resolved.action = new actor_action_msg()
    }

    return resolved;
    }
};

class interaction_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.observation = null;
    }
    else {
      if (initObj.hasOwnProperty('observation')) {
        this.observation = initObj.observation
      }
      else {
        this.observation = new env_observation_msg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type interaction_srvResponse
    // Serialize message field [observation]
    bufferOffset = env_observation_msg.serialize(obj.observation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type interaction_srvResponse
    let len;
    let data = new interaction_srvResponse(null);
    // Deserialize message field [observation]
    data.observation = env_observation_msg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += env_observation_msg.getMessageSize(object.observation);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'environment/interaction_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31c1d8987a1485e6848c41d00744b525';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    env_observation_msg observation
    
    
    ================================================================================
    MSG: environment/env_observation_msg
    float32[] state
    float32 reward
    int32 done
    string info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new interaction_srvResponse(null);
    if (msg.observation !== undefined) {
      resolved.observation = env_observation_msg.Resolve(msg.observation)
    }
    else {
      resolved.observation = new env_observation_msg()
    }

    return resolved;
    }
};

module.exports = {
  Request: interaction_srvRequest,
  Response: interaction_srvResponse,
  md5sum() { return 'ca1bf07e21318132705d70f9e12ea38c'; },
  datatype() { return 'environment/interaction_srv'; }
};
