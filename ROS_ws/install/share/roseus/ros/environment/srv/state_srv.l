;; Auto-generated. Do not edit!


(when (boundp 'environment::state_srv)
  (if (not (find-package "ENVIRONMENT"))
    (make-package "ENVIRONMENT"))
  (shadow 'state_srv (find-package "ENVIRONMENT")))
(unless (find-package "ENVIRONMENT::STATE_SRV")
  (make-package "ENVIRONMENT::STATE_SRV"))
(unless (find-package "ENVIRONMENT::STATE_SRVREQUEST")
  (make-package "ENVIRONMENT::STATE_SRVREQUEST"))
(unless (find-package "ENVIRONMENT::STATE_SRVRESPONSE")
  (make-package "ENVIRONMENT::STATE_SRVRESPONSE"))

(in-package "ROS")





(defclass environment::state_srvRequest
  :super ros::object
  :slots (_request_state ))

(defmethod environment::state_srvRequest
  (:init
   (&key
    ((:request_state __request_state) 0)
    )
   (send-super :init)
   (setq _request_state (round __request_state))
   self)
  (:request_state
   (&optional __request_state)
   (if __request_state (setq _request_state __request_state)) _request_state)
  (:serialization-length
   ()
   (+
    ;; int32 _request_state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _request_state
       (write-long _request_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _request_state
     (setq _request_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass environment::state_srvResponse
  :super ros::object
  :slots (_state ))

(defmethod environment::state_srvResponse
  (:init
   (&key
    ((:state __state) (instance environment::env_state_msg :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; environment/env_state_msg _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; environment/env_state_msg _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; environment/env_state_msg _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass environment::state_srv
  :super ros::object
  :slots ())

(setf (get environment::state_srv :md5sum-) "1c52b5ad9ad4070922180340d7801b38")
(setf (get environment::state_srv :datatype-) "environment/state_srv")
(setf (get environment::state_srv :request) environment::state_srvRequest)
(setf (get environment::state_srv :response) environment::state_srvResponse)

(defmethod environment::state_srvRequest
  (:response () (instance environment::state_srvResponse :init)))

(setf (get environment::state_srvRequest :md5sum-) "1c52b5ad9ad4070922180340d7801b38")
(setf (get environment::state_srvRequest :datatype-) "environment/state_srvRequest")
(setf (get environment::state_srvRequest :definition-)
      "int32 request_state
---
env_state_msg state


================================================================================
MSG: environment/env_state_msg
float32[] state
int32 done
")

(setf (get environment::state_srvResponse :md5sum-) "1c52b5ad9ad4070922180340d7801b38")
(setf (get environment::state_srvResponse :datatype-) "environment/state_srvResponse")
(setf (get environment::state_srvResponse :definition-)
      "int32 request_state
---
env_state_msg state


================================================================================
MSG: environment/env_state_msg
float32[] state
int32 done
")



(provide :environment/state_srv "1c52b5ad9ad4070922180340d7801b38")


