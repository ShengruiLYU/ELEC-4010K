; Auto-generated. Do not edit!


(cl:in-package demo-srv)


;//! \htmlinclude addTwoNum-request.msg.html

(cl:defclass <addTwoNum-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0))
)

(cl:defclass addTwoNum-request (<addTwoNum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addTwoNum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addTwoNum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo-srv:<addTwoNum-request> is deprecated: use demo-srv:addTwoNum-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <addTwoNum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo-srv:a-val is deprecated.  Use demo-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <addTwoNum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo-srv:b-val is deprecated.  Use demo-srv:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addTwoNum-request>) ostream)
  "Serializes a message object of type '<addTwoNum-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addTwoNum-request>) istream)
  "Deserializes a message object of type '<addTwoNum-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addTwoNum-request>)))
  "Returns string type for a service object of type '<addTwoNum-request>"
  "demo/addTwoNumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoNum-request)))
  "Returns string type for a service object of type 'addTwoNum-request"
  "demo/addTwoNumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addTwoNum-request>)))
  "Returns md5sum for a message object of type '<addTwoNum-request>"
  "210a18f816d5b88becb133b82fae0c4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addTwoNum-request)))
  "Returns md5sum for a message object of type 'addTwoNum-request"
  "210a18f816d5b88becb133b82fae0c4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addTwoNum-request>)))
  "Returns full string definition for message of type '<addTwoNum-request>"
  (cl:format cl:nil "float32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addTwoNum-request)))
  "Returns full string definition for message of type 'addTwoNum-request"
  (cl:format cl:nil "float32 a~%float32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addTwoNum-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addTwoNum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'addTwoNum-request
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
;//! \htmlinclude addTwoNum-response.msg.html

(cl:defclass <addTwoNum-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:float
    :initform 0.0))
)

(cl:defclass addTwoNum-response (<addTwoNum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addTwoNum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addTwoNum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo-srv:<addTwoNum-response> is deprecated: use demo-srv:addTwoNum-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <addTwoNum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo-srv:sum-val is deprecated.  Use demo-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addTwoNum-response>) ostream)
  "Serializes a message object of type '<addTwoNum-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addTwoNum-response>) istream)
  "Deserializes a message object of type '<addTwoNum-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sum) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addTwoNum-response>)))
  "Returns string type for a service object of type '<addTwoNum-response>"
  "demo/addTwoNumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoNum-response)))
  "Returns string type for a service object of type 'addTwoNum-response"
  "demo/addTwoNumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addTwoNum-response>)))
  "Returns md5sum for a message object of type '<addTwoNum-response>"
  "210a18f816d5b88becb133b82fae0c4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addTwoNum-response)))
  "Returns md5sum for a message object of type 'addTwoNum-response"
  "210a18f816d5b88becb133b82fae0c4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addTwoNum-response>)))
  "Returns full string definition for message of type '<addTwoNum-response>"
  (cl:format cl:nil "float32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addTwoNum-response)))
  "Returns full string definition for message of type 'addTwoNum-response"
  (cl:format cl:nil "float32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addTwoNum-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addTwoNum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'addTwoNum-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'addTwoNum)))
  'addTwoNum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'addTwoNum)))
  'addTwoNum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addTwoNum)))
  "Returns string type for a service object of type '<addTwoNum>"
  "demo/addTwoNum")