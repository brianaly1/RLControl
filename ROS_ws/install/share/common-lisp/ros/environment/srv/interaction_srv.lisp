; Auto-generated. Do not edit!


(cl:in-package environment-srv)


;//! \htmlinclude interaction_srv-request.msg.html

(cl:defclass <interaction_srv-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type environment-msg:actor_action_msg
    :initform (cl:make-instance 'environment-msg:actor_action_msg)))
)

(cl:defclass interaction_srv-request (<interaction_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <interaction_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'interaction_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-srv:<interaction_srv-request> is deprecated: use environment-srv:interaction_srv-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <interaction_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-srv:action-val is deprecated.  Use environment-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <interaction_srv-request>) ostream)
  "Serializes a message object of type '<interaction_srv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <interaction_srv-request>) istream)
  "Deserializes a message object of type '<interaction_srv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<interaction_srv-request>)))
  "Returns string type for a service object of type '<interaction_srv-request>"
  "environment/interaction_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'interaction_srv-request)))
  "Returns string type for a service object of type 'interaction_srv-request"
  "environment/interaction_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<interaction_srv-request>)))
  "Returns md5sum for a message object of type '<interaction_srv-request>"
  "ca1bf07e21318132705d70f9e12ea38c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'interaction_srv-request)))
  "Returns md5sum for a message object of type 'interaction_srv-request"
  "ca1bf07e21318132705d70f9e12ea38c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<interaction_srv-request>)))
  "Returns full string definition for message of type '<interaction_srv-request>"
  (cl:format cl:nil "actor_action_msg action~%~%================================================================================~%MSG: environment/actor_action_msg~%int32 reset~%float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'interaction_srv-request)))
  "Returns full string definition for message of type 'interaction_srv-request"
  (cl:format cl:nil "actor_action_msg action~%~%================================================================================~%MSG: environment/actor_action_msg~%int32 reset~%float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <interaction_srv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <interaction_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'interaction_srv-request
    (cl:cons ':action (action msg))
))
;//! \htmlinclude interaction_srv-response.msg.html

(cl:defclass <interaction_srv-response> (roslisp-msg-protocol:ros-message)
  ((observation
    :reader observation
    :initarg :observation
    :type environment-msg:env_observation_msg
    :initform (cl:make-instance 'environment-msg:env_observation_msg)))
)

(cl:defclass interaction_srv-response (<interaction_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <interaction_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'interaction_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-srv:<interaction_srv-response> is deprecated: use environment-srv:interaction_srv-response instead.")))

(cl:ensure-generic-function 'observation-val :lambda-list '(m))
(cl:defmethod observation-val ((m <interaction_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-srv:observation-val is deprecated.  Use environment-srv:observation instead.")
  (observation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <interaction_srv-response>) ostream)
  "Serializes a message object of type '<interaction_srv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'observation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <interaction_srv-response>) istream)
  "Deserializes a message object of type '<interaction_srv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'observation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<interaction_srv-response>)))
  "Returns string type for a service object of type '<interaction_srv-response>"
  "environment/interaction_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'interaction_srv-response)))
  "Returns string type for a service object of type 'interaction_srv-response"
  "environment/interaction_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<interaction_srv-response>)))
  "Returns md5sum for a message object of type '<interaction_srv-response>"
  "ca1bf07e21318132705d70f9e12ea38c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'interaction_srv-response)))
  "Returns md5sum for a message object of type 'interaction_srv-response"
  "ca1bf07e21318132705d70f9e12ea38c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<interaction_srv-response>)))
  "Returns full string definition for message of type '<interaction_srv-response>"
  (cl:format cl:nil "env_observation_msg observation~%~%~%================================================================================~%MSG: environment/env_observation_msg~%float32[] state~%float32 reward~%int32 done~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'interaction_srv-response)))
  "Returns full string definition for message of type 'interaction_srv-response"
  (cl:format cl:nil "env_observation_msg observation~%~%~%================================================================================~%MSG: environment/env_observation_msg~%float32[] state~%float32 reward~%int32 done~%string info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <interaction_srv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'observation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <interaction_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'interaction_srv-response
    (cl:cons ':observation (observation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'interaction_srv)))
  'interaction_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'interaction_srv)))
  'interaction_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'interaction_srv)))
  "Returns string type for a service object of type '<interaction_srv>"
  "environment/interaction_srv")