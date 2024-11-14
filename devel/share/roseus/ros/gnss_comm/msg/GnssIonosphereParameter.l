;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssIonosphereParameter)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssIonosphereParameter (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSIONOSPHEREPARAMETER")
  (make-package "GNSS_COMM::GNSSIONOSPHEREPARAMETER"))

(in-package "ROS")
;;//! \htmlinclude GnssIonosphereParameter.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_comm::GnssIonosphereParameter
  :super ros::object
  :slots (_header _type _parameters ))

(defmethod gnss_comm::GnssIonosphereParameter
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:parameters __parameters) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _parameters __parameters)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:parameters
   (&optional __parameters)
   (if __parameters (setq _parameters __parameters)) _parameters)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _type
    1
    ;; float64[] _parameters
    (* 8    (length _parameters)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _type
       (write-byte _type s)
     ;; float64[] _parameters
     (write-long (length _parameters) s)
     (dotimes (i (length _parameters))
       (sys::poke (elt _parameters i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parameters (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _parameters i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssIonosphereParameter :md5sum-) "4f00c6b15e1d361b167a522576838278")
(setf (get gnss_comm::GnssIonosphereParameter :datatype-) "gnss_comm/GnssIonosphereParameter")
(setf (get gnss_comm::GnssIonosphereParameter :definition-)
      "std_msgs/Header header 
uint8 type            # Parameter type (0:GPS,1:BDS,2:Galileo)
float64[] parameters  # Parameters
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

")



(provide :gnss_comm/GnssIonosphereParameter "4f00c6b15e1d361b167a522576838278")


