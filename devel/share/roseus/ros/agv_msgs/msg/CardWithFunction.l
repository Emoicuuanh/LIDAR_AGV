;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::CardWithFunction)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'CardWithFunction (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::CARDWITHFUNCTION")
  (make-package "AGV_MSGS::CARDWITHFUNCTION"))

(in-package "ROS")
;;//! \htmlinclude CardWithFunction.msg.html


(defclass agv_msgs::CardWithFunction
  :super ros::object
  :slots (_Id _Functions ))

(defmethod agv_msgs::CardWithFunction
  (:init
   (&key
    ((:Id __Id) 0)
    ((:Functions __Functions) ())
    )
   (send-super :init)
   (setq _Id (round __Id))
   (setq _Functions __Functions)
   self)
  (:Id
   (&optional __Id)
   (if __Id (setq _Id __Id)) _Id)
  (:Functions
   (&rest __Functions)
   (if (keywordp (car __Functions))
       (send* _Functions __Functions)
     (progn
       (if __Functions (setq _Functions (car __Functions)))
       _Functions)))
  (:serialization-length
   ()
   (+
    ;; int64 _Id
    8
    ;; agv_msgs/BasicFunction[] _Functions
    (apply #'+ (send-all _Functions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _Id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Id) (= (length (_Id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Id . bv) 0) 0) s)
              (write-long (ash (elt (_Id . bv) 1) -1) s))
             ((and (class _Id) (= (length (_Id . bv)) 1)) ;; big1
              (write-long (elt (_Id . bv) 0) s)
              (write-long (if (>= _Id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Id s)(write-long (if (>= _Id 0) 0 #xffffffff) s)))
     ;; agv_msgs/BasicFunction[] _Functions
     (write-long (length _Functions) s)
     (dolist (elem _Functions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _Id
#+(or :alpha :irix6 :x86_64)
      (setf _Id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; agv_msgs/BasicFunction[] _Functions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Functions (let (r) (dotimes (i n) (push (instance agv_msgs::BasicFunction :init) r)) r))
     (dolist (elem- _Functions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_msgs::CardWithFunction :md5sum-) "d142f4b6d50baad4bba4d3ea3a40a57e")
(setf (get agv_msgs::CardWithFunction :datatype-) "agv_msgs/CardWithFunction")
(setf (get agv_msgs::CardWithFunction :definition-)
      "int64 Id
BasicFunction[] Functions
================================================================================
MSG: agv_msgs/BasicFunction
int8 FuncId
int8 ParId
")



(provide :agv_msgs/CardWithFunction "d142f4b6d50baad4bba4d3ea3a40a57e")


