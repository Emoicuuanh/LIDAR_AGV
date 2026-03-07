;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::ArduinoIO)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'ArduinoIO (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::ARDUINOIO")
  (make-package "AGV_MSGS::ARDUINOIO"))

(in-package "ROS")
;;//! \htmlinclude ArduinoIO.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass agv_msgs::ArduinoIO
  :super ros::object
  :slots (_header _EMG _Start_1 _Start_2 _Stop_1 _Stop_2 _Remote_A _Remote_B _Motor1_En _Motor1_Break _Motor1_Dir _Motor2_En _Motor2_Break _Motor2_Dir _Bumper_1 _Bumper_2 _lift_max _lift_min _auto_man_sw _Release_motor _Battery_1 _Battery_2 _Battery_3 _Battery_4 _Charging _Encoder_Left _Encoder_Right _Safety_1 _Safety_2 _Safety_3 _Safety_4 ))

(defmethod agv_msgs::ArduinoIO
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:EMG __EMG) nil)
    ((:Start_1 __Start_1) nil)
    ((:Start_2 __Start_2) nil)
    ((:Stop_1 __Stop_1) nil)
    ((:Stop_2 __Stop_2) nil)
    ((:Remote_A __Remote_A) nil)
    ((:Remote_B __Remote_B) nil)
    ((:Motor1_En __Motor1_En) nil)
    ((:Motor1_Break __Motor1_Break) nil)
    ((:Motor1_Dir __Motor1_Dir) nil)
    ((:Motor2_En __Motor2_En) nil)
    ((:Motor2_Break __Motor2_Break) nil)
    ((:Motor2_Dir __Motor2_Dir) nil)
    ((:Bumper_1 __Bumper_1) nil)
    ((:Bumper_2 __Bumper_2) nil)
    ((:lift_max __lift_max) nil)
    ((:lift_min __lift_min) nil)
    ((:auto_man_sw __auto_man_sw) nil)
    ((:Release_motor __Release_motor) nil)
    ((:Battery_1 __Battery_1) 0.0)
    ((:Battery_2 __Battery_2) 0.0)
    ((:Battery_3 __Battery_3) 0.0)
    ((:Battery_4 __Battery_4) 0.0)
    ((:Charging __Charging) nil)
    ((:Encoder_Left __Encoder_Left) 0)
    ((:Encoder_Right __Encoder_Right) 0)
    ((:Safety_1 __Safety_1) 0)
    ((:Safety_2 __Safety_2) 0)
    ((:Safety_3 __Safety_3) 0)
    ((:Safety_4 __Safety_4) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _EMG __EMG)
   (setq _Start_1 __Start_1)
   (setq _Start_2 __Start_2)
   (setq _Stop_1 __Stop_1)
   (setq _Stop_2 __Stop_2)
   (setq _Remote_A __Remote_A)
   (setq _Remote_B __Remote_B)
   (setq _Motor1_En __Motor1_En)
   (setq _Motor1_Break __Motor1_Break)
   (setq _Motor1_Dir __Motor1_Dir)
   (setq _Motor2_En __Motor2_En)
   (setq _Motor2_Break __Motor2_Break)
   (setq _Motor2_Dir __Motor2_Dir)
   (setq _Bumper_1 __Bumper_1)
   (setq _Bumper_2 __Bumper_2)
   (setq _lift_max __lift_max)
   (setq _lift_min __lift_min)
   (setq _auto_man_sw __auto_man_sw)
   (setq _Release_motor __Release_motor)
   (setq _Battery_1 (float __Battery_1))
   (setq _Battery_2 (float __Battery_2))
   (setq _Battery_3 (float __Battery_3))
   (setq _Battery_4 (float __Battery_4))
   (setq _Charging __Charging)
   (setq _Encoder_Left (round __Encoder_Left))
   (setq _Encoder_Right (round __Encoder_Right))
   (setq _Safety_1 (round __Safety_1))
   (setq _Safety_2 (round __Safety_2))
   (setq _Safety_3 (round __Safety_3))
   (setq _Safety_4 (round __Safety_4))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:EMG
   (&optional (__EMG :null))
   (if (not (eq __EMG :null)) (setq _EMG __EMG)) _EMG)
  (:Start_1
   (&optional (__Start_1 :null))
   (if (not (eq __Start_1 :null)) (setq _Start_1 __Start_1)) _Start_1)
  (:Start_2
   (&optional (__Start_2 :null))
   (if (not (eq __Start_2 :null)) (setq _Start_2 __Start_2)) _Start_2)
  (:Stop_1
   (&optional (__Stop_1 :null))
   (if (not (eq __Stop_1 :null)) (setq _Stop_1 __Stop_1)) _Stop_1)
  (:Stop_2
   (&optional (__Stop_2 :null))
   (if (not (eq __Stop_2 :null)) (setq _Stop_2 __Stop_2)) _Stop_2)
  (:Remote_A
   (&optional (__Remote_A :null))
   (if (not (eq __Remote_A :null)) (setq _Remote_A __Remote_A)) _Remote_A)
  (:Remote_B
   (&optional (__Remote_B :null))
   (if (not (eq __Remote_B :null)) (setq _Remote_B __Remote_B)) _Remote_B)
  (:Motor1_En
   (&optional (__Motor1_En :null))
   (if (not (eq __Motor1_En :null)) (setq _Motor1_En __Motor1_En)) _Motor1_En)
  (:Motor1_Break
   (&optional (__Motor1_Break :null))
   (if (not (eq __Motor1_Break :null)) (setq _Motor1_Break __Motor1_Break)) _Motor1_Break)
  (:Motor1_Dir
   (&optional (__Motor1_Dir :null))
   (if (not (eq __Motor1_Dir :null)) (setq _Motor1_Dir __Motor1_Dir)) _Motor1_Dir)
  (:Motor2_En
   (&optional (__Motor2_En :null))
   (if (not (eq __Motor2_En :null)) (setq _Motor2_En __Motor2_En)) _Motor2_En)
  (:Motor2_Break
   (&optional (__Motor2_Break :null))
   (if (not (eq __Motor2_Break :null)) (setq _Motor2_Break __Motor2_Break)) _Motor2_Break)
  (:Motor2_Dir
   (&optional (__Motor2_Dir :null))
   (if (not (eq __Motor2_Dir :null)) (setq _Motor2_Dir __Motor2_Dir)) _Motor2_Dir)
  (:Bumper_1
   (&optional (__Bumper_1 :null))
   (if (not (eq __Bumper_1 :null)) (setq _Bumper_1 __Bumper_1)) _Bumper_1)
  (:Bumper_2
   (&optional (__Bumper_2 :null))
   (if (not (eq __Bumper_2 :null)) (setq _Bumper_2 __Bumper_2)) _Bumper_2)
  (:lift_max
   (&optional (__lift_max :null))
   (if (not (eq __lift_max :null)) (setq _lift_max __lift_max)) _lift_max)
  (:lift_min
   (&optional (__lift_min :null))
   (if (not (eq __lift_min :null)) (setq _lift_min __lift_min)) _lift_min)
  (:auto_man_sw
   (&optional (__auto_man_sw :null))
   (if (not (eq __auto_man_sw :null)) (setq _auto_man_sw __auto_man_sw)) _auto_man_sw)
  (:Release_motor
   (&optional (__Release_motor :null))
   (if (not (eq __Release_motor :null)) (setq _Release_motor __Release_motor)) _Release_motor)
  (:Battery_1
   (&optional __Battery_1)
   (if __Battery_1 (setq _Battery_1 __Battery_1)) _Battery_1)
  (:Battery_2
   (&optional __Battery_2)
   (if __Battery_2 (setq _Battery_2 __Battery_2)) _Battery_2)
  (:Battery_3
   (&optional __Battery_3)
   (if __Battery_3 (setq _Battery_3 __Battery_3)) _Battery_3)
  (:Battery_4
   (&optional __Battery_4)
   (if __Battery_4 (setq _Battery_4 __Battery_4)) _Battery_4)
  (:Charging
   (&optional (__Charging :null))
   (if (not (eq __Charging :null)) (setq _Charging __Charging)) _Charging)
  (:Encoder_Left
   (&optional __Encoder_Left)
   (if __Encoder_Left (setq _Encoder_Left __Encoder_Left)) _Encoder_Left)
  (:Encoder_Right
   (&optional __Encoder_Right)
   (if __Encoder_Right (setq _Encoder_Right __Encoder_Right)) _Encoder_Right)
  (:Safety_1
   (&optional __Safety_1)
   (if __Safety_1 (setq _Safety_1 __Safety_1)) _Safety_1)
  (:Safety_2
   (&optional __Safety_2)
   (if __Safety_2 (setq _Safety_2 __Safety_2)) _Safety_2)
  (:Safety_3
   (&optional __Safety_3)
   (if __Safety_3 (setq _Safety_3 __Safety_3)) _Safety_3)
  (:Safety_4
   (&optional __Safety_4)
   (if __Safety_4 (setq _Safety_4 __Safety_4)) _Safety_4)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _EMG
    1
    ;; bool _Start_1
    1
    ;; bool _Start_2
    1
    ;; bool _Stop_1
    1
    ;; bool _Stop_2
    1
    ;; bool _Remote_A
    1
    ;; bool _Remote_B
    1
    ;; bool _Motor1_En
    1
    ;; bool _Motor1_Break
    1
    ;; bool _Motor1_Dir
    1
    ;; bool _Motor2_En
    1
    ;; bool _Motor2_Break
    1
    ;; bool _Motor2_Dir
    1
    ;; bool _Bumper_1
    1
    ;; bool _Bumper_2
    1
    ;; bool _lift_max
    1
    ;; bool _lift_min
    1
    ;; bool _auto_man_sw
    1
    ;; bool _Release_motor
    1
    ;; float32 _Battery_1
    4
    ;; float32 _Battery_2
    4
    ;; float32 _Battery_3
    4
    ;; float32 _Battery_4
    4
    ;; bool _Charging
    1
    ;; int32 _Encoder_Left
    4
    ;; int32 _Encoder_Right
    4
    ;; uint16 _Safety_1
    2
    ;; uint16 _Safety_2
    2
    ;; uint16 _Safety_3
    2
    ;; uint16 _Safety_4
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _EMG
       (if _EMG (write-byte -1 s) (write-byte 0 s))
     ;; bool _Start_1
       (if _Start_1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _Start_2
       (if _Start_2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _Stop_1
       (if _Stop_1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _Stop_2
       (if _Stop_2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _Remote_A
       (if _Remote_A (write-byte -1 s) (write-byte 0 s))
     ;; bool _Remote_B
       (if _Remote_B (write-byte -1 s) (write-byte 0 s))
     ;; bool _Motor1_En
       (if _Motor1_En (write-byte -1 s) (write-byte 0 s))
     ;; bool _Motor1_Break
       (if _Motor1_Break (write-byte -1 s) (write-byte 0 s))
     ;; bool _Motor1_Dir
       (if _Motor1_Dir (write-byte -1 s) (write-byte 0 s))
     ;; bool _Motor2_En
       (if _Motor2_En (write-byte -1 s) (write-byte 0 s))
     ;; bool _Motor2_Break
       (if _Motor2_Break (write-byte -1 s) (write-byte 0 s))
     ;; bool _Motor2_Dir
       (if _Motor2_Dir (write-byte -1 s) (write-byte 0 s))
     ;; bool _Bumper_1
       (if _Bumper_1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _Bumper_2
       (if _Bumper_2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _lift_max
       (if _lift_max (write-byte -1 s) (write-byte 0 s))
     ;; bool _lift_min
       (if _lift_min (write-byte -1 s) (write-byte 0 s))
     ;; bool _auto_man_sw
       (if _auto_man_sw (write-byte -1 s) (write-byte 0 s))
     ;; bool _Release_motor
       (if _Release_motor (write-byte -1 s) (write-byte 0 s))
     ;; float32 _Battery_1
       (sys::poke _Battery_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Battery_2
       (sys::poke _Battery_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Battery_3
       (sys::poke _Battery_3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Battery_4
       (sys::poke _Battery_4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _Charging
       (if _Charging (write-byte -1 s) (write-byte 0 s))
     ;; int32 _Encoder_Left
       (write-long _Encoder_Left s)
     ;; int32 _Encoder_Right
       (write-long _Encoder_Right s)
     ;; uint16 _Safety_1
       (write-word _Safety_1 s)
     ;; uint16 _Safety_2
       (write-word _Safety_2 s)
     ;; uint16 _Safety_3
       (write-word _Safety_3 s)
     ;; uint16 _Safety_4
       (write-word _Safety_4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _EMG
     (setq _EMG (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Start_1
     (setq _Start_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Start_2
     (setq _Start_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Stop_1
     (setq _Stop_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Stop_2
     (setq _Stop_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Remote_A
     (setq _Remote_A (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Remote_B
     (setq _Remote_B (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Motor1_En
     (setq _Motor1_En (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Motor1_Break
     (setq _Motor1_Break (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Motor1_Dir
     (setq _Motor1_Dir (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Motor2_En
     (setq _Motor2_En (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Motor2_Break
     (setq _Motor2_Break (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Motor2_Dir
     (setq _Motor2_Dir (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Bumper_1
     (setq _Bumper_1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Bumper_2
     (setq _Bumper_2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lift_max
     (setq _lift_max (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _lift_min
     (setq _lift_min (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto_man_sw
     (setq _auto_man_sw (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _Release_motor
     (setq _Release_motor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _Battery_1
     (setq _Battery_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Battery_2
     (setq _Battery_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Battery_3
     (setq _Battery_3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Battery_4
     (setq _Battery_4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _Charging
     (setq _Charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _Encoder_Left
     (setq _Encoder_Left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _Encoder_Right
     (setq _Encoder_Right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _Safety_1
     (setq _Safety_1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Safety_2
     (setq _Safety_2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Safety_3
     (setq _Safety_3 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Safety_4
     (setq _Safety_4 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get agv_msgs::ArduinoIO :md5sum-) "675bff81b91834773820b3bad7d42153")
(setf (get agv_msgs::ArduinoIO :datatype-) "agv_msgs/ArduinoIO")
(setf (get agv_msgs::ArduinoIO :definition-)
      "std_msgs/Header header

bool EMG
bool Start_1
bool Start_2
bool Stop_1
bool Stop_2
bool Remote_A
bool Remote_B
bool Motor1_En
bool Motor1_Break
bool Motor1_Dir
bool Motor2_En
bool Motor2_Break
bool Motor2_Dir
bool Bumper_1
bool Bumper_2
bool lift_max
bool lift_min
bool auto_man_sw
bool Release_motor
float32 Battery_1
float32 Battery_2
float32 Battery_3
float32 Battery_4
bool Charging
int32 Encoder_Left
int32 Encoder_Right
uint16 Safety_1
uint16 Safety_2
uint16 Safety_3
uint16 Safety_4

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

")



(provide :agv_msgs/ArduinoIO "675bff81b91834773820b3bad7d42153")


