;; Auto-generated. Do not edit!


(when (boundp 'environment::action_srv)
  (if (not (find-package "ENVIRONMENT"))
    (make-package "ENVIRONMENT"))
  (shadow 'action_srv (find-package "ENVIRONMENT")))
(unless (find-package "ENVIRONMENT::ACTION_SRV")
  (make-package "ENVIRONMENT::ACTION_SRV"))
(unless (find-package "ENVIRONMENT::ACTION_SRVREQUEST")
  (make-package "ENVIRONMENT::ACTION_SRVREQUEST"))
(unless (find-package "ENVIRONMENT::ACTION_SRVRESPONSE")
  (make-package "ENVIRONMENT::ACTION_SRVRESPONSE"))

(in-package "ROS")





(defclass environment::action_srvRequest
  :super ros::object
  :slots (_action ))

(defmethod environment::action_srvRequest
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

(defclass environment::action_srvResponse
  :super ros::object
  :slots (_complete ))

(defmethod environment::action_srvResponse
  (:init
   (&key
    ((:complete __complete) 0)
    )
   (send-super :init)
   (setq _complete (round __complete))
   self)
  (:complete
   (&optional __complete)
   (if __complete (setq _complete __complete)) _complete)
  (:serialization-length
   ()
   (+
    ;; int32 _complete
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _complete
       (write-long _complete s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _complete
     (setq _complete (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass environment::action_srv
  :super ros::object
  :slots ())

(setf (get environment::action_srv :md5sum-) "b9e4308448306b0b27e98964dd75d3af")
(setf (get environment::action_srv :datatype-) "environment/action_srv")
(setf (get environment::action_srv :request) environment::action_srvRequest)
(setf (get environment::action_srv :response) environment::action_srvResponse)

(defmethod environment::action_srvRequest
  (:response () (instance environment::action_srvResponse :init)))

(setf (get environment::action_srvRequest :md5sum-) "b9e4308448306b0b27e98964dd75d3af")
(setf (get environment::action_srvRequest :datatype-) "environment/action_srvRequest")
(setf (get environment::action_srvRequest :definition-)
      "actor_action_msg action

================================================================================
MSG: environment/actor_action_msg
int32 reset
float32[] action
---
int32 complete

")

(setf (get environment::action_srvResponse :md5sum-) "b9e4308448306b0b27e98964dd75d3af")
(setf (get environment::action_srvResponse :datatype-) "environment/action_srvResponse")
(setf (get environment::action_srvResponse :definition-)
      "actor_action_msg action

================================================================================
MSG: environment/actor_action_msg
int32 reset
float32[] action
---
int32 complete

")



(provide :environment/action_srv "b9e4308448306b0b27e98964dd75d3af")


