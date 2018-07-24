;; Auto-generated. Do not edit!


(when (boundp 'environment::actor_action_msg)
  (if (not (find-package "ENVIRONMENT"))
    (make-package "ENVIRONMENT"))
  (shadow 'actor_action_msg (find-package "ENVIRONMENT")))
(unless (find-package "ENVIRONMENT::ACTOR_ACTION_MSG")
  (make-package "ENVIRONMENT::ACTOR_ACTION_MSG"))

(in-package "ROS")
;;//! \htmlinclude actor_action_msg.msg.html


(defclass environment::actor_action_msg
  :super ros::object
  :slots (_reset _action ))

(defmethod environment::actor_action_msg
  (:init
   (&key
    ((:reset __reset) 0)
    ((:action __action) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _reset (round __reset))
   (setq _action __action)
   self)
  (:reset
   (&optional __reset)
   (if __reset (setq _reset __reset)) _reset)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; int32 _reset
    4
    ;; float32[] _action
    (* 4    (length _action)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _reset
       (write-long _reset s)
     ;; float32[] _action
     (write-long (length _action) s)
     (dotimes (i (length _action))
       (sys::poke (elt _action i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _reset
     (setq _reset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _action
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _action i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get environment::actor_action_msg :md5sum-) "7f24ef1f066c6c848919ab7da1270cb9")
(setf (get environment::actor_action_msg :datatype-) "environment/actor_action_msg")
(setf (get environment::actor_action_msg :definition-)
      "int32 reset
float32[] action

")



(provide :environment/actor_action_msg "7f24ef1f066c6c848919ab7da1270cb9")


