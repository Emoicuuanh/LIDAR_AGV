;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RouteSegment)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RouteSegment (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROUTESEGMENT")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROUTESEGMENT"))

(in-package "ROS")
;;//! \htmlinclude RouteSegment.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tuw_multi_robot_msgs::RouteSegment
  :super ros::object
  :slots (_segment_id _preconditions _start _end _start_properties _end_properties _width ))

(defmethod tuw_multi_robot_msgs::RouteSegment
  (:init
   (&key
    ((:segment_id __segment_id) 0)
    ((:preconditions __preconditions) ())
    ((:start __start) (instance geometry_msgs::Pose :init))
    ((:end __end) (instance geometry_msgs::Pose :init))
    ((:start_properties __start_properties) "")
    ((:end_properties __end_properties) "")
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _segment_id (round __segment_id))
   (setq _preconditions __preconditions)
   (setq _start __start)
   (setq _end __end)
   (setq _start_properties (string __start_properties))
   (setq _end_properties (string __end_properties))
   (setq _width (float __width))
   self)
  (:segment_id
   (&optional __segment_id)
   (if __segment_id (setq _segment_id __segment_id)) _segment_id)
  (:preconditions
   (&rest __preconditions)
   (if (keywordp (car __preconditions))
       (send* _preconditions __preconditions)
     (progn
       (if __preconditions (setq _preconditions (car __preconditions)))
       _preconditions)))
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:start_properties
   (&optional __start_properties)
   (if __start_properties (setq _start_properties __start_properties)) _start_properties)
  (:end_properties
   (&optional __end_properties)
   (if __end_properties (setq _end_properties __end_properties)) _end_properties)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; int32 _segment_id
    4
    ;; tuw_multi_robot_msgs/RoutePrecondition[] _preconditions
    (apply #'+ (send-all _preconditions :serialization-length)) 4
    ;; geometry_msgs/Pose _start
    (send _start :serialization-length)
    ;; geometry_msgs/Pose _end
    (send _end :serialization-length)
    ;; string _start_properties
    4 (length _start_properties)
    ;; string _end_properties
    4 (length _end_properties)
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _segment_id
       (write-long _segment_id s)
     ;; tuw_multi_robot_msgs/RoutePrecondition[] _preconditions
     (write-long (length _preconditions) s)
     (dolist (elem _preconditions)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose _start
       (send _start :serialize s)
     ;; geometry_msgs/Pose _end
       (send _end :serialize s)
     ;; string _start_properties
       (write-long (length _start_properties) s) (princ _start_properties s)
     ;; string _end_properties
       (write-long (length _end_properties) s) (princ _end_properties s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _segment_id
     (setq _segment_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; tuw_multi_robot_msgs/RoutePrecondition[] _preconditions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _preconditions (let (r) (dotimes (i n) (push (instance tuw_multi_robot_msgs::RoutePrecondition :init) r)) r))
     (dolist (elem- _preconditions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Pose _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;; string _start_properties
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_properties (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_properties
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_properties (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RouteSegment :md5sum-) "8253bd778e95fbca6a87030d4593a225")
(setf (get tuw_multi_robot_msgs::RouteSegment :datatype-) "tuw_multi_robot_msgs/RouteSegment")
(setf (get tuw_multi_robot_msgs::RouteSegment :definition-)
      "#################################################################
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



(provide :tuw_multi_robot_msgs/RouteSegment "8253bd778e95fbca6a87030d4593a225")


