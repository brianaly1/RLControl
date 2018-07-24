;; Auto-generated. Do not edit!


(when (boundp 'environment::env_state_msg)
  (if (not (find-package "ENVIRONMENT"))
    (make-package "ENVIRONMENT"))
  (shadow 'env_state_msg (find-package "ENVIRONMENT")))
(unless (find-package "ENVIRONMENT::ENV_STATE_MSG")
  (make-package "ENVIRONMENT::ENV_STATE_MSG"))

(in-package "ROS")
;;//! \htmlinclude env_state_msg.msg.html


(defclass environment::env_state_msg
  :super ros::object
  :slots (_state _done ))

(defmethod environment::env_state_msg
  (:init
   (&key
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:done __done) 0)
    )
   (send-super :init)
   (setq _state __state)
   (setq _done (round __done))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:done
   (&optional __done)
   (if __done (setq _done __done)) _done)
  (:serialization-length
   ()
   (+
    ;; float32[] _state
    (* 4    (length _state)) 4
    ;; int32 _done
    4
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
     ;; int32 _done
       (write-long _done s)
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
   ;; int32 _done
     (setq _done (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get environment::env_state_msg :md5sum-) "de894b6244ba540635bdca80d7623753")
(setf (get environment::env_state_msg :datatype-) "environment/env_state_msg")
(setf (get environment::env_state_msg :definition-)
      "float32[] state
int32 done

")



(provide :environment/env_state_msg "de894b6244ba540635bdca80d7623753")


