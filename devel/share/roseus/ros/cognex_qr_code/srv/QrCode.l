;; Auto-generated. Do not edit!


(when (boundp 'cognex_qr_code::QrCode)
  (if (not (find-package "COGNEX_QR_CODE"))
    (make-package "COGNEX_QR_CODE"))
  (shadow 'QrCode (find-package "COGNEX_QR_CODE")))
(unless (find-package "COGNEX_QR_CODE::QRCODE")
  (make-package "COGNEX_QR_CODE::QRCODE"))
(unless (find-package "COGNEX_QR_CODE::QRCODEREQUEST")
  (make-package "COGNEX_QR_CODE::QRCODEREQUEST"))
(unless (find-package "COGNEX_QR_CODE::QRCODERESPONSE")
  (make-package "COGNEX_QR_CODE::QRCODERESPONSE"))

(in-package "ROS")





(defclass cognex_qr_code::QrCodeRequest
  :super ros::object
  :slots (_TimeOut ))

(defmethod cognex_qr_code::QrCodeRequest
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

(defclass cognex_qr_code::QrCodeResponse
  :super ros::object
  :slots (_Res ))

(defmethod cognex_qr_code::QrCodeResponse
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

(defclass cognex_qr_code::QrCode
  :super ros::object
  :slots ())

(setf (get cognex_qr_code::QrCode :md5sum-) "67df3b6773c89deb64fbc2e4def3a244")
(setf (get cognex_qr_code::QrCode :datatype-) "cognex_qr_code/QrCode")
(setf (get cognex_qr_code::QrCode :request) cognex_qr_code::QrCodeRequest)
(setf (get cognex_qr_code::QrCode :response) cognex_qr_code::QrCodeResponse)

(defmethod cognex_qr_code::QrCodeRequest
  (:response () (instance cognex_qr_code::QrCodeResponse :init)))

(setf (get cognex_qr_code::QrCodeRequest :md5sum-) "67df3b6773c89deb64fbc2e4def3a244")
(setf (get cognex_qr_code::QrCodeRequest :datatype-) "cognex_qr_code/QrCodeRequest")
(setf (get cognex_qr_code::QrCodeRequest :definition-)
      "int8 TimeOut
---
string Res
")

(setf (get cognex_qr_code::QrCodeResponse :md5sum-) "67df3b6773c89deb64fbc2e4def3a244")
(setf (get cognex_qr_code::QrCodeResponse :datatype-) "cognex_qr_code/QrCodeResponse")
(setf (get cognex_qr_code::QrCodeResponse :definition-)
      "int8 TimeOut
---
string Res
")



(provide :cognex_qr_code/QrCode "67df3b6773c89deb64fbc2e4def3a244")


