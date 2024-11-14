;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssSsrEphemerides)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssSsrEphemerides (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSSSREPHEMERIDES")
  (make-package "GNSS_COMM::GNSSSSREPHEMERIDES"))

(in-package "ROS")
;;//! \htmlinclude GnssSsrEphemerides.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssSsrEphemerides
  :super ros::object
  :slots (_header _corrections ))

(defmethod gnss_comm::GnssSsrEphemerides
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:corrections __corrections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _corrections __corrections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:corrections
   (&rest __corrections)
   (if (keywordp (car __corrections))
       (send* _corrections __corrections)
     (progn
       (if __corrections (setq _corrections (car __corrections)))
       _corrections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gnss_comm/GnssSsrEphemeris[] _corrections
    (apply #'+ (send-all _corrections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gnss_comm/GnssSsrEphemeris[] _corrections
     (write-long (length _corrections) s)
     (dolist (elem _corrections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gnss_comm/GnssSsrEphemeris[] _corrections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corrections (let (r) (dotimes (i n) (push (instance gnss_comm::GnssSsrEphemeris :init) r)) r))
     (dolist (elem- _corrections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssSsrEphemerides :md5sum-) "e4d2051d76baaed52944bc5181382d27")
(setf (get gnss_comm::GnssSsrEphemerides :datatype-) "gnss_comm/GnssSsrEphemerides")
(setf (get gnss_comm::GnssSsrEphemerides :definition-)
      "std_msgs/Header header 
GnssSsrEphemeris[] corrections  # SSR ephemeris corrections
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
MSG: gnss_comm/GnssSsrEphemeris
string prn        # Satellite PRN number
uint16 week       # GPS week, SSR message
float64 tow       # GPS time of week, SSR message
uint32 iod        # Issue of data, SSR message
float64 udi       # SSR update interval
uint8 iode        # Issue of data, ephemeris
uint32 iodcrc     # Issue of data crc for BDS
uint8 refd        # Sat ref datum (0:ITRF,1:regional)
float64[] deph    # Delta orbit {radial,along,cross}
float64[] ddeph   # Dot delta orbit {radial,along,cross}
float64[] dclk    # Delta clock {c0,c1,c2}

")



(provide :gnss_comm/GnssSsrEphemerides "e4d2051d76baaed52944bc5181382d27")


