;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::Route)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'Route (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROUTE")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROUTE"))

(in-package "ROS")
;;//! \htmlinclude Route.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tuw_multi_robot_msgs::Route
  :super ros::object
  :slots (_header _robot_name _id_request _segments ))

(defmethod tuw_multi_robot_msgs::Route
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_name __robot_name) "")
    ((:id_request __id_request) "")
    ((:segments __segments) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_name (string __robot_name))
   (setq _id_request (string __id_request))
   (setq _segments __segments)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:id_request
   (&optional __id_request)
   (if __id_request (setq _id_request __id_request)) _id_request)
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_name
    4 (length _robot_name)
    ;; string _id_request
    4 (length _id_request)
    ;; tuw_multi_robot_msgs/RouteSegment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; string _id_request
       (write-long (length _id_request) s) (princ _id_request s)
     ;; tuw_multi_robot_msgs/RouteSegment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id_request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id_request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; tuw_multi_robot_msgs/RouteSegment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance tuw_multi_robot_msgs::RouteSegment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::Route :md5sum-) "70f83a8454641f693d6ff2ae475e7093")
(setf (get tuw_multi_robot_msgs::Route :datatype-) "tuw_multi_robot_msgs/Route")
(setf (get tuw_multi_robot_msgs::Route :definition-)
      "#################################################################
## used to guide a single vehicle along segments
#################################################################
Header header # time of route generation
string robot_name
string id_request
RouteSegment[] segments # route segments a robot has to follow
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



(provide :tuw_multi_robot_msgs/Route "70f83a8454641f693d6ff2ae475e7093")


