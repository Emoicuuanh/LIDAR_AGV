;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::RoutePrecondition)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'RoutePrecondition (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::ROUTEPRECONDITION")
  (make-package "TUW_MULTI_ROBOT_MSGS::ROUTEPRECONDITION"))

(in-package "ROS")
;;//! \htmlinclude RoutePrecondition.msg.html


(defclass tuw_multi_robot_msgs::RoutePrecondition
  :super ros::object
  :slots (_robot_id _current_route_segment _current_segment_id ))

(defmethod tuw_multi_robot_msgs::RoutePrecondition
  (:init
   (&key
    ((:robot_id __robot_id) "")
    ((:current_route_segment __current_route_segment) 0)
    ((:current_segment_id __current_segment_id) 0)
    )
   (send-super :init)
   (setq _robot_id (string __robot_id))
   (setq _current_route_segment (round __current_route_segment))
   (setq _current_segment_id (round __current_segment_id))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:current_route_segment
   (&optional __current_route_segment)
   (if __current_route_segment (setq _current_route_segment __current_route_segment)) _current_route_segment)
  (:current_segment_id
   (&optional __current_segment_id)
   (if __current_segment_id (setq _current_segment_id __current_segment_id)) _current_segment_id)
  (:serialization-length
   ()
   (+
    ;; string _robot_id
    4 (length _robot_id)
    ;; int32 _current_route_segment
    4
    ;; uint32 _current_segment_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_id
       (write-long (length _robot_id) s) (princ _robot_id s)
     ;; int32 _current_route_segment
       (write-long _current_route_segment s)
     ;; uint32 _current_segment_id
       (write-long _current_segment_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _current_route_segment
     (setq _current_route_segment (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _current_segment_id
     (setq _current_segment_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tuw_multi_robot_msgs::RoutePrecondition :md5sum-) "0afe59a3c04015283c2ce1161adf2e35")
(setf (get tuw_multi_robot_msgs::RoutePrecondition :datatype-) "tuw_multi_robot_msgs/RoutePrecondition")
(setf (get tuw_multi_robot_msgs::RoutePrecondition :definition-)
      "#################################################################
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
")



(provide :tuw_multi_robot_msgs/RoutePrecondition "0afe59a3c04015283c2ce1161adf2e35")


