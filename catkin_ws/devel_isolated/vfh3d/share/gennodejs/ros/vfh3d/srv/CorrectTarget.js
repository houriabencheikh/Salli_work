// Auto-generated. Do not edit!

// (in-package vfh3d.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CorrectTargetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('target_vel')) {
        this.target_vel = initObj.target_vel
      }
      else {
        this.target_vel = new geometry_msgs.msg.TwistStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CorrectTargetRequest
    // Serialize message field [target_vel]
    bufferOffset = geometry_msgs.msg.TwistStamped.serialize(obj.target_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CorrectTargetRequest
    let len;
    let data = new CorrectTargetRequest(null);
    // Deserialize message field [target_vel]
    data.target_vel = geometry_msgs.msg.TwistStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.TwistStamped.getMessageSize(object.target_vel);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vfh3d/CorrectTargetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5259f3177a7db960029b16c17f57a00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/TwistStamped target_vel
    
    ================================================================================
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CorrectTargetRequest(null);
    if (msg.target_vel !== undefined) {
      resolved.target_vel = geometry_msgs.msg.TwistStamped.Resolve(msg.target_vel)
    }
    else {
      resolved.target_vel = new geometry_msgs.msg.TwistStamped()
    }

    return resolved;
    }
};

class CorrectTargetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.corrected_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('corrected_vel')) {
        this.corrected_vel = initObj.corrected_vel
      }
      else {
        this.corrected_vel = new geometry_msgs.msg.TwistStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CorrectTargetResponse
    // Serialize message field [corrected_vel]
    bufferOffset = geometry_msgs.msg.TwistStamped.serialize(obj.corrected_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CorrectTargetResponse
    let len;
    let data = new CorrectTargetResponse(null);
    // Deserialize message field [corrected_vel]
    data.corrected_vel = geometry_msgs.msg.TwistStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.TwistStamped.getMessageSize(object.corrected_vel);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vfh3d/CorrectTargetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0cc44d16dbb7bccbf966154ad4588b6e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/TwistStamped corrected_vel
    
    ================================================================================
    MSG: geometry_msgs/TwistStamped
    # A twist with reference coordinate frame and timestamp
    Header header
    Twist twist
    
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CorrectTargetResponse(null);
    if (msg.corrected_vel !== undefined) {
      resolved.corrected_vel = geometry_msgs.msg.TwistStamped.Resolve(msg.corrected_vel)
    }
    else {
      resolved.corrected_vel = new geometry_msgs.msg.TwistStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: CorrectTargetRequest,
  Response: CorrectTargetResponse,
  md5sum() { return '770f8faacb2743e37010855d997adaaa'; },
  datatype() { return 'vfh3d/CorrectTarget'; }
};
