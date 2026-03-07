
(cl:in-package :asdf)

(defsystem "agv_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :agv_msgs-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "ArrayWaypoints" :depends-on ("_package_ArrayWaypoints"))
    (:file "_package_ArrayWaypoints" :depends-on ("_package"))
    (:file "DataCheck" :depends-on ("_package_DataCheck"))
    (:file "_package_DataCheck" :depends-on ("_package"))
    (:file "DirectionMove" :depends-on ("_package_DirectionMove"))
    (:file "_package_DirectionMove" :depends-on ("_package"))
    (:file "SetDigitalOutput" :depends-on ("_package_SetDigitalOutput"))
    (:file "_package_SetDigitalOutput" :depends-on ("_package"))
    (:file "WaypointsPath" :depends-on ("_package_WaypointsPath"))
    (:file "_package_WaypointsPath" :depends-on ("_package"))
  ))