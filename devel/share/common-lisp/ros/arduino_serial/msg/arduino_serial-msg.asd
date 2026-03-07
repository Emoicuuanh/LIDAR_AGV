
(cl:in-package :asdf)

(defsystem "arduino_serial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BoolArrayStamped" :depends-on ("_package_BoolArrayStamped"))
    (:file "_package_BoolArrayStamped" :depends-on ("_package"))
    (:file "LiftStatus" :depends-on ("_package_LiftStatus"))
    (:file "_package_LiftStatus" :depends-on ("_package"))
    (:file "SetPinStamped" :depends-on ("_package_SetPinStamped"))
    (:file "_package_SetPinStamped" :depends-on ("_package"))
  ))