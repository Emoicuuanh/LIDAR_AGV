;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::requestGoal)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'requestGoal (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::REQUESTGOAL")
  (make-package "TUW_MULTI_ROBOT_MSGS::REQUESTGOAL"))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::REQUESTGOALREQUEST")
  (make-package "TUW_MULTI_ROBOT_MSGS::REQUESTGOALREQUEST"))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::REQUESTGOALRESPONSE")
  (make-package "TUW_MULTI_ROBOT_MSGS::REQUESTGOALRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass tuw_multi_robot_msgs::requestGoalRequest
  :super ros::object
  :slots (_pose _id _cancle_goal ))

(defmethod tuw_multi_robot_msgs::requestGoalRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:id __id) 0)
    ((:cancle_goal __cancle_goal) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _id (round __id))
   (setq _cancle_goal __cancle_goal)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:cancle_goal
   (&optional (__cancle_goal :null))
   (if (not (eq __cancle_goal :null)) (setq _cancle_goal __cancle_goal)) _cancle_goal)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; uint32 _id
    4
    ;; bool _cancle_goal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; bool _cancle_goal
       (if _cancle_goal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _cancle_goal
     (setq _cancle_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tuw_multi_robot_msgs::requestGoalResponse
  :super ros::object
  :slots (_success _status_message ))

(defmethod tuw_multi_robot_msgs::requestGoalResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _status_message (string __status_message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tuw_multi_robot_msgs::requestGoal
  :super ros::object
  :slots ())

(setf (get tuw_multi_robot_msgs::requestGoal :md5sum-) "7895a23b956d609e1be88c5fefed6d4d")
(setf (get tuw_multi_robot_msgs::requestGoal :datatype-) "tuw_multi_robot_msgs/requestGoal")
(setf (get tuw_multi_robot_msgs::requestGoal :request) tuw_multi_robot_msgs::requestGoalRequest)
(setf (get tuw_multi_robot_msgs::requestGoal :response) tuw_multi_robot_msgs::requestGoalResponse)

(defmethod tuw_multi_robot_msgs::requestGoalRequest
  (:response () (instance tuw_multi_robot_msgs::requestGoalResponse :init)))

(setf (get tuw_multi_robot_msgs::requestGoalRequest :md5sum-) "7895a23b956d609e1be88c5fefed6d4d")
(setf (get tuw_multi_robot_msgs::requestGoalRequest :datatype-) "tuw_multi_robot_msgs/requestGoalRequest")
(setf (get tuw_multi_robot_msgs::requestGoalRequest :definition-)
      "# Request
geometry_msgs/PoseStamped pose
uint32 id
bool cancle_goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
# Response
bool success
string status_message
")

(setf (get tuw_multi_robot_msgs::requestGoalResponse :md5sum-) "7895a23b956d609e1be88c5fefed6d4d")
(setf (get tuw_multi_robot_msgs::requestGoalResponse :datatype-) "tuw_multi_robot_msgs/requestGoalResponse")
(setf (get tuw_multi_robot_msgs::requestGoalResponse :definition-)
      "# Request
geometry_msgs/PoseStamped pose
uint32 id
bool cancle_goal

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
---
# Response
bool success
string status_message
")



(provide :tuw_multi_robot_msgs/requestGoal "7895a23b956d609e1be88c5fefed6d4d")


