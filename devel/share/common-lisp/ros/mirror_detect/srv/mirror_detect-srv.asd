
(cl:in-package :asdf)

(defsystem "mirror_detect-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "HubService" :depends-on ("_package_HubService"))
    (:file "_package_HubService" :depends-on ("_package"))
  ))