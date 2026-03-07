;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::SetDigitalOutput)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'SetDigitalOutput (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::SETDIGITALOUTPUT")
  (make-package "AGV_MSGS::SETDIGITALOUTPUT"))
(unless (find-package "AGV_MSGS::SETDIGITALOUTPUTREQUEST")
  (make-package "AGV_MSGS::SETDIGITALOUTPUTREQUEST"))
(unless (find-package "AGV_MSGS::SETDIGITALOUTPUTRESPONSE")
  (make-package "AGV_MSGS::SETDIGITALOUTPUTRESPONSE"))

(in-package "ROS")





(defclass agv_msgs::SetDigitalOutputRequest
  :super ros::object
  :slots (_pin _value _duration_latch_ms _duration_blink_ms ))

(defmethod agv_msgs::SetDigitalOutputRequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:value __value) nil)
    ((:duration_latch_ms __duration_latch_ms) 0)
    ((:duration_blink_ms __duration_blink_ms) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _value __value)
   (setq _duration_latch_ms (round __duration_latch_ms))
   (setq _duration_blink_ms (round __duration_blink_ms))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:duration_latch_ms
   (&optional __duration_latch_ms)
   (if __duration_latch_ms (setq _duration_latch_ms __duration_latch_ms)) _duration_latch_ms)
  (:duration_blink_ms
   (&optional __duration_blink_ms)
   (if __duration_blink_ms (setq _duration_blink_ms __duration_blink_ms)) _duration_blink_ms)
  (:serialization-length
   ()
   (+
    ;; int8 _pin
    1
    ;; bool _value
    1
    ;; int64 _duration_latch_ms
    8
    ;; int64 _duration_blink_ms
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _pin
       (write-byte _pin s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;; int64 _duration_latch_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _duration_latch_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _duration_latch_ms) (= (length (_duration_latch_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_duration_latch_ms . bv) 0) 0) s)
              (write-long (ash (elt (_duration_latch_ms . bv) 1) -1) s))
             ((and (class _duration_latch_ms) (= (length (_duration_latch_ms . bv)) 1)) ;; big1
              (write-long (elt (_duration_latch_ms . bv) 0) s)
              (write-long (if (>= _duration_latch_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _duration_latch_ms s)(write-long (if (>= _duration_latch_ms 0) 0 #xffffffff) s)))
     ;; int64 _duration_blink_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _duration_blink_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _duration_blink_ms) (= (length (_duration_blink_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_duration_blink_ms . bv) 0) 0) s)
              (write-long (ash (elt (_duration_blink_ms . bv) 1) -1) s))
             ((and (class _duration_blink_ms) (= (length (_duration_blink_ms . bv)) 1)) ;; big1
              (write-long (elt (_duration_blink_ms . bv) 0) s)
              (write-long (if (>= _duration_blink_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _duration_blink_ms s)(write-long (if (>= _duration_blink_ms 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _duration_latch_ms
#+(or :alpha :irix6 :x86_64)
      (setf _duration_latch_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _duration_latch_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _duration_blink_ms
#+(or :alpha :irix6 :x86_64)
      (setf _duration_blink_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _duration_blink_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass agv_msgs::SetDigitalOutputResponse
  :super ros::object
  :slots (_result ))

(defmethod agv_msgs::SetDigitalOutputResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass agv_msgs::SetDigitalOutput
  :super ros::object
  :slots ())

(setf (get agv_msgs::SetDigitalOutput :md5sum-) "f41bbedf7777f22daed45c19cf82315a")
(setf (get agv_msgs::SetDigitalOutput :datatype-) "agv_msgs/SetDigitalOutput")
(setf (get agv_msgs::SetDigitalOutput :request) agv_msgs::SetDigitalOutputRequest)
(setf (get agv_msgs::SetDigitalOutput :response) agv_msgs::SetDigitalOutputResponse)

(defmethod agv_msgs::SetDigitalOutputRequest
  (:response () (instance agv_msgs::SetDigitalOutputResponse :init)))

(setf (get agv_msgs::SetDigitalOutputRequest :md5sum-) "f41bbedf7777f22daed45c19cf82315a")
(setf (get agv_msgs::SetDigitalOutputRequest :datatype-) "agv_msgs/SetDigitalOutputRequest")
(setf (get agv_msgs::SetDigitalOutputRequest :definition-)
      "int8 pin
bool value
# If duration_latch > 0 and duration_blink = 0, the output latch n (ms) then
# set to set the opposite value (True to False and False to True)
int64 duration_latch_ms
# If duration_blink > 0 and duration_latch = 0, the output toggle with
# duration = duration_latch (ms)
int64 duration_blink_ms
---
# 0: NG
# 1: OK
bool result
")

(setf (get agv_msgs::SetDigitalOutputResponse :md5sum-) "f41bbedf7777f22daed45c19cf82315a")
(setf (get agv_msgs::SetDigitalOutputResponse :datatype-) "agv_msgs/SetDigitalOutputResponse")
(setf (get agv_msgs::SetDigitalOutputResponse :definition-)
      "int8 pin
bool value
# If duration_latch > 0 and duration_blink = 0, the output latch n (ms) then
# set to set the opposite value (True to False and False to True)
int64 duration_latch_ms
# If duration_blink > 0 and duration_latch = 0, the output toggle with
# duration = duration_latch (ms)
int64 duration_blink_ms
---
# 0: NG
# 1: OK
bool result
")



(provide :agv_msgs/SetDigitalOutput "f41bbedf7777f22daed45c19cf82315a")


