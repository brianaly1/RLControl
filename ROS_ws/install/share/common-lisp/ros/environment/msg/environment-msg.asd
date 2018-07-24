
(cl:in-package :asdf)

(defsystem "environment-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "actor_action_msg" :depends-on ("_package_actor_action_msg"))
    (:file "_package_actor_action_msg" :depends-on ("_package"))
    (:file "env_observation_msg" :depends-on ("_package_env_observation_msg"))
    (:file "_package_env_observation_msg" :depends-on ("_package"))
    (:file "env_state_msg" :depends-on ("_package_env_state_msg"))
    (:file "_package_env_state_msg" :depends-on ("_package"))
  ))