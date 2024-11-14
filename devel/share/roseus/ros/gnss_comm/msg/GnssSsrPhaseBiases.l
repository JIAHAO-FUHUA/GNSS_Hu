;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssSsrPhaseBiases)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssSsrPhaseBiases (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSSSRPHASEBIASES")
  (make-package "GNSS_COMM::GNSSSSRPHASEBIASES"))

(in-package "ROS")
;;//! \htmlinclude GnssSsrPhaseBiases.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssSsrPhaseBiases
  :super ros::object
  :slots (_header _biases ))

(defmethod gnss_comm::GnssSsrPhaseBiases
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:biases __biases) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _biases __biases)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:biases
   (&rest __biases)
   (if (keywordp (car __biases))
       (send* _biases __biases)
     (progn
       (if __biases (setq _biases (car __biases)))
       _biases)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gnss_comm/GnssSsrPhaseBias[] _biases
    (apply #'+ (send-all _biases :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gnss_comm/GnssSsrPhaseBias[] _biases
     (write-long (length _biases) s)
     (dolist (elem _biases)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gnss_comm/GnssSsrPhaseBias[] _biases
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _biases (let (r) (dotimes (i n) (push (instance gnss_comm::GnssSsrPhaseBias :init) r)) r))
     (dolist (elem- _biases)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssSsrPhaseBiases :md5sum-) "6159b3ab70f3feffd59baf141fb2772d")
(setf (get gnss_comm::GnssSsrPhaseBiases :datatype-) "gnss_comm/GnssSsrPhaseBiases")
(setf (get gnss_comm::GnssSsrPhaseBiases :definition-)
      "std_msgs/Header header 
GnssSsrPhaseBias[] biases  # SSR phase biases
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
MSG: gnss_comm/GnssSsrPhaseBias
string prn        # Satellite PRN number
uint16 week       # GPS week, SSR message
float64 tow       # GPS time of week, SSR message
uint32 iod        # Issue of data, SSR message
uint8 isdpb       # If differenced
float64 udi       # SSR update interval
string[] phase    # Phase indicators
float64[] bias    # Phase biases

")



(provide :gnss_comm/GnssSsrPhaseBiases "6159b3ab70f3feffd59baf141fb2772d")


