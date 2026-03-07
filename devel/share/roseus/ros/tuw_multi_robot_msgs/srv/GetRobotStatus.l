;; Auto-generated. Do not edit!


(when (boundp 'tuw_multi_robot_msgs::GetRobotStatus)
  (if (not (find-package "TUW_MULTI_ROBOT_MSGS"))
    (make-package "TUW_MULTI_ROBOT_MSGS"))
  (shadow 'GetRobotStatus (find-package "TUW_MULTI_ROBOT_MSGS")))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::GETROBOTSTATUS")
  (make-package "TUW_MULTI_ROBOT_MSGS::GETROBOTSTATUS"))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::GETROBOTSTATUSREQUEST")
  (make-package "TUW_MULTI_ROBOT_MSGS::GETROBOTSTATUSREQUEST"))
(unless (find-package "TUW_MULTI_ROBOT_MSGS::GETROBOTSTATUSRESPONSE")
  (make-package "TUW_MULTI_ROBOT_MSGS::GETROBOTSTATUSRESPONSE"))

(in-package "ROS")





(defclass tuw_multi_robot_msgs::GetRobotStatusRequest
  :super ros::object
  :slots (_robot_name ))

(defmethod tuw_multi_robot_msgs::GetRobotStatusRequest
  (:init
   (&key
    ((:robot_name __robot_name) "")
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tuw_multi_robot_msgs::GetRobotStatusResponse
  :super ros::object
  :slots (_detail_status_run_pause_by_route _detail_status_run_pause_by_detect_collision _is_pause_by_route _is_pause_by_detect_collision ))

(defmethod tuw_multi_robot_msgs::GetRobotStatusResponse
  (:init
   (&key
    ((:detail_status_run_pause_by_route __detail_status_run_pause_by_route) "")
    ((:detail_status_run_pause_by_detect_collision __detail_status_run_pause_by_detect_collision) "")
    ((:is_pause_by_route __is_pause_by_route) nil)
    ((:is_pause_by_detect_collision __is_pause_by_detect_collision) nil)
    )
   (send-super :init)
   (setq _detail_status_run_pause_by_route (string __detail_status_run_pause_by_route))
   (setq _detail_status_run_pause_by_detect_collision (string __detail_status_run_pause_by_detect_collision))
   (setq _is_pause_by_route __is_pause_by_route)
   (setq _is_pause_by_detect_collision __is_pause_by_detect_collision)
   self)
  (:detail_status_run_pause_by_route
   (&optional __detail_status_run_pause_by_route)
   (if __detail_status_run_pause_by_route (setq _detail_status_run_pause_by_route __detail_status_run_pause_by_route)) _detail_status_run_pause_by_route)
  (:detail_status_run_pause_by_detect_collision
   (&optional __detail_status_run_pause_by_detect_collision)
   (if __detail_status_run_pause_by_detect_collision (setq _detail_status_run_pause_by_detect_collision __detail_status_run_pause_by_detect_collision)) _detail_status_run_pause_by_detect_collision)
  (:is_pause_by_route
   (&optional (__is_pause_by_route :null))
   (if (not (eq __is_pause_by_route :null)) (setq _is_pause_by_route __is_pause_by_route)) _is_pause_by_route)
  (:is_pause_by_detect_collision
   (&optional (__is_pause_by_detect_collision :null))
   (if (not (eq __is_pause_by_detect_collision :null)) (setq _is_pause_by_detect_collision __is_pause_by_detect_collision)) _is_pause_by_detect_collision)
  (:serialization-length
   ()
   (+
    ;; string _detail_status_run_pause_by_route
    4 (length _detail_status_run_pause_by_route)
    ;; string _detail_status_run_pause_by_detect_collision
    4 (length _detail_status_run_pause_by_detect_collision)
    ;; bool _is_pause_by_route
    1
    ;; bool _is_pause_by_detect_collision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _detail_status_run_pause_by_route
       (write-long (length _detail_status_run_pause_by_route) s) (princ _detail_status_run_pause_by_route s)
     ;; string _detail_status_run_pause_by_detect_collision
       (write-long (length _detail_status_run_pause_by_detect_collision) s) (princ _detail_status_run_pause_by_detect_collision s)
     ;; bool _is_pause_by_route
       (if _is_pause_by_route (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_pause_by_detect_collision
       (if _is_pause_by_detect_collision (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _detail_status_run_pause_by_route
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail_status_run_pause_by_route (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _detail_status_run_pause_by_detect_collision
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail_status_run_pause_by_detect_collision (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_pause_by_route
     (setq _is_pause_by_route (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_pause_by_detect_collision
     (setq _is_pause_by_detect_collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass tuw_multi_robot_msgs::GetRobotStatus
  :super ros::object
  :slots ())

(setf (get tuw_multi_robot_msgs::GetRobotStatus :md5sum-) "ab256237ff1a2b88df7251fe3daff94b")
(setf (get tuw_multi_robot_msgs::GetRobotStatus :datatype-) "tuw_multi_robot_msgs/GetRobotStatus")
(setf (get tuw_multi_robot_msgs::GetRobotStatus :request) tuw_multi_robot_msgs::GetRobotStatusRequest)
(setf (get tuw_multi_robot_msgs::GetRobotStatus :response) tuw_multi_robot_msgs::GetRobotStatusResponse)

(defmethod tuw_multi_robot_msgs::GetRobotStatusRequest
  (:response () (instance tuw_multi_robot_msgs::GetRobotStatusResponse :init)))

(setf (get tuw_multi_robot_msgs::GetRobotStatusRequest :md5sum-) "ab256237ff1a2b88df7251fe3daff94b")
(setf (get tuw_multi_robot_msgs::GetRobotStatusRequest :datatype-) "tuw_multi_robot_msgs/GetRobotStatusRequest")
(setf (get tuw_multi_robot_msgs::GetRobotStatusRequest :definition-)
      "string robot_name  # Node A gửi tên robot

---

string detail_status_run_pause_by_route
string detail_status_run_pause_by_detect_collision
bool is_pause_by_route
bool is_pause_by_detect_collision

")

(setf (get tuw_multi_robot_msgs::GetRobotStatusResponse :md5sum-) "ab256237ff1a2b88df7251fe3daff94b")
(setf (get tuw_multi_robot_msgs::GetRobotStatusResponse :datatype-) "tuw_multi_robot_msgs/GetRobotStatusResponse")
(setf (get tuw_multi_robot_msgs::GetRobotStatusResponse :definition-)
      "string robot_name  # Node A gửi tên robot

---

string detail_status_run_pause_by_route
string detail_status_run_pause_by_detect_collision
bool is_pause_by_route
bool is_pause_by_detect_collision

")



(provide :tuw_multi_robot_msgs/GetRobotStatus "ab256237ff1a2b88df7251fe3daff94b")


