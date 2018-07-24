; Auto-generated. Do not edit!


(cl:in-package environment-srv)


;//! \htmlinclude action_srv-request.msg.html

(cl:defclass <action_srv-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type environment-msg:actor_action_msg
    :initform (cl:make-instance 'environment-msg:actor_action_msg)))
)

(cl:defclass action_srv-request (<action_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-srv:<action_srv-request> is deprecated: use environment-srv:action_srv-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <action_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-srv:action-val is deprecated.  Use environment-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action_srv-request>) ostream)
  "Serializes a message object of type '<action_srv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action_srv-request>) istream)
  "Deserializes a message object of type '<action_srv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action_srv-request>)))
  "Returns string type for a service object of type '<action_srv-request>"
  "environment/action_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_srv-request)))
  "Returns string type for a service object of type 'action_srv-request"
  "environment/action_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action_srv-request>)))
  "Returns md5sum for a message object of type '<action_srv-request>"
  "b9e4308448306b0b27e98964dd75d3af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action_srv-request)))
  "Returns md5sum for a message object of type 'action_srv-request"
  "b9e4308448306b0b27e98964dd75d3af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action_srv-request>)))
  "Returns full string definition for message of type '<action_srv-request>"
  (cl:format cl:nil "actor_action_msg action~%~%================================================================================~%MSG: environment/actor_action_msg~%int32 reset~%float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action_srv-request)))
  "Returns full string definition for message of type 'action_srv-request"
  (cl:format cl:nil "actor_action_msg action~%~%================================================================================~%MSG: environment/actor_action_msg~%int32 reset~%float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action_srv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'action_srv-request
    (cl:cons ':action (action msg))
))
;//! \htmlinclude action_srv-response.msg.html

(cl:defclass <action_srv-response> (roslisp-msg-protocol:ros-message)
  ((complete
    :reader complete
    :initarg :complete
    :type cl:integer
    :initform 0))
)

(cl:defclass action_srv-response (<action_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <action_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'action_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-srv:<action_srv-response> is deprecated: use environment-srv:action_srv-response instead.")))

(cl:ensure-generic-function 'complete-val :lambda-list '(m))
(cl:defmethod complete-val ((m <action_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-srv:complete-val is deprecated.  Use environment-srv:complete instead.")
  (complete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <action_srv-response>) ostream)
  "Serializes a message object of type '<action_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'complete)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <action_srv-response>) istream)
  "Deserializes a message object of type '<action_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'complete) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<action_srv-response>)))
  "Returns string type for a service object of type '<action_srv-response>"
  "environment/action_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_srv-response)))
  "Returns string type for a service object of type 'action_srv-response"
  "environment/action_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<action_srv-response>)))
  "Returns md5sum for a message object of type '<action_srv-response>"
  "b9e4308448306b0b27e98964dd75d3af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'action_srv-response)))
  "Returns md5sum for a message object of type 'action_srv-response"
  "b9e4308448306b0b27e98964dd75d3af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<action_srv-response>)))
  "Returns full string definition for message of type '<action_srv-response>"
  (cl:format cl:nil "int32 complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'action_srv-response)))
  "Returns full string definition for message of type 'action_srv-response"
  (cl:format cl:nil "int32 complete~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <action_srv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <action_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'action_srv-response
    (cl:cons ':complete (complete msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'action_srv)))
  'action_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'action_srv)))
  'action_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'action_srv)))
  "Returns string type for a service object of type '<action_srv>"
  "environment/action_srv")