;; Auto-generated. Do not edit!


(when (boundp 'qr_irayble::CodeRead)
  (if (not (find-package "QR_IRAYBLE"))
    (make-package "QR_IRAYBLE"))
  (shadow 'CodeRead (find-package "QR_IRAYBLE")))
(unless (find-package "QR_IRAYBLE::CODEREAD")
  (make-package "QR_IRAYBLE::CODEREAD"))
(unless (find-package "QR_IRAYBLE::CODEREADREQUEST")
  (make-package "QR_IRAYBLE::CODEREADREQUEST"))
(unless (find-package "QR_IRAYBLE::CODEREADRESPONSE")
  (make-package "QR_IRAYBLE::CODEREADRESPONSE"))

(in-package "ROS")





(defclass qr_irayble::CodeReadRequest
  :super ros::object
  :slots (_TimeOut ))

(defmethod qr_irayble::CodeReadRequest
  (:init
   (&key
    ((:TimeOut __TimeOut) 0)
    )
   (send-super :init)
   (setq _TimeOut (round __TimeOut))
   self)
  (:TimeOut
   (&optional __TimeOut)
   (if __TimeOut (setq _TimeOut __TimeOut)) _TimeOut)
  (:serialization-length
   ()
   (+
    ;; int8 _TimeOut
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _TimeOut
       (write-byte _TimeOut s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _TimeOut
     (setq _TimeOut (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _TimeOut 127) (setq _TimeOut (- _TimeOut 256)))
   ;;
   self)
  )

(defclass qr_irayble::CodeReadResponse
  :super ros::object
  :slots (_Res ))

(defmethod qr_irayble::CodeReadResponse
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

(defclass qr_irayble::CodeRead
  :super ros::object
  :slots ())

(setf (get qr_irayble::CodeRead :md5sum-) "67df3b6773c89deb64fbc2e4def3a244")
(setf (get qr_irayble::CodeRead :datatype-) "qr_irayble/CodeRead")
(setf (get qr_irayble::CodeRead :request) qr_irayble::CodeReadRequest)
(setf (get qr_irayble::CodeRead :response) qr_irayble::CodeReadResponse)

(defmethod qr_irayble::CodeReadRequest
  (:response () (instance qr_irayble::CodeReadResponse :init)))

(setf (get qr_irayble::CodeReadRequest :md5sum-) "67df3b6773c89deb64fbc2e4def3a244")
(setf (get qr_irayble::CodeReadRequest :datatype-) "qr_irayble/CodeReadRequest")
(setf (get qr_irayble::CodeReadRequest :definition-)
      "int8 TimeOut
---
string Res

")

(setf (get qr_irayble::CodeReadResponse :md5sum-) "67df3b6773c89deb64fbc2e4def3a244")
(setf (get qr_irayble::CodeReadResponse :datatype-) "qr_irayble/CodeReadResponse")
(setf (get qr_irayble::CodeReadResponse :definition-)
      "int8 TimeOut
---
string Res

")



(provide :qr_irayble/CodeRead "67df3b6773c89deb64fbc2e4def3a244")


