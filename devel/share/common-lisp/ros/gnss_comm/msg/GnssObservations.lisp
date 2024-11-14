; Auto-generated. Do not edit!


(cl:in-package gnss_comm-msg)


;//! \htmlinclude GnssObservations.msg.html

(cl:defclass <GnssObservations> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (observations
    :reader observations
    :initarg :observations
    :type (cl:vector gnss_comm-msg:GnssObservation)
   :initform (cl:make-array 0 :element-type 'gnss_comm-msg:GnssObservation :initial-element (cl:make-instance 'gnss_comm-msg:GnssObservation))))
)

(cl:defclass GnssObservations (<GnssObservations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssObservations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssObservations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_comm-msg:<GnssObservations> is deprecated: use gnss_comm-msg:GnssObservations instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssObservations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:header-val is deprecated.  Use gnss_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'observations-val :lambda-list '(m))
(cl:defmethod observations-val ((m <GnssObservations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_comm-msg:observations-val is deprecated.  Use gnss_comm-msg:observations instead.")
  (observations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssObservations>) ostream)
  "Serializes a message object of type '<GnssObservations>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'observations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'observations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssObservations>) istream)
  "Deserializes a message object of type '<GnssObservations>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'observations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'observations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gnss_comm-msg:GnssObservation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssObservations>)))
  "Returns string type for a message object of type '<GnssObservations>"
  "gnss_comm/GnssObservations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssObservations)))
  "Returns string type for a message object of type 'GnssObservations"
  "gnss_comm/GnssObservations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssObservations>)))
  "Returns md5sum for a message object of type '<GnssObservations>"
  "9fa545dbe3bd92fe626968338708f3c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssObservations)))
  "Returns md5sum for a message object of type 'GnssObservations"
  "9fa545dbe3bd92fe626968338708f3c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssObservations>)))
  "Returns full string definition for message of type '<GnssObservations>"
  (cl:format cl:nil "std_msgs/Header header~%GnssObservation[] observations   # Observations of each satellites~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssObservation~%string prn        # Satellite PRN number~%uint16 week       # GPS week~%float64 tow       # GPS time of week~%float64[] SNR      # Signal strengths~%uint8[] LLI       # Loss of lock indicators~%string[] code     # Code indicators~%float64[] L       # Carrier phase cycles~%float64[] P       # Pseudoranges~%float64[] D       # Dopplers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssObservations)))
  "Returns full string definition for message of type 'GnssObservations"
  (cl:format cl:nil "std_msgs/Header header~%GnssObservation[] observations   # Observations of each satellites~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: gnss_comm/GnssObservation~%string prn        # Satellite PRN number~%uint16 week       # GPS week~%float64 tow       # GPS time of week~%float64[] SNR      # Signal strengths~%uint8[] LLI       # Loss of lock indicators~%string[] code     # Code indicators~%float64[] L       # Carrier phase cycles~%float64[] P       # Pseudoranges~%float64[] D       # Dopplers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssObservations>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'observations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssObservations>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssObservations
    (cl:cons ':header (header msg))
    (cl:cons ':observations (observations msg))
))
