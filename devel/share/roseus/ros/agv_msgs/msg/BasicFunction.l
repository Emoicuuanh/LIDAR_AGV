;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::BasicFunction)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'BasicFunction (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::BASICFUNCTION")
  (make-package "AGV_MSGS::BASICFUNCTION"))

(in-package "ROS")
;;//! \htmlinclude BasicFunction.msg.html


(defclass agv_msgs::BasicFunction
  :super ros::object
  :slots (_FuncId _ParId ))

(defmethod agv_msgs::BasicFunction
  (:init
   (&key
    ((:FuncId __FuncId) 0)
    ((:ParId __ParId) 0)
    )
   (send-super :init)
   (setq _FuncId (round __FuncId))
   (setq _ParId (round __ParId))
   self)
  (:FuncId
   (&optional __FuncId)
   (if __FuncId (setq _FuncId __FuncId)) _FuncId)
  (:ParId
   (&optional __ParId)
   (if __ParId (setq _ParId __ParId)) _ParId)
  (:serialization-length
   ()
   (+
    ;; int8 _FuncId
    1
    ;; int8 _ParId
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _FuncId
       (write-byte _FuncId s)
     ;; int8 _ParId
       (write-byte _ParId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _FuncId
     (setq _FuncId (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _FuncId 127) (setq _FuncId (- _FuncId 256)))
   ;; int8 _ParId
     (setq _ParId (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _ParId 127) (setq _ParId (- _ParId 256)))
   ;;
   self)
  )

(setf (get agv_msgs::BasicFunction :md5sum-) "9bd1e71c4c1a7cc1e9127efa7dba7022")
(setf (get agv_msgs::BasicFunction :datatype-) "agv_msgs/BasicFunction")
(setf (get agv_msgs::BasicFunction :definition-)
      "int8 FuncId
int8 ParId
")



(provide :agv_msgs/BasicFunction "9bd1e71c4c1a7cc1e9127efa7dba7022")


