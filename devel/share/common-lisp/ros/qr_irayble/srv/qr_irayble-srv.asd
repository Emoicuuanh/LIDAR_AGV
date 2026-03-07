
(cl:in-package :asdf)

(defsystem "qr_irayble-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CodeRead" :depends-on ("_package_CodeRead"))
    (:file "_package_CodeRead" :depends-on ("_package"))
  ))