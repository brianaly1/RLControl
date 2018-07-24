; Auto-generated. Do not edit!


(cl:in-package environment-msg)


;//! \htmlinclude env_state_msg.msg.html

(cl:defclass <env_state_msg> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (done
    :reader done
    :initarg :done
    :type cl:integer
    :initform 0))
)

(cl:defclass env_state_msg (<env_state_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <env_state_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'env_state_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name environment-msg:<env_state_msg> is deprecated: use environment-msg:env_state_msg instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <env_state_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:state-val is deprecated.  Use environment-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'done-val :lambda-list '(m))
(cl:defmethod done-val ((m <env_state_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader environment-msg:done-val is deprecated.  Use environment-msg:done instead.")
  (done m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <env_state_msg>) ostream)
  "Serializes a message object of type '<env_state_msg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'state))
  (cl:let* ((signed (cl:slot-value msg 'done)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <env_state_msg>) istream)
  "Deserializes a message object of type '<env_state_msg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'done) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<env_state_msg>)))
  "Returns string type for a message object of type '<env_state_msg>"
  "environment/env_state_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'env_state_msg)))
  "Returns string type for a message object of type 'env_state_msg"
  "environment/env_state_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<env_state_msg>)))
  "Returns md5sum for a message object of type '<env_state_msg>"
  "de894b6244ba540635bdca80d7623753")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'env_state_msg)))
  "Returns md5sum for a message object of type 'env_state_msg"
  "de894b6244ba540635bdca80d7623753")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<env_state_msg>)))
  "Returns full string definition for message of type '<env_state_msg>"
  (cl:format cl:nil "float32[] state~%int32 done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'env_state_msg)))
  "Returns full string definition for message of type 'env_state_msg"
  (cl:format cl:nil "float32[] state~%int32 done~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <env_state_msg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <env_state_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'env_state_msg
    (cl:cons ':state (state msg))
    (cl:cons ':done (done msg))
))
