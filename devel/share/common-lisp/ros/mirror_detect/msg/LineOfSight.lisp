; Auto-generated. Do not edit!


(cl:in-package mirror_detect-msg)


;//! \htmlinclude LineOfSight.msg.html

(cl:defclass <LineOfSight> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (endPoint
    :reader endPoint
    :initarg :endPoint
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (length
    :reader length
    :initarg :length
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (slope
    :reader slope
    :initarg :slope
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (arrow
    :reader arrow
    :initarg :arrow
    :type visualization_msgs-msg:Marker
    :initform (cl:make-instance 'visualization_msgs-msg:Marker))
   (delta
    :reader delta
    :initarg :delta
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (phi
    :reader phi
    :initarg :phi
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass LineOfSight (<LineOfSight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LineOfSight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LineOfSight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mirror_detect-msg:<LineOfSight> is deprecated: use mirror_detect-msg:LineOfSight instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LineOfSight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:header-val is deprecated.  Use mirror_detect-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'endPoint-val :lambda-list '(m))
(cl:defmethod endPoint-val ((m <LineOfSight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:endPoint-val is deprecated.  Use mirror_detect-msg:endPoint instead.")
  (endPoint m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LineOfSight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:length-val is deprecated.  Use mirror_detect-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'slope-val :lambda-list '(m))
(cl:defmethod slope-val ((m <LineOfSight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:slope-val is deprecated.  Use mirror_detect-msg:slope instead.")
  (slope m))

(cl:ensure-generic-function 'arrow-val :lambda-list '(m))
(cl:defmethod arrow-val ((m <LineOfSight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:arrow-val is deprecated.  Use mirror_detect-msg:arrow instead.")
  (arrow m))

(cl:ensure-generic-function 'delta-val :lambda-list '(m))
(cl:defmethod delta-val ((m <LineOfSight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:delta-val is deprecated.  Use mirror_detect-msg:delta instead.")
  (delta m))

(cl:ensure-generic-function 'phi-val :lambda-list '(m))
(cl:defmethod phi-val ((m <LineOfSight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mirror_detect-msg:phi-val is deprecated.  Use mirror_detect-msg:phi instead.")
  (phi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LineOfSight>) ostream)
  "Serializes a message object of type '<LineOfSight>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'endPoint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'length) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'slope) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'arrow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'delta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'phi) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LineOfSight>) istream)
  "Deserializes a message object of type '<LineOfSight>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'endPoint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'length) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'slope) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'arrow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'delta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'phi) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LineOfSight>)))
  "Returns string type for a message object of type '<LineOfSight>"
  "mirror_detect/LineOfSight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LineOfSight)))
  "Returns string type for a message object of type 'LineOfSight"
  "mirror_detect/LineOfSight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LineOfSight>)))
  "Returns md5sum for a message object of type '<LineOfSight>"
  "118e20594c8cc96bcd681c83a206d0ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LineOfSight)))
  "Returns md5sum for a message object of type 'LineOfSight"
  "118e20594c8cc96bcd681c83a206d0ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LineOfSight>)))
  "Returns full string definition for message of type '<LineOfSight>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Vector3 endPoint~%std_msgs/Float32 length~%std_msgs/Float32 slope~%visualization_msgs/Marker arrow~%std_msgs/Float32 delta # Angle between LOS and Robot Frame X Axis~%std_msgs/Float32 phi # Angle between LOS and Dock Frame X Axis~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%uint8 DELETEALL=3~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LineOfSight)))
  "Returns full string definition for message of type 'LineOfSight"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Vector3 endPoint~%std_msgs/Float32 length~%std_msgs/Float32 slope~%visualization_msgs/Marker arrow~%std_msgs/Float32 delta # Angle between LOS and Robot Frame X Axis~%std_msgs/Float32 phi # Angle between LOS and Dock Frame X Axis~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: visualization_msgs/Marker~%# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 ARROW=0~%uint8 CUBE=1~%uint8 SPHERE=2~%uint8 CYLINDER=3~%uint8 LINE_STRIP=4~%uint8 LINE_LIST=5~%uint8 CUBE_LIST=6~%uint8 SPHERE_LIST=7~%uint8 POINTS=8~%uint8 TEXT_VIEW_FACING=9~%uint8 MESH_RESOURCE=10~%uint8 TRIANGLE_LIST=11~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%uint8 DELETEALL=3~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%geometry_msgs/Point[] points~%#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)~%#number of colors must either be 0 or equal to the number of points~%#NOTE: alpha is not yet used~%std_msgs/ColorRGBA[] colors~%~%# NOTE: only used for text markers~%string text~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LineOfSight>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'endPoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'length))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'slope))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'arrow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'delta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'phi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LineOfSight>))
  "Converts a ROS message object to a list"
  (cl:list 'LineOfSight
    (cl:cons ':header (header msg))
    (cl:cons ':endPoint (endPoint msg))
    (cl:cons ':length (length msg))
    (cl:cons ':slope (slope msg))
    (cl:cons ':arrow (arrow msg))
    (cl:cons ':delta (delta msg))
    (cl:cons ':phi (phi msg))
))
