
(cl:in-package :asdf)

(defsystem "cognex_qr_code-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "QrCode" :depends-on ("_package_QrCode"))
    (:file "_package_QrCode" :depends-on ("_package"))
  ))