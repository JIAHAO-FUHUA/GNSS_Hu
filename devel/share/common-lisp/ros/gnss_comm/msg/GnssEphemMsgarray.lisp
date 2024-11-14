; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssEphemMsgarray.msg.html

(cl:defclass <GnssEphemMsgarray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ephem
    :reader ephem
    :initarg :ephem
    :type (cl:vector gnss_comm-msg:GnssEphemMsg)
   :initform (cl:make-array 0 :element-type 'gnss_comm-msg:GnssEphemMsg :initial-element (cl:make-instance 'gnss_comm-msg:GnssEphemMsg)))
   (gloephem
    :reader gloephem
    :initarg :gloephem
    :type (cl:vector gnss_comm-msg:GnssGloEphemMsg)
   :initform (cl:make-array 0 :element-type 'gnss_comm-msg:GnssGloEphemMsg :initial-element (cl:make-instance 'gnss_comm-msg:GnssGloEphemMsg))))
)

(cl:defclass GnssEphemMsgarray (<GnssEphemMsgarray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssEphemMsgarray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssEphemMsgarray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssEphemMsgarray> is deprecated: use gnss_comm-msg:GnssEphemMsgarray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssEphemMsgarray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:header-val is deprecated.  Use gnss_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ephem-val :lambda-list '(m))
(cl:defmethod ephem-val ((m <GnssEphemMsgarray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:ephem-val is deprecated.  Use gnss_comm-msg:ephem instead.")
  (ephem m))

(cl:ensure-generic-function 'gloephem-val :lambda-list '(m))
(cl:defmethod gloephem-val ((m <GnssEphemMsgarray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:gloephem-val is deprecated.  Use gnss_comm-msg:gloephem instead.")
  (gloephem m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssEphemMsgarray>) ostream)
  "Serializes a message object of type '<GnssEphemMsgarray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ephem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ephem))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gloephem))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'gloephem))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssEphemMsgarray>) istream)
  "Deserializes a message object of type '<GnssEphemMsgarray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ephem) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ephem)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_comm-msg:GnssEphemMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gloephem) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gloephem)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_comm-msg:GnssGloEphemMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssEphemMsgarray>)))
  "Returns string type for a message object of type '<GnssEphemMsgarray>"
  "gnss_comm/GnssEphemMsgarray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssEphemMsgarray)))
  "Returns string type for a message object of type 'GnssEphemMsgarray"
  "gnss_comm/GnssEphemMsgarray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssEphemMsgarray>)))
  "Returns md5sum for a message object of type '<GnssEphemMsgarray>"
  "31054b3280a005cf30c1076c7645b85e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssEphemMsgarray)))
  "Returns md5sum for a message object of type 'GnssEphemMsgarray"
  "31054b3280a005cf30c1076c7645b85e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssEphemMsgarray>)))
  "Returns full string definition for message of type '<GnssEphemMsgarray>"
  (cl:format cl:nil "std_msgs/Header header ~%GnssEphemMsg[] ephem             # GPS, BDS, Galileo ephemeris of each satellites~%GnssGloEphemMsg[] gloephem ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssEphemMsg~%# This message contains GPS, Galileo and BeiDou ephemeris data~%~%uint32 sat~%GnssTimeMsg ttr~%GnssTimeMsg toe~%GnssTimeMsg toc~%float64 toe_tow~%uint32 week~%uint32 iode~%uint32 iodc~%uint32 health~%uint32 code~%float64 ura~%float64 A~%float64 e~%float64 i0~%float64 omg~%float64 OMG0~%float64 M0~%float64 delta_n~%float64 OMG_dot~%float64 i_dot~%float64 cuc~%float64 cus~%float64 crc~%float64 crs~%float64 cic~%float64 cis~%float64 af0~%float64 af1~%float64 af2~%float64 tgd0~%float64 tgd1~%float64 A_dot~%float64 n_dot~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%================================================================================~%MSG: gnss_comm/GnssGloEphemMsg~%# This message contains GLONASS ephemeris data~%~%uint32 sat~%GnssTimeMsg ttr~%GnssTimeMsg toe~%int32  freqo~%uint32 iode~%uint32 health~%uint32 age~%float64 ura~%float64 pos_x~%float64 pos_y~%float64 pos_z~%float64 vel_x~%float64 vel_y~%float64 vel_z~%float64 acc_x~%float64 acc_y~%float64 acc_z~%float64 tau_n~%float64 gamma~%float64 delta_tau_n~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssEphemMsgarray)))
  "Returns full string definition for message of type 'GnssEphemMsgarray"
  (cl:format cl:nil "std_msgs/Header header ~%GnssEphemMsg[] ephem             # GPS, BDS, Galileo ephemeris of each satellites~%GnssGloEphemMsg[] gloephem ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssEphemMsg~%# This message contains GPS, Galileo and BeiDou ephemeris data~%~%uint32 sat~%GnssTimeMsg ttr~%GnssTimeMsg toe~%GnssTimeMsg toc~%float64 toe_tow~%uint32 week~%uint32 iode~%uint32 iodc~%uint32 health~%uint32 code~%float64 ura~%float64 A~%float64 e~%float64 i0~%float64 omg~%float64 OMG0~%float64 M0~%float64 delta_n~%float64 OMG_dot~%float64 i_dot~%float64 cuc~%float64 cus~%float64 crc~%float64 crs~%float64 cic~%float64 cis~%float64 af0~%float64 af1~%float64 af2~%float64 tgd0~%float64 tgd1~%float64 A_dot~%float64 n_dot~%================================================================================~%MSG: gnss_comm/GnssTimeMsg~%# This message contains GNSS time expressed in the form of ~%# GNSS week number and time of week(in seconds)~%~%uint32 week~%float64 tow~%================================================================================~%MSG: gnss_comm/GnssGloEphemMsg~%# This message contains GLONASS ephemeris data~%~%uint32 sat~%GnssTimeMsg ttr~%GnssTimeMsg toe~%int32  freqo~%uint32 iode~%uint32 health~%uint32 age~%float64 ura~%float64 pos_x~%float64 pos_y~%float64 pos_z~%float64 vel_x~%float64 vel_y~%float64 vel_z~%float64 acc_x~%float64 acc_y~%float64 acc_z~%float64 tau_n~%float64 gamma~%float64 delta_tau_n~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssEphemMsgarray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ephem) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gloephem) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssEphemMsgarray>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssEphemMsgarray
    (cl:cons ':header (header msg))
    (cl:cons ':ephem (ephem msg))
    (cl:cons ':gloephem (gloephem msg))
))
