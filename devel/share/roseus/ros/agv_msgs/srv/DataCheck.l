;; Auto-generated. Do not edit!


(when (boundp 'agv_msgs::DataCheck)
  (if (not (find-package "AGV_MSGS"))
    (make-package "AGV_MSGS"))
  (shadow 'DataCheck (find-package "AGV_MSGS")))
(unless (find-package "AGV_MSGS::DATACHECK")
  (make-package "AGV_MSGS::DATACHECK"))
(unless (find-package "AGV_MSGS::DATACHECKREQUEST")
  (make-package "AGV_MSGS::DATACHECKREQUEST"))
(unless (find-package "AGV_MSGS::DATACHECKRESPONSE")
  (make-package "AGV_MSGS::DATACHECKRESPONSE"))

(in-package "ROS")





(defclass agv_msgs::DataCheckRequest
  :super ros::object
  :slots (_Req ))

(defmethod agv_msgs::DataCheckRequest
  (:init
   (&key
    ((:Req __Req) 0)
    )
   (send-super :init)
   (setq _Req (round __Req))
   self)
  (:Req
   (&optional __Req)
   (if __Req (setq _Req __Req)) _Req)
  (:serialization-length
   ()
   (+
    ;; int8 _Req
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _Req
       (write-byte _Req s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _Req
     (setq _Req (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _Req 127) (setq _Req (- _Req 256)))
   ;;
   self)
  )

(defclass agv_msgs::DataCheckResponse
  :super ros::object
  :slots (_Res ))

(defmethod agv_msgs::DataCheckResponse
  (:init
   (&key
    ((:Res __Res) "")
    )
   (send-super :init)
   (setq _Res (string __Res))
   self)
  (:Res
   (&optional __Res)
   (if __Res (setq _Res __Res)) _Res)
  (:serialization-length
   ()
   (+
    ;; string _Res
    4 (length _Res)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Res
       (write-long (length _Res) s) (princ _Res s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Res
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Res (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass agv_msgs::DataCheck
  :super ros::object
  :slots ())

(setf (get agv_msgs::DataCheck :md5sum-) "24fe1e776fba9e3f89df1698abc9415d")
(setf (get agv_msgs::DataCheck :datatype-) "agv_msgs/DataCheck")
(setf (get agv_msgs::DataCheck :request) agv_msgs::DataCheckRequest)
(setf (get agv_msgs::DataCheck :response) agv_msgs::DataCheckResponse)

(defmethod agv_msgs::DataCheckRequest
  (:response () (instance agv_msgs::DataCheckResponse :init)))

(setf (get agv_msgs::DataCheckRequest :md5sum-) "24fe1e776fba9e3f89df1698abc9415d")
(setf (get agv_msgs::DataCheckRequest :datatype-) "agv_msgs/DataCheckRequest")
(setf (get agv_msgs::DataCheckRequest :definition-)
      "int8 Req
---
string Res
")

(setf (get agv_msgs::DataCheckResponse :md5sum-) "24fe1e776fba9e3f89df1698abc9415d")
(setf (get agv_msgs::DataCheckResponse :datatype-) "agv_msgs/DataCheckResponse")
(setf (get agv_msgs::DataCheckResponse :definition-)
      "int8 Req
---
string Res
")



(provide :agv_msgs/DataCheck "24fe1e776fba9e3f89df1698abc9415d")


