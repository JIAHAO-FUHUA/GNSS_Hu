;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssSsrCodeBiases)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssSsrCodeBiases (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSSSRCODEBIASES")
  (make-package "GNSS_COMM::GNSSSSRCODEBIASES"))

(in-package "ROS")
;;//! \htmlinclude GnssSsrCodeBiases.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssSsrCodeBiases
  :super ros::object
  :slots (_header _biases ))

(defmethod gnss_comm::GnssSsrCodeBiases
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
    ;; gnss_comm/GnssSsrCodeBias[] _biases
    (apply #'+ (send-all _biases :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gnss_comm/GnssSsrCodeBias[] _biases
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
   ;; gnss_comm/GnssSsrCodeBias[] _biases
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _biases (let (r) (dotimes (i n) (push (instance gnss_comm::GnssSsrCodeBias :init) r)) r))
     (dolist (elem- _biases)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssSsrCodeBiases :md5sum-) "05586c0a1dbc34d82fa205883493e7e2")
(setf (get gnss_comm::GnssSsrCodeBiases :datatype-) "gnss_comm/GnssSsrCodeBiases")
(setf (get gnss_comm::GnssSsrCodeBiases :definition-)
      "std_msgs/Header header 
GnssSsrCodeBias[] biases  # SSR code biases
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
MSG: gnss_comm/GnssSsrCodeBias
string prn        # Satellite PRN number
uint16 week       # GPS week, SSR message
float64 tow       # GPS time of week, SSR message
uint32 iod        # Issue of data, SSR message
float64 udi       # SSR update interval
uint8 isdcb       # If differenced
string[] code     # Code indicators
float64[] bias    # Code biases

")



(provide :gnss_comm/GnssSsrCodeBiases "05586c0a1dbc34d82fa205883493e7e2")


