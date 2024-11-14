; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssEphemerides.msg.html

(cl:defclass <GnssEphemerides> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ephemerides
    :reader ephemerides
    :initarg :ephemerides
    :type (cl:vector gnss_comm-msg:GnssEphemeris)
   :initform (cl:make-array 0 :element-type 'gnss_comm-msg:GnssEphemeris :initial-element (cl:make-instance 'gnss_comm-msg:GnssEphemeris)))
   (glonass_ephemerides
    :reader glonass_ephemerides
    :initarg :glonass_ephemerides
    :type (cl:vector gnss_comm-msg:GlonassEphemeris)
   :initform (cl:make-array 0 :element-type 'gnss_comm-msg:GlonassEphemeris :initial-element (cl:make-instance 'gnss_comm-msg:GlonassEphemeris))))
)

(cl:defclass GnssEphemerides (<GnssEphemerides>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssEphemerides>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssEphemerides)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssEphemerides> is deprecated: use gnss_comm-msg:GnssEphemerides instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssEphemerides>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:header-val is deprecated.  Use gnss_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ephemerides-val :lambda-list '(m))
(cl:defmethod ephemerides-val ((m <GnssEphemerides>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:ephemerides-val is deprecated.  Use gnss_comm-msg:ephemerides instead.")
  (ephemerides m))

(cl:ensure-generic-function 'glonass_ephemerides-val :lambda-list '(m))
(cl:defmethod glonass_ephemerides-val ((m <GnssEphemerides>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:glonass_ephemerides-val is deprecated.  Use gnss_comm-msg:glonass_ephemerides instead.")
  (glonass_ephemerides m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssEphemerides>) ostream)
  "Serializes a message object of type '<GnssEphemerides>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ephemerides))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ephemerides))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'glonass_ephemerides))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'glonass_ephemerides))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssEphemerides>) istream)
  "Deserializes a message object of type '<GnssEphemerides>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ephemerides) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ephemerides)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_comm-msg:GnssEphemeris))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'glonass_ephemerides) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'glonass_ephemerides)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_comm-msg:GlonassEphemeris))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssEphemerides>)))
  "Returns string type for a message object of type '<GnssEphemerides>"
  "gnss_comm/GnssEphemerides")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssEphemerides)))
  "Returns string type for a message object of type 'GnssEphemerides"
  "gnss_comm/GnssEphemerides")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssEphemerides>)))
  "Returns md5sum for a message object of type '<GnssEphemerides>"
  "431654d65783239591dcbb9ac2bccfdd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssEphemerides)))
  "Returns md5sum for a message object of type 'GnssEphemerides"
  "431654d65783239591dcbb9ac2bccfdd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssEphemerides>)))
  "Returns full string definition for message of type '<GnssEphemerides>"
  (cl:format cl:nil "std_msgs/Header header ~%GnssEphemeris[] ephemerides             # GPS, BDS, Galileo ephemeris of each satellites~%GlonassEphemeris[] glonass_ephemerides  # Glonass ephemeris of each satellites~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssEphemeris~%string prn        # Satellite PRN number~%uint16 week       # GPS week~%uint8 sva         # SV accuracy (URA index)~%uint16 code       # GPS: code on L2, GAL/BDS: data source~%uint8 iode        # Issue of data, ephemeris~%uint16 iodc       # Issue of data, clock~%uint8 svh         # SV health~%float64 toc       # Time of clock~%float64 idot      # SV orbit parameter~%float64 crs       # SV orbit parameter~%float64 deln      # SV orbit parameter~%float64 M0        # SV orbit parameter~%float64 cuc       # SV orbit parameter~%float64 e         # SV orbit parameter~%float64 cus       # SV orbit parameter~%float64 A         # SV orbit parameter~%float64 toes      # SV orbit parameter~%float64 cic       # SV orbit parameter~%float64 OMG0      # SV orbit parameter~%float64 cis       # SV orbit parameter~%float64 i0        # SV orbit parameter~%float64 crc       # SV orbit parameter~%float64 omg       # SV orbit parameter~%float64 OMGd      # SV orbit parameter~%float64[] tgd     # Group delay parameters~%float64 f2        # SV clock parameter~%float64 f1        # SV clock parameter~%float64 f0        # SV clock parameter~%================================================================================~%MSG: gnss_comm/GlonassEphemeris~%string prn        # Satellite PRN number~%uint16 week       # GPS week~%int8 frq          # Satellite frequency number~%uint8 iode        # Issue of data, ephemeris~%uint8 svh         # SV health~%uint8 age         # Age of operation~%float64 toe       # Epoch of epherides~%float64 tof       # Message frame time~%float64[] pos     # Satellite position~%float64[] vel     # Satellite velocity~%float64[] acc     # Satellite acceleration~%float64 taun      # SV clock bias~%float64 gamn      # SV relative freq bias~%float64 dtaun     # Delay between L1 and L2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssEphemerides)))
  "Returns full string definition for message of type 'GnssEphemerides"
  (cl:format cl:nil "std_msgs/Header header ~%GnssEphemeris[] ephemerides             # GPS, BDS, Galileo ephemeris of each satellites~%GlonassEphemeris[] glonass_ephemerides  # Glonass ephemeris of each satellites~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssEphemeris~%string prn        # Satellite PRN number~%uint16 week       # GPS week~%uint8 sva         # SV accuracy (URA index)~%uint16 code       # GPS: code on L2, GAL/BDS: data source~%uint8 iode        # Issue of data, ephemeris~%uint16 iodc       # Issue of data, clock~%uint8 svh         # SV health~%float64 toc       # Time of clock~%float64 idot      # SV orbit parameter~%float64 crs       # SV orbit parameter~%float64 deln      # SV orbit parameter~%float64 M0        # SV orbit parameter~%float64 cuc       # SV orbit parameter~%float64 e         # SV orbit parameter~%float64 cus       # SV orbit parameter~%float64 A         # SV orbit parameter~%float64 toes      # SV orbit parameter~%float64 cic       # SV orbit parameter~%float64 OMG0      # SV orbit parameter~%float64 cis       # SV orbit parameter~%float64 i0        # SV orbit parameter~%float64 crc       # SV orbit parameter~%float64 omg       # SV orbit parameter~%float64 OMGd      # SV orbit parameter~%float64[] tgd     # Group delay parameters~%float64 f2        # SV clock parameter~%float64 f1        # SV clock parameter~%float64 f0        # SV clock parameter~%================================================================================~%MSG: gnss_comm/GlonassEphemeris~%string prn        # Satellite PRN number~%uint16 week       # GPS week~%int8 frq          # Satellite frequency number~%uint8 iode        # Issue of data, ephemeris~%uint8 svh         # SV health~%uint8 age         # Age of operation~%float64 toe       # Epoch of epherides~%float64 tof       # Message frame time~%float64[] pos     # Satellite position~%float64[] vel     # Satellite velocity~%float64[] acc     # Satellite acceleration~%float64 taun      # SV clock bias~%float64 gamn      # SV relative freq bias~%float64 dtaun     # Delay between L1 and L2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssEphemerides>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ephemerides) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'glonass_ephemerides) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssEphemerides>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssEphemerides
    (cl:cons ':header (header msg))
    (cl:cons ':ephemerides (ephemerides msg))
    (cl:cons ':glonass_ephemerides (glonass_ephemerides msg))
))
