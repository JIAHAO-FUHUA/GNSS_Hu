;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssSsrEphemeris)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssSsrEphemeris (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSSSREPHEMERIS")
  (make-package "GNSS_COMM::GNSSSSREPHEMERIS"))

(in-package "ROS")
;;//! \htmlinclude GnssSsrEphemeris.msg.html


(defclass gnss_comm::GnssSsrEphemeris
  :super ros::object
  :slots (_prn _week _tow _iod _udi _iode _iodcrc _refd _deph _ddeph _dclk ))

(defmethod gnss_comm::GnssSsrEphemeris
  (:init
   (&key
    ((:prn __prn) "")
    ((:week __week) 0)
    ((:tow __tow) 0.0)
    ((:iod __iod) 0)
    ((:udi __udi) 0.0)
    ((:iode __iode) 0)
    ((:iodcrc __iodcrc) 0)
    ((:refd __refd) 0)
    ((:deph __deph) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ddeph __ddeph) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dclk __dclk) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _prn (string __prn))
   (setq _week (round __week))
   (setq _tow (float __tow))
   (setq _iod (round __iod))
   (setq _udi (float __udi))
   (setq _iode (round __iode))
   (setq _iodcrc (round __iodcrc))
   (setq _refd (round __refd))
   (setq _deph __deph)
   (setq _ddeph __ddeph)
   (setq _dclk __dclk)
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:iod
   (&optional __iod)
   (if __iod (setq _iod __iod)) _iod)
  (:udi
   (&optional __udi)
   (if __udi (setq _udi __udi)) _udi)
  (:iode
   (&optional __iode)
   (if __iode (setq _iode __iode)) _iode)
  (:iodcrc
   (&optional __iodcrc)
   (if __iodcrc (setq _iodcrc __iodcrc)) _iodcrc)
  (:refd
   (&optional __refd)
   (if __refd (setq _refd __refd)) _refd)
  (:deph
   (&optional __deph)
   (if __deph (setq _deph __deph)) _deph)
  (:ddeph
   (&optional __ddeph)
   (if __ddeph (setq _ddeph __ddeph)) _ddeph)
  (:dclk
   (&optional __dclk)
   (if __dclk (setq _dclk __dclk)) _dclk)
  (:serialization-length
   ()
   (+
    ;; string _prn
    4 (length _prn)
    ;; uint16 _week
    2
    ;; float64 _tow
    8
    ;; uint32 _iod
    4
    ;; float64 _udi
    8
    ;; uint8 _iode
    1
    ;; uint32 _iodcrc
    4
    ;; uint8 _refd
    1
    ;; float64[] _deph
    (* 8    (length _deph)) 4
    ;; float64[] _ddeph
    (* 8    (length _ddeph)) 4
    ;; float64[] _dclk
    (* 8    (length _dclk)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _prn
       (write-long (length _prn) s) (princ _prn s)
     ;; uint16 _week
       (write-word _week s)
     ;; float64 _tow
       (sys::poke _tow (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _iod
       (write-long _iod s)
     ;; float64 _udi
       (sys::poke _udi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _iode
       (write-byte _iode s)
     ;; uint32 _iodcrc
       (write-long _iodcrc s)
     ;; uint8 _refd
       (write-byte _refd s)
     ;; float64[] _deph
     (write-long (length _deph) s)
     (dotimes (i (length _deph))
       (sys::poke (elt _deph i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _ddeph
     (write-long (length _ddeph) s)
     (dotimes (i (length _ddeph))
       (sys::poke (elt _ddeph i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dclk
     (write-long (length _dclk) s)
     (dotimes (i (length _dclk))
       (sys::poke (elt _dclk i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _prn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _tow
     (setq _tow (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _iod
     (setq _iod (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _udi
     (setq _udi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _iode
     (setq _iode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _iodcrc
     (setq _iodcrc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _refd
     (setq _refd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _deph
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _deph (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _deph i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _ddeph
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ddeph (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ddeph i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dclk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dclk (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dclk i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssSsrEphemeris :md5sum-) "90ff7dc20ab8b7d1ed3917babacbe669")
(setf (get gnss_comm::GnssSsrEphemeris :datatype-) "gnss_comm/GnssSsrEphemeris")
(setf (get gnss_comm::GnssSsrEphemeris :definition-)
      "string prn        # Satellite PRN number
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



(provide :gnss_comm/GnssSsrEphemeris "90ff7dc20ab8b7d1ed3917babacbe669")


