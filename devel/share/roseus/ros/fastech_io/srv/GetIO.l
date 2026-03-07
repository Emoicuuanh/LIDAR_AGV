;; Auto-generated. Do not edit!


(when (boundp 'fastech_io::GetIO)
  (if (not (find-package "FASTECH_IO"))
    (make-package "FASTECH_IO"))
  (shadow 'GetIO (find-package "FASTECH_IO")))
(unless (find-package "FASTECH_IO::GETIO")
  (make-package "FASTECH_IO::GETIO"))
(unless (find-package "FASTECH_IO::GETIOREQUEST")
  (make-package "FASTECH_IO::GETIOREQUEST"))
(unless (find-package "FASTECH_IO::GETIORESPONSE")
  (make-package "FASTECH_IO::GETIORESPONSE"))

(in-package "ROS")





(defclass fastech_io::GetIORequest
  :super ros::object
  :slots (_pin ))

(defmethod fastech_io::GetIORequest
  (:init
   (&key
    ((:pin __pin) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:serialization-length
   ()
   (+
    ;; int64 _pin
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _pin
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pin (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pin) (= (length (_pin . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pin . bv) 0) 0) s)
              (write-long (ash (elt (_pin . bv) 1) -1) s))
             ((and (class _pin) (= (length (_pin . bv)) 1)) ;; big1
              (write-long (elt (_pin . bv) 0) s)
              (write-long (if (>= _pin 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pin s)(write-long (if (>= _pin 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _pin
#+(or :alpha :irix6 :x86_64)
      (setf _pin (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pin (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass fastech_io::GetIOResponse
  :super ros::object
  :slots (_name _status_set _output_voltage ))

(defmethod fastech_io::GetIOResponse
  (:init
   (&key
    ((:name __name) "")
    ((:status_set __status_set) nil)
    ((:output_voltage __output_voltage) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _status_set __status_set)
   (setq _output_voltage (round __output_voltage))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:status_set
   (&optional (__status_set :null))
   (if (not (eq __status_set :null)) (setq _status_set __status_set)) _status_set)
  (:output_voltage
   (&optional __output_voltage)
   (if __output_voltage (setq _output_voltage __output_voltage)) _output_voltage)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _status_set
    1
    ;; int64 _output_voltage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _status_set
       (if _status_set (write-byte -1 s) (write-byte 0 s))
     ;; int64 _output_voltage
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _output_voltage (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _output_voltage) (= (length (_output_voltage . bv)) 2)) ;; bignum
              (write-long (ash (elt (_output_voltage . bv) 0) 0) s)
              (write-long (ash (elt (_output_voltage . bv) 1) -1) s))
             ((and (class _output_voltage) (= (length (_output_voltage . bv)) 1)) ;; big1
              (write-long (elt (_output_voltage . bv) 0) s)
              (write-long (if (>= _output_voltage 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _output_voltage s)(write-long (if (>= _output_voltage 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _status_set
     (setq _status_set (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _output_voltage
#+(or :alpha :irix6 :x86_64)
      (setf _output_voltage (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _output_voltage (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass fastech_io::GetIO
  :super ros::object
  :slots ())

(setf (get fastech_io::GetIO :md5sum-) "8dc7716b39efd26155b31938acfbd81d")
(setf (get fastech_io::GetIO :datatype-) "fastech_io/GetIO")
(setf (get fastech_io::GetIO :request) fastech_io::GetIORequest)
(setf (get fastech_io::GetIO :response) fastech_io::GetIOResponse)

(defmethod fastech_io::GetIORequest
  (:response () (instance fastech_io::GetIOResponse :init)))

(setf (get fastech_io::GetIORequest :md5sum-) "8dc7716b39efd26155b31938acfbd81d")
(setf (get fastech_io::GetIORequest :datatype-) "fastech_io/GetIORequest")
(setf (get fastech_io::GetIORequest :definition-)
      "int64 pin
---
string name
bool status_set
int64 output_voltage

")

(setf (get fastech_io::GetIOResponse :md5sum-) "8dc7716b39efd26155b31938acfbd81d")
(setf (get fastech_io::GetIOResponse :datatype-) "fastech_io/GetIOResponse")
(setf (get fastech_io::GetIOResponse :definition-)
      "int64 pin
---
string name
bool status_set
int64 output_voltage

")



(provide :fastech_io/GetIO "8dc7716b39efd26155b31938acfbd81d")


