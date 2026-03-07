
(cl:in-package :asdf)

(defsystem "mirror_detect-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :pcl_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
               :visualization_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "Cluster" :depends-on ("_package_Cluster"))
    (:file "_package_Cluster" :depends-on ("_package"))
    (:file "ClusterArray" :depends-on ("_package_ClusterArray"))
    (:file "_package_ClusterArray" :depends-on ("_package"))
    (:file "Dock" :depends-on ("_package_Dock"))
    (:file "_package_Dock" :depends-on ("_package"))
    (:file "ICP" :depends-on ("_package_ICP"))
    (:file "_package_ICP" :depends-on ("_package"))
    (:file "Line" :depends-on ("_package_Line"))
    (:file "_package_Line" :depends-on ("_package"))
    (:file "LineArray" :depends-on ("_package_LineArray"))
    (:file "_package_LineArray" :depends-on ("_package"))
    (:file "LineOfSight" :depends-on ("_package_LineOfSight"))
    (:file "_package_LineOfSight" :depends-on ("_package"))
    (:file "MinMaxPoint" :depends-on ("_package_MinMaxPoint"))
    (:file "_package_MinMaxPoint" :depends-on ("_package"))
    (:file "Plan" :depends-on ("_package_Plan"))
    (:file "_package_Plan" :depends-on ("_package"))
  ))