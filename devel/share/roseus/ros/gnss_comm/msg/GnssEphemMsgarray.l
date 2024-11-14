;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssEphemMsgarray)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssEphemMsgarray (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSEPHEMMSGARRAY")
  (make-package "GNSS_COMM::GNSSEPHEMMSGARRAY"))

(in-package "ROS")
;;//! \htmlinclude GnssEphemMsgarray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssEphemMsgarray
  :super ros::object
  :slots (_header _ephem _gloephem ))

(defmethod gnss_comm::GnssEphemMsgarray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ephem __ephem) ())
    ((:gloephem __gloephem) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _ephem __ephem)
   (setq _gloephem __gloephem)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ephem
   (&rest __ephem)
   (if (keywordp (car __ephem))
       (send* _ephem __ephem)
     (progn
       (if __ephem (setq _ephem (car __ephem)))
       _ephem)))
  (:gloephem
   (&rest __gloephem)
   (if (keywordp (car __gloephem))
       (send* _gloephem __gloephem)
     (progn
       (if __gloephem (setq _gloephem (car __gloephem)))
       _gloephem)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gnss_comm/GnssEphemMsg[] _ephem
    (apply #'+ (send-all _ephem :serialization-length)) 4
    ;; gnss_comm/GnssGloEphemMsg[] _gloephem
    (apply #'+ (send-all _gloephem :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gnss_comm/GnssEphemMsg[] _ephem
     (write-long (length _ephem) s)
     (dolist (elem _ephem)
       (send elem :serialize s)
       )
     ;; gnss_comm/GnssGloEphemMsg[] _gloephem
     (write-long (length _gloephem) s)
     (dolist (elem _gloephem)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gnss_comm/GnssEphemMsg[] _ephem
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ephem (let (r) (dotimes (i n) (push (instance gnss_comm::GnssEphemMsg :init) r)) r))
     (dolist (elem- _ephem)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; gnss_comm/GnssGloEphemMsg[] _gloephem
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gloephem (let (r) (dotimes (i n) (push (instance gnss_comm::GnssGloEphemMsg :init) r)) r))
     (dolist (elem- _gloephem)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssEphemMsgarray :md5sum-) "31054b3280a005cf30c1076c7645b85e")
(setf (get gnss_comm::GnssEphemMsgarray :datatype-) "gnss_comm/GnssEphemMsgarray")
(setf (get gnss_comm::GnssEphemMsgarray :definition-)
      "std_msgs/Header header 
GnssEphemMsg[] ephem             # GPS, BDS, Galileo ephemeris of each satellites
GnssGloEphemMsg[] gloephem 
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
MSG: gnss_comm/GnssEphemMsg
# This message contains GPS, Galileo and BeiDou ephemeris data

uint32 sat
GnssTimeMsg ttr
GnssTimeMsg toe
GnssTimeMsg toc
float64 toe_tow
uint32 week
uint32 iode
uint32 iodc
uint32 health
uint32 code
float64 ura
float64 A
float64 e
float64 i0
float64 omg
float64 OMG0
float64 M0
float64 delta_n
float64 OMG_dot
float64 i_dot
float64 cuc
float64 cus
float64 crc
float64 crs
float64 cic
float64 cis
float64 af0
float64 af1
float64 af2
float64 tgd0
float64 tgd1
float64 A_dot
float64 n_dot
================================================================================
MSG: gnss_comm/GnssTimeMsg
# This message contains GNSS time expressed in the form of 
# GNSS week number and time of week(in seconds)

uint32 week
float64 tow
================================================================================
MSG: gnss_comm/GnssGloEphemMsg
# This message contains GLONASS ephemeris data

uint32 sat
GnssTimeMsg ttr
GnssTimeMsg toe
int32  freqo
uint32 iode
uint32 health
uint32 age
float64 ura
float64 pos_x
float64 pos_y
float64 pos_z
float64 vel_x
float64 vel_y
float64 vel_z
float64 acc_x
float64 acc_y
float64 acc_z
float64 tau_n
float64 gamma
float64 delta_tau_n
")



(provide :gnss_comm/GnssEphemMsgarray "31054b3280a005cf30c1076c7645b85e")


