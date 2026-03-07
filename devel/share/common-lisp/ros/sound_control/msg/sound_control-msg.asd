
(cl:in-package :asdf)

(defsystem "sound_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SoundControlAction" :depends-on ("_package_SoundControlAction"))
    (:file "_package_SoundControlAction" :depends-on ("_package"))
    (:file "SoundControlActionFeedback" :depends-on ("_package_SoundControlActionFeedback"))
    (:file "_package_SoundControlActionFeedback" :depends-on ("_package"))
    (:file "SoundControlActionGoal" :depends-on ("_package_SoundControlActionGoal"))
    (:file "_package_SoundControlActionGoal" :depends-on ("_package"))
    (:file "SoundControlActionResult" :depends-on ("_package_SoundControlActionResult"))
    (:file "_package_SoundControlActionResult" :depends-on ("_package"))
    (:file "SoundControlFeedback" :depends-on ("_package_SoundControlFeedback"))
    (:file "_package_SoundControlFeedback" :depends-on ("_package"))
    (:file "SoundControlGoal" :depends-on ("_package_SoundControlGoal"))
    (:file "_package_SoundControlGoal" :depends-on ("_package"))
    (:file "SoundControlResult" :depends-on ("_package_SoundControlResult"))
    (:file "_package_SoundControlResult" :depends-on ("_package"))
  ))