;; Auto-generated. Do not edit!


(when (boundp 'environment::interaction_srv)
  (if (not (find-package "ENVIRONMENT"))
    (make-package "ENVIRONMENT"))
  (shadow 'interaction_srv (find-package "ENVIRONMENT")))
(unless (find-package "ENVIRONMENT::INTERACTION_SRV")
  (make-package "ENVIRONMENT::INTERACTION_SRV"))
(unless (find-package "ENVIRONMENT::INTERACTION_SRVREQUEST")
  (make-package "ENVIRONMENT::INTERACTION_SRVREQUEST"))
(unless (find-package "ENVIRONMENT::INTERACTION_SRVRESPONSE")
  (make-package "ENVIRONMENT::INTERACTION_SRVRESPONSE"))

(in-package "ROS")





(defclass environment::interaction_srvRequest
  :super ros::object
  :slots (_action ))

(defmethod environment::interaction_srvRequest
  (:init
   (&key
    ((:action __action) (instance environment::actor_action_msg :init))
    )
   (send-super :init)
   (setq _action __action)
   self)
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:serialization-length
   ()
   (+
    ;; environment/actor_action_msg _action
    (send _action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; environment/actor_action_msg _action
       (send _action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; environment/actor_action_msg _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;;
   self)
  )

(defclass environment::interaction_srvResponse
  :super ros::object
  :slots (_observation ))

(defmethod environment::interaction_srvResponse
  (:init
   (&key
    ((:observation __observation) (instance environment::env_observation_msg :init))
    )
   (send-super :init)
   (setq _observation __observation)
   self)
  (:observation
   (&rest __observation)
   (if (keywordp (car __observation))
       (send* _observation __observation)
     (progn
       (if __observation (setq _observation (car __observation)))
       _observation)))
  (:serialization-length
   ()
   (+
    ;; environment/env_observation_msg _observation
    (send _observation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; environment/env_observation_msg _observation
       (send _observation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; environment/env_observation_msg _observation
     (send _observation :deserialize buf ptr-) (incf ptr- (send _observation :serialization-length))
   ;;
   self)
  )

(defclass environment::interaction_srv
  :super ros::object
  :slots ())

(setf (get environment::interaction_srv :md5sum-) "ca1bf07e21318132705d70f9e12ea38c")
(setf (get environment::interaction_srv :datatype-) "environment/interaction_srv")
(setf (get environment::interaction_srv :request) environment::interaction_srvRequest)
(setf (get environment::interaction_srv :response) environment::interaction_srvResponse)

(defmethod environment::interaction_srvRequest
  (:response () (instance environment::interaction_srvResponse :init)))

(setf (get environment::interaction_srvRequest :md5sum-) "ca1bf07e21318132705d70f9e12ea38c")
(setf (get environment::interaction_srvRequest :datatype-) "environment/interaction_srvRequest")
(setf (get environment::interaction_srvRequest :definition-)
      "actor_action_msg action

================================================================================
MSG: environment/actor_action_msg
int32 reset
float32[] action
---
env_observation_msg observation


================================================================================
MSG: environment/env_observation_msg
float32[] state
float32 reward
int32 done
string info
")

(setf (get environment::interaction_srvResponse :md5sum-) "ca1bf07e21318132705d70f9e12ea38c")
(setf (get environment::interaction_srvResponse :datatype-) "environment/interaction_srvResponse")
(setf (get environment::interaction_srvResponse :definition-)
      "actor_action_msg action

================================================================================
MSG: environment/actor_action_msg
int32 reset
float32[] action
---
env_observation_msg observation


================================================================================
MSG: environment/env_observation_msg
float32[] state
float32 reward
int32 done
string info
")



(provide :environment/interaction_srv "ca1bf07e21318132705d70f9e12ea38c")


