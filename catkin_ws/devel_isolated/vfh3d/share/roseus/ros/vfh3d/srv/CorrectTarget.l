;; Auto-generated. Do not edit!


(when (boundp 'vfh3d::CorrectTarget)
  (if (not (find-package "VFH3D"))
    (make-package "VFH3D"))
  (shadow 'CorrectTarget (find-package "VFH3D")))
(unless (find-package "VFH3D::CORRECTTARGET")
  (make-package "VFH3D::CORRECTTARGET"))
(unless (find-package "VFH3D::CORRECTTARGETREQUEST")
  (make-package "VFH3D::CORRECTTARGETREQUEST"))
(unless (find-package "VFH3D::CORRECTTARGETRESPONSE")
  (make-package "VFH3D::CORRECTTARGETRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass vfh3d::CorrectTargetRequest
  :super ros::object
  :slots (_target_vel ))

(defmethod vfh3d::CorrectTargetRequest
  (:init
   (&key
    ((:target_vel __target_vel) (instance geometry_msgs::TwistStamped :init))
    )
   (send-super :init)
   (setq _target_vel __target_vel)
   self)
  (:target_vel
   (&rest __target_vel)
   (if (keywordp (car __target_vel))
       (send* _target_vel __target_vel)
     (progn
       (if __target_vel (setq _target_vel (car __target_vel)))
       _target_vel)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TwistStamped _target_vel
    (send _target_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TwistStamped _target_vel
       (send _target_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TwistStamped _target_vel
     (send _target_vel :deserialize buf ptr-) (incf ptr- (send _target_vel :serialization-length))
   ;;
   self)
  )

(defclass vfh3d::CorrectTargetResponse
  :super ros::object
  :slots (_corrected_vel ))

(defmethod vfh3d::CorrectTargetResponse
  (:init
   (&key
    ((:corrected_vel __corrected_vel) (instance geometry_msgs::TwistStamped :init))
    )
   (send-super :init)
   (setq _corrected_vel __corrected_vel)
   self)
  (:corrected_vel
   (&rest __corrected_vel)
   (if (keywordp (car __corrected_vel))
       (send* _corrected_vel __corrected_vel)
     (progn
       (if __corrected_vel (setq _corrected_vel (car __corrected_vel)))
       _corrected_vel)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/TwistStamped _corrected_vel
    (send _corrected_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/TwistStamped _corrected_vel
       (send _corrected_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/TwistStamped _corrected_vel
     (send _corrected_vel :deserialize buf ptr-) (incf ptr- (send _corrected_vel :serialization-length))
   ;;
   self)
  )

(defclass vfh3d::CorrectTarget
  :super ros::object
  :slots ())

(setf (get vfh3d::CorrectTarget :md5sum-) "770f8faacb2743e37010855d997adaaa")
(setf (get vfh3d::CorrectTarget :datatype-) "vfh3d/CorrectTarget")
(setf (get vfh3d::CorrectTarget :request) vfh3d::CorrectTargetRequest)
(setf (get vfh3d::CorrectTarget :response) vfh3d::CorrectTargetResponse)

(defmethod vfh3d::CorrectTargetRequest
  (:response () (instance vfh3d::CorrectTargetResponse :init)))

(setf (get vfh3d::CorrectTargetRequest :md5sum-) "770f8faacb2743e37010855d997adaaa")
(setf (get vfh3d::CorrectTargetRequest :datatype-) "vfh3d/CorrectTargetRequest")
(setf (get vfh3d::CorrectTargetRequest :definition-)
      "geometry_msgs/TwistStamped target_vel

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
---
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
")

(setf (get vfh3d::CorrectTargetResponse :md5sum-) "770f8faacb2743e37010855d997adaaa")
(setf (get vfh3d::CorrectTargetResponse :datatype-) "vfh3d/CorrectTargetResponse")
(setf (get vfh3d::CorrectTargetResponse :definition-)
      "geometry_msgs/TwistStamped target_vel

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
---
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
")



(provide :vfh3d/CorrectTarget "770f8faacb2743e37010855d997adaaa")


