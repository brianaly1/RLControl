;; Auto-generated. Do not edit!


(when (boundp 'environment::env_observation_msg)
  (if (not (find-package "ENVIRONMENT"))
    (make-package "ENVIRONMENT"))
  (shadow 'env_observation_msg (find-package "ENVIRONMENT")))
(unless (find-package "ENVIRONMENT::ENV_OBSERVATION_MSG")
  (make-package "ENVIRONMENT::ENV_OBSERVATION_MSG"))

(in-package "ROS")
;;//! \htmlinclude env_observation_msg.msg.html


(defclass environment::env_observation_msg
  :super ros::object
  :slots (_state _reward _done _info ))

(defmethod environment::env_observation_msg
  (:init
   (&key
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reward __reward) 0.0)
    ((:done __done) 0)
    ((:info __info) "")
    )
   (send-super :init)
   (setq _state __state)
   (setq _reward (float __reward))
   (setq _done (round __done))
   (setq _info (string __info))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; float32[] _state
    (* 4    (length _state)) 4
    ;; float32 _reward
    4
    ;; int32 _done
    4
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (sys::poke (elt _state i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _done
       (write-long _done s)
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _reward
     (setq _reward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _done
     (setq _done (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get environment::env_observation_msg :md5sum-) "6c5cbad1d260155771e00e80b3967562")
(setf (get environment::env_observation_msg :datatype-) "environment/env_observation_msg")
(setf (get environment::env_observation_msg :definition-)
      "float32[] state
float32 reward
int32 done
string info

")



(provide :environment/env_observation_msg "6c5cbad1d260155771e00e80b3967562")


