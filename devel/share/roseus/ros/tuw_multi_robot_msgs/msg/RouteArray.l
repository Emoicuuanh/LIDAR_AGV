;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RouteArray)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RouteArray (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROUTEARRAY")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROUTEARRAY"))

(in-package "ROS")
;;//! \htmlinclude RouteArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::RouteArray
  :super ros::object
  :slots (_header _id_request _routes ))

(defmethod tuw_multi_robot_msgs::RouteArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id_request __id_request) "")
    ((:routes __routes) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _id_request (string __id_request))
   (setq _routes __routes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id_request
   (&optional __id_request)
   (if __id_request (setq _id_request __id_request)) _id_request)
  (:routes
   (&rest __routes)
   (if (keywordp (car __routes))
       (send* _routes __routes)
     (progn
       (if __routes (setq _routes (car __routes)))
       _routes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _id_request
    4 (length _id_request)
    ;; tuw_multi_robot_msgs/Route[] _routes
    (apply #'+ (send-all _routes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _id_request
       (write-long (length _id_request) s) (princ _id_request s)
     ;; tuw_multi_robot_msgs/Route[] _routes
     (write-long (length _routes) s)
     (dolist (elem _routes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _id_request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id_request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; tuw_multi_robot_msgs/Route[] _routes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _routes (let (r) (dotimes (i n) (push (instance tuw_multi_robot_msgs::Route :init) r)) r))
     (dolist (elem- _routes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RouteArray :md5sum-) "68e00687fc15821fd35f16dce9cc143b")
(setf (get tuw_multi_robot_msgs::RouteArray :datatype-) "tuw_multi_robot_msgs/RouteArray")
(setf (get tuw_multi_robot_msgs::RouteArray :definition-)
      "Header header # time of route generation
string id_request
Route[] routes
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
MSG: tuw_multi_robot_msgs/Route
#################################################################
## used to guide a single vehicle along segments
#################################################################
Header header # time of route generation
string robot_name
string id_request
RouteSegment[] segments # route segments a robot has to follow
================================================================================
MSG: tuw_multi_robot_msgs/RouteSegment
#################################################################
## Describes a segment on a route with: start, end, width
## and preconditions for synchronisation to other robots
#################################################################

int32 segment_id                        # the unique identifier of a segment
RoutePrecondition[] preconditions       # the preconditions, which have to be met before entering a segment
geometry_msgs/Pose start                # startpoint of the segment
geometry_msgs/Pose end                  # endpoint of the segment
string start_properties
string end_properties
float32 width                           # width of the segment

================================================================================
MSG: tuw_multi_robot_msgs/RoutePrecondition
#################################################################
## Route Preconditions are used to sync robots on a route
## e.g.: Each robot publishes its current step of its route
## with such a message
## The specific segments of a route are marked with such
## preconditions to block a robot from entering a segment
## until the sync message of the other robot has the right
## route_segment_nr
#################################################################

string robot_id                  # the robot name for the precondition
int32 current_route_segment      # the segment nr of the route executed by the given robot
uint32 current_segment_id
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :tuw_multi_robot_msgs/RouteArray "68e00687fc15821fd35f16dce9cc143b")


