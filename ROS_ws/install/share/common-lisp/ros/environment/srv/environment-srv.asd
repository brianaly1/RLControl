
(cl:in-package :asdf)

(defsystem "environment-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :environment-msg
)
  :components ((:file "_package")
    (:file "action_srv" :depends-on ("_package_action_srv"))
    (:file "_package_action_srv" :depends-on ("_package"))
    (:file "interaction_srv" :depends-on ("_package_interaction_srv"))
    (:file "_package_interaction_srv" :depends-on ("_package"))
    (:file "state_srv" :depends-on ("_package_state_srv"))
    (:file "_package_state_srv" :depends-on ("_package"))
  ))