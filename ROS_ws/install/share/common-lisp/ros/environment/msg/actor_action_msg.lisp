; Auto-generated. Do not edit!


(cl:in-package environment-msg)


;//! \htmlinclude actor_action_msg.msg.html

(cl:defclass <actor_action_msg> (roslisp-msg-protocol:ros-message)
  ((reset
    :reader reset
    :initarg :reset
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass actor_action_msg (<actor_action_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actor_action_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actor_action_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-msg:<actor_action_msg> is deprecated: use environment-msg:actor_action_msg instead.")))

(cl:ensure-generic-function 'reset-val :lambda-list '(m))
(cl:defmethod reset-val ((m <actor_action_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:reset-val is deprecated.  Use environment-msg:reset instead.")
  (reset m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <actor_action_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:action-val is deprecated.  Use environment-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actor_action_msg>) ostream)
  "Serializes a message object of type '<actor_action_msg>"
  (cl:let* ((signed (cl:slot-value msg 'reset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actor_action_msg>) istream)
  "Deserializes a message object of type '<actor_action_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reset) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actor_action_msg>)))
  "Returns string type for a message object of type '<actor_action_msg>"
  "environment/actor_action_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actor_action_msg)))
  "Returns string type for a message object of type 'actor_action_msg"
  "environment/actor_action_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actor_action_msg>)))
  "Returns md5sum for a message object of type '<actor_action_msg>"
  "7f24ef1f066c6c848919ab7da1270cb9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actor_action_msg)))
  "Returns md5sum for a message object of type 'actor_action_msg"
  "7f24ef1f066c6c848919ab7da1270cb9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actor_action_msg>)))
  "Returns full string definition for message of type '<actor_action_msg>"
  (cl:format cl:nil "int32 reset~%float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actor_action_msg)))
  "Returns full string definition for message of type 'actor_action_msg"
  (cl:format cl:nil "int32 reset~%float32[] action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actor_action_msg>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actor_action_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'actor_action_msg
    (cl:cons ':reset (reset msg))
    (cl:cons ':action (action msg))
))
