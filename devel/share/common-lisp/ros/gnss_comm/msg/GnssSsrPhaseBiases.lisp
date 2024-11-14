; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssSsrPhaseBiases.msg.html

(cl:defclass <GnssSsrPhaseBiases> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (biases
    :reader biases
    :initarg :biases
    :type (cl:vector gnss_comm-msg:GnssSsrPhaseBias)
   :initform (cl:make-array 0 :element-type 'gnss_comm-msg:GnssSsrPhaseBias :initial-element (cl:make-instance 'gnss_comm-msg:GnssSsrPhaseBias))))
)

(cl:defclass GnssSsrPhaseBiases (<GnssSsrPhaseBiases>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssSsrPhaseBiases>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssSsrPhaseBiases)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssSsrPhaseBiases> is deprecated: use gnss_comm-msg:GnssSsrPhaseBiases instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssSsrPhaseBiases>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:header-val is deprecated.  Use gnss_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'biases-val :lambda-list '(m))
(cl:defmethod biases-val ((m <GnssSsrPhaseBiases>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:biases-val is deprecated.  Use gnss_comm-msg:biases instead.")
  (biases m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssSsrPhaseBiases>) ostream)
  "Serializes a message object of type '<GnssSsrPhaseBiases>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'biases))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'biases))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssSsrPhaseBiases>) istream)
  "Deserializes a message object of type '<GnssSsrPhaseBiases>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'biases) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'biases)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_comm-msg:GnssSsrPhaseBias))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssSsrPhaseBiases>)))
  "Returns string type for a message object of type '<GnssSsrPhaseBiases>"
  "gnss_comm/GnssSsrPhaseBiases")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssSsrPhaseBiases)))
  "Returns string type for a message object of type 'GnssSsrPhaseBiases"
  "gnss_comm/GnssSsrPhaseBiases")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssSsrPhaseBiases>)))
  "Returns md5sum for a message object of type '<GnssSsrPhaseBiases>"
  "6159b3ab70f3feffd59baf141fb2772d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssSsrPhaseBiases)))
  "Returns md5sum for a message object of type 'GnssSsrPhaseBiases"
  "6159b3ab70f3feffd59baf141fb2772d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssSsrPhaseBiases>)))
  "Returns full string definition for message of type '<GnssSsrPhaseBiases>"
  (cl:format cl:nil "std_msgs/Header header ~%GnssSsrPhaseBias[] biases  # SSR phase biases~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssSsrPhaseBias~%string prn        # Satellite PRN number~%uint16 week       # GPS week, SSR message~%float64 tow       # GPS time of week, SSR message~%uint32 iod        # Issue of data, SSR message~%uint8 isdpb       # If differenced~%float64 udi       # SSR update interval~%string[] phase    # Phase indicators~%float64[] bias    # Phase biases~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssSsrPhaseBiases)))
  "Returns full string definition for message of type 'GnssSsrPhaseBiases"
  (cl:format cl:nil "std_msgs/Header header ~%GnssSsrPhaseBias[] biases  # SSR phase biases~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssSsrPhaseBias~%string prn        # Satellite PRN number~%uint16 week       # GPS week, SSR message~%float64 tow       # GPS time of week, SSR message~%uint32 iod        # Issue of data, SSR message~%uint8 isdpb       # If differenced~%float64 udi       # SSR update interval~%string[] phase    # Phase indicators~%float64[] bias    # Phase biases~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssSsrPhaseBiases>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'biases) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssSsrPhaseBiases>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssSsrPhaseBiases
    (cl:cons ':header (header msg))
    (cl:cons ':biases (biases msg))
))
