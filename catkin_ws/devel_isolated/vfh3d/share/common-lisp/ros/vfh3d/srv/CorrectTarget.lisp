; Auto-generated. Do not edit!


(cl:in-package vfh3d-srv)


;//! \htmlinclude CorrectTarget-request.msg.html

(cl:defclass <CorrectTarget-request> (roslisp-msg-protocol:ros-message)
  ((target_vel
    :reader target_vel
    :initarg :target_vel
    :type geometry_msgs-msg:TwistStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TwistStamped)))
)

(cl:defclass CorrectTarget-request (<CorrectTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorrectTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorrectTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vfh3d-srv:<CorrectTarget-request> is deprecated: use vfh3d-srv:CorrectTarget-request instead.")))

(cl:ensure-generic-function 'target_vel-val :lambda-list '(m))
(cl:defmethod target_vel-val ((m <CorrectTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vfh3d-srv:target_vel-val is deprecated.  Use vfh3d-srv:target_vel instead.")
  (target_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorrectTarget-request>) ostream)
  "Serializes a message object of type '<CorrectTarget-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorrectTarget-request>) istream)
  "Deserializes a message object of type '<CorrectTarget-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorrectTarget-request>)))
  "Returns string type for a service object of type '<CorrectTarget-request>"
  "vfh3d/CorrectTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectTarget-request)))
  "Returns string type for a service object of type 'CorrectTarget-request"
  "vfh3d/CorrectTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorrectTarget-request>)))
  "Returns md5sum for a message object of type '<CorrectTarget-request>"
  "770f8faacb2743e37010855d997adaaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorrectTarget-request)))
  "Returns md5sum for a message object of type 'CorrectTarget-request"
  "770f8faacb2743e37010855d997adaaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorrectTarget-request>)))
  "Returns full string definition for message of type '<CorrectTarget-request>"
  (cl:format cl:nil "geometry_msgs/TwistStamped target_vel~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorrectTarget-request)))
  "Returns full string definition for message of type 'CorrectTarget-request"
  (cl:format cl:nil "geometry_msgs/TwistStamped target_vel~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorrectTarget-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorrectTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CorrectTarget-request
    (cl:cons ':target_vel (target_vel msg))
))
;//! \htmlinclude CorrectTarget-response.msg.html

(cl:defclass <CorrectTarget-response> (roslisp-msg-protocol:ros-message)
  ((corrected_vel
    :reader corrected_vel
    :initarg :corrected_vel
    :type geometry_msgs-msg:TwistStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TwistStamped)))
)

(cl:defclass CorrectTarget-response (<CorrectTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CorrectTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CorrectTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vfh3d-srv:<CorrectTarget-response> is deprecated: use vfh3d-srv:CorrectTarget-response instead.")))

(cl:ensure-generic-function 'corrected_vel-val :lambda-list '(m))
(cl:defmethod corrected_vel-val ((m <CorrectTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vfh3d-srv:corrected_vel-val is deprecated.  Use vfh3d-srv:corrected_vel instead.")
  (corrected_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CorrectTarget-response>) ostream)
  "Serializes a message object of type '<CorrectTarget-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'corrected_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CorrectTarget-response>) istream)
  "Deserializes a message object of type '<CorrectTarget-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'corrected_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CorrectTarget-response>)))
  "Returns string type for a service object of type '<CorrectTarget-response>"
  "vfh3d/CorrectTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectTarget-response)))
  "Returns string type for a service object of type 'CorrectTarget-response"
  "vfh3d/CorrectTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CorrectTarget-response>)))
  "Returns md5sum for a message object of type '<CorrectTarget-response>"
  "770f8faacb2743e37010855d997adaaa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CorrectTarget-response)))
  "Returns md5sum for a message object of type 'CorrectTarget-response"
  "770f8faacb2743e37010855d997adaaa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CorrectTarget-response>)))
  "Returns full string definition for message of type '<CorrectTarget-response>"
  (cl:format cl:nil "geometry_msgs/TwistStamped corrected_vel~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CorrectTarget-response)))
  "Returns full string definition for message of type 'CorrectTarget-response"
  (cl:format cl:nil "geometry_msgs/TwistStamped corrected_vel~%~%================================================================================~%MSG: geometry_msgs/TwistStamped~%# A twist with reference coordinate frame and timestamp~%Header header~%Twist twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CorrectTarget-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'corrected_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CorrectTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CorrectTarget-response
    (cl:cons ':corrected_vel (corrected_vel msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CorrectTarget)))
  'CorrectTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CorrectTarget)))
  'CorrectTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CorrectTarget)))
  "Returns string type for a service object of type '<CorrectTarget>"
  "vfh3d/CorrectTarget")