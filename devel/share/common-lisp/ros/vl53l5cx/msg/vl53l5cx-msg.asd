
(cl:in-package :asdf)

(defsystem "vl53l5cx-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Safety_Esp" :depends-on ("_package_Safety_Esp"))
    (:file "_package_Safety_Esp" :depends-on ("_package"))
    (:file "Vl53l5cxRanges" :depends-on ("_package_Vl53l5cxRanges"))
    (:file "_package_Vl53l5cxRanges" :depends-on ("_package"))
    (:file "ultra_vl53l5_safety" :depends-on ("_package_ultra_vl53l5_safety"))
    (:file "_package_ultra_vl53l5_safety" :depends-on ("_package"))
    (:file "vl53l5cx_safety" :depends-on ("_package_vl53l5cx_safety"))
    (:file "_package_vl53l5cx_safety" :depends-on ("_package"))
  ))