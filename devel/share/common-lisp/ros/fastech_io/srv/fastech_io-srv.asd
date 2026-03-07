
(cl:in-package :asdf)

(defsystem "fastech_io-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetIO" :depends-on ("_package_GetIO"))
    (:file "_package_GetIO" :depends-on ("_package"))
    (:file "SetValueOutput" :depends-on ("_package_SetValueOutput"))
    (:file "_package_SetValueOutput" :depends-on ("_package"))
  ))