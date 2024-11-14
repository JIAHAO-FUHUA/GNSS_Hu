; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssSsrEphemerides.msg.html

(cl:defclass <GnssSsrEphemerides> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (corrections
    :reader corrections
    :initarg :corrections
    :type (cl:vector gnss_comm-msg:GnssSsrEphemeris)
   :initform (cl:make-array 0 :element-type 'gnss_comm-msg:GnssSsrEphemeris :initial-element (cl:make-instance 'gnss_comm-msg:GnssSsrEphemeris))))
)

(cl:defclass GnssSsrEphemerides (<GnssSsrEphemerides>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssSsrEphemerides>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssSsrEphemerides)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssSsrEphemerides> is deprecated: use gnss_comm-msg:GnssSsrEphemerides instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssSsrEphemerides>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:header-val is deprecated.  Use gnss_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'corrections-val :lambda-list '(m))
(cl:defmethod corrections-val ((m <GnssSsrEphemerides>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:corrections-val is deprecated.  Use gnss_comm-msg:corrections instead.")
  (corrections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssSsrEphemerides>) ostream)
  "Serializes a message object of type '<GnssSsrEphemerides>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corrections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corrections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssSsrEphemerides>) istream)
  "Deserializes a message object of type '<GnssSsrEphemerides>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corrections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corrections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_comm-msg:GnssSsrEphemeris))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssSsrEphemerides>)))
  "Returns string type for a message object of type '<GnssSsrEphemerides>"
  "gnss_comm/GnssSsrEphemerides")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssSsrEphemerides)))
  "Returns string type for a message object of type 'GnssSsrEphemerides"
  "gnss_comm/GnssSsrEphemerides")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssSsrEphemerides>)))
  "Returns md5sum for a message object of type '<GnssSsrEphemerides>"
  "e4d2051d76baaed52944bc5181382d27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssSsrEphemerides)))
  "Returns md5sum for a message object of type 'GnssSsrEphemerides"
  "e4d2051d76baaed52944bc5181382d27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssSsrEphemerides>)))
  "Returns full string definition for message of type '<GnssSsrEphemerides>"
  (cl:format cl:nil "std_msgs/Header header ~%GnssSsrEphemeris[] corrections  # SSR ephemeris corrections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssSsrEphemeris~%string prn        # Satellite PRN number~%uint16 week       # GPS week, SSR message~%float64 tow       # GPS time of week, SSR message~%uint32 iod        # Issue of data, SSR message~%float64 udi       # SSR update interval~%uint8 iode        # Issue of data, ephemeris~%uint32 iodcrc     # Issue of data crc for BDS~%uint8 refd        # Sat ref datum (0:ITRF,1:regional)~%float64[] deph    # Delta orbit {radial,along,cross}~%float64[] ddeph   # Dot delta orbit {radial,along,cross}~%float64[] dclk    # Delta clock {c0,c1,c2}~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssSsrEphemerides)))
  "Returns full string definition for message of type 'GnssSsrEphemerides"
  (cl:format cl:nil "std_msgs/Header header ~%GnssSsrEphemeris[] corrections  # SSR ephemeris corrections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssSsrEphemeris~%string prn        # Satellite PRN number~%uint16 week       # GPS week, SSR message~%float64 tow       # GPS time of week, SSR message~%uint32 iod        # Issue of data, SSR message~%float64 udi       # SSR update interval~%uint8 iode        # Issue of data, ephemeris~%uint32 iodcrc     # Issue of data crc for BDS~%uint8 refd        # Sat ref datum (0:ITRF,1:regional)~%float64[] deph    # Delta orbit {radial,along,cross}~%float64[] ddeph   # Dot delta orbit {radial,along,cross}~%float64[] dclk    # Delta clock {c0,c1,c2}~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssSsrEphemerides>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corrections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssSsrEphemerides>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssSsrEphemerides
    (cl:cons ':header (header msg))
    (cl:cons ':corrections (corrections msg))
))
