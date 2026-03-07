
(cl:in-package :asdf)

(defsystem "docking-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "DockService" :depends-on ("_package_DockService"))
    (:file "_package_DockService" :depends-on ("_package"))
  ))