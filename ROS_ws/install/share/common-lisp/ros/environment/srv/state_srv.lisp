; Auto-generated. Do not edit!


(cl:in-package environment-srv)


;//! \htmlinclude state_srv-request.msg.html

(cl:defclass <state_srv-request> (roslisp-msg-protocol:ros-message)
  ((request_state
    :reader request_state
    :initarg :request_state
    :type cl:integer
    :initform 0))
)

(cl:defclass state_srv-request (<state_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <state_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'state_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-srv:<state_srv-request> is deprecated: use environment-srv:state_srv-request instead.")))

(cl:ensure-generic-function 'request_state-val :lambda-list '(m))
(cl:defmethod request_state-val ((m <state_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-srv:request_state-val is deprecated.  Use environment-srv:request_state instead.")
  (request_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <state_srv-request>) ostream)
  "Serializes a message object of type '<state_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'request_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <state_srv-request>) istream)
  "Deserializes a message object of type '<state_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<state_srv-request>)))
  "Returns string type for a service object of type '<state_srv-request>"
  "environment/state_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state_srv-request)))
  "Returns string type for a service object of type 'state_srv-request"
  "environment/state_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<state_srv-request>)))
  "Returns md5sum for a message object of type '<state_srv-request>"
  "1c52b5ad9ad4070922180340d7801b38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'state_srv-request)))
  "Returns md5sum for a message object of type 'state_srv-request"
  "1c52b5ad9ad4070922180340d7801b38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<state_srv-request>)))
  "Returns full string definition for message of type '<state_srv-request>"
  (cl:format cl:nil "int32 request_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'state_srv-request)))
  "Returns full string definition for message of type 'state_srv-request"
  (cl:format cl:nil "int32 request_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <state_srv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <state_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'state_srv-request
    (cl:cons ':request_state (request_state msg))
))
;//! \htmlinclude state_srv-response.msg.html

(cl:defclass <state_srv-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type environment-msg:env_state_msg
    :initform (cl:make-instance 'environment-msg:env_state_msg)))
)

(cl:defclass state_srv-response (<state_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <state_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'state_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-srv:<state_srv-response> is deprecated: use environment-srv:state_srv-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <state_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-srv:state-val is deprecated.  Use environment-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <state_srv-response>) ostream)
  "Serializes a message object of type '<state_srv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <state_srv-response>) istream)
  "Deserializes a message object of type '<state_srv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<state_srv-response>)))
  "Returns string type for a service object of type '<state_srv-response>"
  "environment/state_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state_srv-response)))
  "Returns string type for a service object of type 'state_srv-response"
  "environment/state_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<state_srv-response>)))
  "Returns md5sum for a message object of type '<state_srv-response>"
  "1c52b5ad9ad4070922180340d7801b38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'state_srv-response)))
  "Returns md5sum for a message object of type 'state_srv-response"
  "1c52b5ad9ad4070922180340d7801b38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<state_srv-response>)))
  "Returns full string definition for message of type '<state_srv-response>"
  (cl:format cl:nil "env_state_msg state~%~%~%================================================================================~%MSG: environment/env_state_msg~%float32[] state~%int32 done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'state_srv-response)))
  "Returns full string definition for message of type 'state_srv-response"
  (cl:format cl:nil "env_state_msg state~%~%~%================================================================================~%MSG: environment/env_state_msg~%float32[] state~%int32 done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <state_srv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <state_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'state_srv-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'state_srv)))
  'state_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'state_srv)))
  'state_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'state_srv)))
  "Returns string type for a service object of type '<state_srv>"
  "environment/state_srv")