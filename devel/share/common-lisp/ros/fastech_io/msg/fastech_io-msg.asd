
(cl:in-package :asdf)

(defsystem "fastech_io-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "io" :depends-on ("_package_io"))
    (:file "_package_io" :depends-on ("_package"))
  ))