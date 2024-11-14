;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssEphemerides)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssEphemerides (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSEPHEMERIDES")
  (make-package "GNSS_COMM::GNSSEPHEMERIDES"))

(in-package "ROS")
;;//! \htmlinclude GnssEphemerides.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssEphemerides
  :super ros::object
  :slots (_header _ephemerides _glonass_ephemerides ))

(defmethod gnss_comm::GnssEphemerides
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ephemerides __ephemerides) ())
    ((:glonass_ephemerides __glonass_ephemerides) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _ephemerides __ephemerides)
   (setq _glonass_ephemerides __glonass_ephemerides)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ephemerides
   (&rest __ephemerides)
   (if (keywordp (car __ephemerides))
       (send* _ephemerides __ephemerides)
     (progn
       (if __ephemerides (setq _ephemerides (car __ephemerides)))
       _ephemerides)))
  (:glonass_ephemerides
   (&rest __glonass_ephemerides)
   (if (keywordp (car __glonass_ephemerides))
       (send* _glonass_ephemerides __glonass_ephemerides)
     (progn
       (if __glonass_ephemerides (setq _glonass_ephemerides (car __glonass_ephemerides)))
       _glonass_ephemerides)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gnss_comm/GnssEphemeris[] _ephemerides
    (apply #'+ (send-all _ephemerides :serialization-length)) 4
    ;; gnss_comm/GlonassEphemeris[] _glonass_ephemerides
    (apply #'+ (send-all _glonass_ephemerides :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gnss_comm/GnssEphemeris[] _ephemerides
     (write-long (length _ephemerides) s)
     (dolist (elem _ephemerides)
       (send elem :serialize s)
       )
     ;; gnss_comm/GlonassEphemeris[] _glonass_ephemerides
     (write-long (length _glonass_ephemerides) s)
     (dolist (elem _glonass_ephemerides)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gnss_comm/GnssEphemeris[] _ephemerides
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ephemerides (let (r) (dotimes (i n) (push (instance gnss_comm::GnssEphemeris :init) r)) r))
     (dolist (elem- _ephemerides)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gnss_comm/GlonassEphemeris[] _glonass_ephemerides
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _glonass_ephemerides (let (r) (dotimes (i n) (push (instance gnss_comm::GlonassEphemeris :init) r)) r))
     (dolist (elem- _glonass_ephemerides)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssEphemerides :md5sum-) "431654d65783239591dcbb9ac2bccfdd")
(setf (get gnss_comm::GnssEphemerides :datatype-) "gnss_comm/GnssEphemerides")
(setf (get gnss_comm::GnssEphemerides :definition-)
      "std_msgs/Header header 
GnssEphemeris[] ephemerides             # GPS, BDS, Galileo ephemeris of each satellites
GlonassEphemeris[] glonass_ephemerides  # Glonass ephemeris of each satellites
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: gnss_comm/GnssEphemeris
string prn        # Satellite PRN number
uint16 week       # GPS week
uint8 sva         # SV accuracy (URA index)
uint16 code       # GPS: code on L2, GAL/BDS: data source
uint8 iode        # Issue of data, ephemeris
uint16 iodc       # Issue of data, clock
uint8 svh         # SV health
float64 toc       # Time of clock
float64 idot      # SV orbit parameter
float64 crs       # SV orbit parameter
float64 deln      # SV orbit parameter
float64 M0        # SV orbit parameter
float64 cuc       # SV orbit parameter
float64 e         # SV orbit parameter
float64 cus       # SV orbit parameter
float64 A         # SV orbit parameter
float64 toes      # SV orbit parameter
float64 cic       # SV orbit parameter
float64 OMG0      # SV orbit parameter
float64 cis       # SV orbit parameter
float64 i0        # SV orbit parameter
float64 crc       # SV orbit parameter
float64 omg       # SV orbit parameter
float64 OMGd      # SV orbit parameter
float64[] tgd     # Group delay parameters
float64 f2        # SV clock parameter
float64 f1        # SV clock parameter
float64 f0        # SV clock parameter
================================================================================
MSG: gnss_comm/GlonassEphemeris
string prn        # Satellite PRN number
uint16 week       # GPS week
int8 frq          # Satellite frequency number
uint8 iode        # Issue of data, ephemeris
uint8 svh         # SV health
uint8 age         # Age of operation
float64 toe       # Epoch of epherides
float64 tof       # Message frame time
float64[] pos     # Satellite position
float64[] vel     # Satellite velocity
float64[] acc     # Satellite acceleration
float64 taun      # SV clock bias
float64 gamn      # SV relative freq bias
float64 dtaun     # Delay between L1 and L2
")



(provide :gnss_comm/GnssEphemerides "431654d65783239591dcbb9ac2bccfdd")


