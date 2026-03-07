;; Auto-generated. Do not edit!


(when (boundp 'fastech_io::SetValueOutput)
  (if (not (find-package "FASTECH_IO"))
    (make-package "FASTECH_IO"))
  (shadow 'SetValueOutput (find-package "FASTECH_IO")))
(unless (find-package "FASTECH_IO::SETVALUEOUTPUT")
  (make-package "FASTECH_IO::SETVALUEOUTPUT"))
(unless (find-package "FASTECH_IO::SETVALUEOUTPUTREQUEST")
  (make-package "FASTECH_IO::SETVALUEOUTPUTREQUEST"))
(unless (find-package "FASTECH_IO::SETVALUEOUTPUTRESPONSE")
  (make-package "FASTECH_IO::SETVALUEOUTPUTRESPONSE"))

(in-package "ROS")





(defclass fastech_io::SetValueOutputRequest
  :super ros::object
  :slots (_pin _value _mode _period_ms _ontime_ms _conut_time ))

(defmethod fastech_io::SetValueOutputRequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:value __value) nil)
    ((:mode __mode) 0)
    ((:period_ms __period_ms) 0)
    ((:ontime_ms __ontime_ms) 0)
    ((:conut_time __conut_time) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _value __value)
   (setq _mode (round __mode))
   (setq _period_ms (round __period_ms))
   (setq _ontime_ms (round __ontime_ms))
   (setq _conut_time (round __conut_time))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:period_ms
   (&optional __period_ms)
   (if __period_ms (setq _period_ms __period_ms)) _period_ms)
  (:ontime_ms
   (&optional __ontime_ms)
   (if __ontime_ms (setq _ontime_ms __ontime_ms)) _ontime_ms)
  (:conut_time
   (&optional __conut_time)
   (if __conut_time (setq _conut_time __conut_time)) _conut_time)
  (:serialization-length
   ()
   (+
    ;; int8 _pin
    1
    ;; bool _value
    1
    ;; int8 _mode
    1
    ;; int64 _period_ms
    8
    ;; int64 _ontime_ms
    8
    ;; int64 _conut_time
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
     ;; int8 _mode
       (write-byte _mode s)
     ;; int64 _period_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _period_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _period_ms) (= (length (_period_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_period_ms . bv) 0) 0) s)
              (write-long (ash (elt (_period_ms . bv) 1) -1) s))
             ((and (class _period_ms) (= (length (_period_ms . bv)) 1)) ;; big1
              (write-long (elt (_period_ms . bv) 0) s)
              (write-long (if (>= _period_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _period_ms s)(write-long (if (>= _period_ms 0) 0 #xffffffff) s)))
     ;; int64 _ontime_ms
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ontime_ms (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ontime_ms) (= (length (_ontime_ms . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ontime_ms . bv) 0) 0) s)
              (write-long (ash (elt (_ontime_ms . bv) 1) -1) s))
             ((and (class _ontime_ms) (= (length (_ontime_ms . bv)) 1)) ;; big1
              (write-long (elt (_ontime_ms . bv) 0) s)
              (write-long (if (>= _ontime_ms 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ontime_ms s)(write-long (if (>= _ontime_ms 0) 0 #xffffffff) s)))
     ;; int64 _conut_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _conut_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _conut_time) (= (length (_conut_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_conut_time . bv) 0) 0) s)
              (write-long (ash (elt (_conut_time . bv) 1) -1) s))
             ((and (class _conut_time) (= (length (_conut_time . bv)) 1)) ;; big1
              (write-long (elt (_conut_time . bv) 0) s)
              (write-long (if (>= _conut_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _conut_time s)(write-long (if (>= _conut_time 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pin 127) (setq _pin (- _pin 256)))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;; int64 _period_ms
#+(or :alpha :irix6 :x86_64)
      (setf _period_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _period_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _ontime_ms
#+(or :alpha :irix6 :x86_64)
      (setf _ontime_ms (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ontime_ms (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _conut_time
#+(or :alpha :irix6 :x86_64)
      (setf _conut_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _conut_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass fastech_io::SetValueOutputResponse
  :super ros::object
  :slots (_result ))

(defmethod fastech_io::SetValueOutputResponse
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

(defclass fastech_io::SetValueOutput
  :super ros::object
  :slots ())

(setf (get fastech_io::SetValueOutput :md5sum-) "37dae036605eb749cf1271f9d460c346")
(setf (get fastech_io::SetValueOutput :datatype-) "fastech_io/SetValueOutput")
(setf (get fastech_io::SetValueOutput :request) fastech_io::SetValueOutputRequest)
(setf (get fastech_io::SetValueOutput :response) fastech_io::SetValueOutputResponse)

(defmethod fastech_io::SetValueOutputRequest
  (:response () (instance fastech_io::SetValueOutputResponse :init)))

(setf (get fastech_io::SetValueOutputRequest :md5sum-) "37dae036605eb749cf1271f9d460c346")
(setf (get fastech_io::SetValueOutputRequest :datatype-) "fastech_io/SetValueOutputRequest")
(setf (get fastech_io::SetValueOutputRequest :definition-)
      "# number pin change: 0 - 31
int8 pin
# value change : True{on} , False {off}
bool value
# mode: Currently there are 2 modes, mod = 1 just on/off , mod = 2Pwm
int8 mode

# use only when mod = 2, if mod = 1 nothing change
# period_ms = cycle pwm = ontime + offtime, max_period_ms = 65535
int64 period_ms
# ontime_ms = period_ms - time_off, max_ontime_ms = 65535
int64 ontime_ms
# total number toggle
int64 conut_time
#max_cout_time = 4294967295, mid_cout_time = 1
---
# 0: NG
# 1: OK
bool result
")

(setf (get fastech_io::SetValueOutputResponse :md5sum-) "37dae036605eb749cf1271f9d460c346")
(setf (get fastech_io::SetValueOutputResponse :datatype-) "fastech_io/SetValueOutputResponse")
(setf (get fastech_io::SetValueOutputResponse :definition-)
      "# number pin change: 0 - 31
int8 pin
# value change : True{on} , False {off}
bool value
# mode: Currently there are 2 modes, mod = 1 just on/off , mod = 2Pwm
int8 mode

# use only when mod = 2, if mod = 1 nothing change
# period_ms = cycle pwm = ontime + offtime, max_period_ms = 65535
int64 period_ms
# ontime_ms = period_ms - time_off, max_ontime_ms = 65535
int64 ontime_ms
# total number toggle
int64 conut_time
#max_cout_time = 4294967295, mid_cout_time = 1
---
# 0: NG
# 1: OK
bool result
")



(provide :fastech_io/SetValueOutput "37dae036605eb749cf1271f9d460c346")


