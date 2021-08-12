// Auto-generated. Do not edit!

// (in-package mobile_robot_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Torque {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_wheel = null;
      this.right_wheel = null;
      this.theta1 = null;
      this.theta2 = null;
      this.theta3 = null;
      this.theta4 = null;
    }
    else {
      if (initObj.hasOwnProperty('left_wheel')) {
        this.left_wheel = initObj.left_wheel
      }
      else {
        this.left_wheel = 0.0;
      }
      if (initObj.hasOwnProperty('right_wheel')) {
        this.right_wheel = initObj.right_wheel
      }
      else {
        this.right_wheel = 0.0;
      }
      if (initObj.hasOwnProperty('theta1')) {
        this.theta1 = initObj.theta1
      }
      else {
        this.theta1 = 0.0;
      }
      if (initObj.hasOwnProperty('theta2')) {
        this.theta2 = initObj.theta2
      }
      else {
        this.theta2 = 0.0;
      }
      if (initObj.hasOwnProperty('theta3')) {
        this.theta3 = initObj.theta3
      }
      else {
        this.theta3 = 0.0;
      }
      if (initObj.hasOwnProperty('theta4')) {
        this.theta4 = initObj.theta4
      }
      else {
        this.theta4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Torque
    // Serialize message field [left_wheel]
    bufferOffset = _serializer.float64(obj.left_wheel, buffer, bufferOffset);
    // Serialize message field [right_wheel]
    bufferOffset = _serializer.float64(obj.right_wheel, buffer, bufferOffset);
    // Serialize message field [theta1]
    bufferOffset = _serializer.float64(obj.theta1, buffer, bufferOffset);
    // Serialize message field [theta2]
    bufferOffset = _serializer.float64(obj.theta2, buffer, bufferOffset);
    // Serialize message field [theta3]
    bufferOffset = _serializer.float64(obj.theta3, buffer, bufferOffset);
    // Serialize message field [theta4]
    bufferOffset = _serializer.float64(obj.theta4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Torque
    let len;
    let data = new Torque(null);
    // Deserialize message field [left_wheel]
    data.left_wheel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [right_wheel]
    data.right_wheel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta1]
    data.theta1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta2]
    data.theta2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta3]
    data.theta3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta4]
    data.theta4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_robot_controller/Torque';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1062d21e465d190e12233c419350a6fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 left_wheel
    float64 right_wheel
    float64 theta1
    float64 theta2
    float64 theta3
    float64 theta4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Torque(null);
    if (msg.left_wheel !== undefined) {
      resolved.left_wheel = msg.left_wheel;
    }
    else {
      resolved.left_wheel = 0.0
    }

    if (msg.right_wheel !== undefined) {
      resolved.right_wheel = msg.right_wheel;
    }
    else {
      resolved.right_wheel = 0.0
    }

    if (msg.theta1 !== undefined) {
      resolved.theta1 = msg.theta1;
    }
    else {
      resolved.theta1 = 0.0
    }

    if (msg.theta2 !== undefined) {
      resolved.theta2 = msg.theta2;
    }
    else {
      resolved.theta2 = 0.0
    }

    if (msg.theta3 !== undefined) {
      resolved.theta3 = msg.theta3;
    }
    else {
      resolved.theta3 = 0.0
    }

    if (msg.theta4 !== undefined) {
      resolved.theta4 = msg.theta4;
    }
    else {
      resolved.theta4 = 0.0
    }

    return resolved;
    }
};

module.exports = Torque;
