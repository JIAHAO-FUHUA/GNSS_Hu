;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssObservations)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssObservations (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSOBSERVATIONS")
  (make-package "GNSS_COMM::GNSSOBSERVATIONS"))

(in-package "ROS")
;;//! \htmlinclude GnssObservations.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssObservations
  :super ros::object
  :slots (_header _observations ))

(defmethod gnss_comm::GnssObservations
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:observations __observations) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _observations __observations)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:observations
   (&rest __observations)
   (if (keywordp (car __observations))
       (send* _observations __observations)
     (progn
       (if __observations (setq _observations (car __observations)))
       _observations)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gnss_comm/GnssObservation[] _observations
    (apply #'+ (send-all _observations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gnss_comm/GnssObservation[] _observations
     (write-long (length _observations) s)
     (dolist (elem _observations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gnss_comm/GnssObservation[] _observations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _observations (let (r) (dotimes (i n) (push (instance gnss_comm::GnssObservation :init) r)) r))
     (dolist (elem- _observations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssObservations :md5sum-) "9fa545dbe3bd92fe626968338708f3c5")
(setf (get gnss_comm::GnssObservations :datatype-) "gnss_comm/GnssObservations")
(setf (get gnss_comm::GnssObservations :definition-)
      "std_msgs/Header header
GnssObservation[] observations   # Observations of each satellites
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
MSG: gnss_comm/GnssObservation
string prn        # Satellite PRN number
uint16 week       # GPS week
float64 tow       # GPS time of week
float64[] SNR      # Signal strengths
uint8[] LLI       # Loss of lock indicators
string[] code     # Code indicators
float64[] L       # Carrier phase cycles
float64[] P       # Pseudoranges
float64[] D       # Dopplers

")



(provide :gnss_comm/GnssObservations "9fa545dbe3bd92fe626968338708f3c5")


