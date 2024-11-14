;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GlonassEphemeris)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GlonassEphemeris (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GLONASSEPHEMERIS")
  (make-package "GNSS_COMM::GLONASSEPHEMERIS"))

(in-package "ROS")
;;//! \htmlinclude GlonassEphemeris.msg.html


(defclass gnss_comm::GlonassEphemeris
  :super ros::object
  :slots (_prn _week _frq _iode _svh _age _toe _tof _pos _vel _acc _taun _gamn _dtaun ))

(defmethod gnss_comm::GlonassEphemeris
  (:init
   (&key
    ((:prn __prn) "")
    ((:week __week) 0)
    ((:frq __frq) 0)
    ((:iode __iode) 0)
    ((:svh __svh) 0)
    ((:age __age) 0)
    ((:toe __toe) 0.0)
    ((:tof __tof) 0.0)
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vel __vel) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acc __acc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:taun __taun) 0.0)
    ((:gamn __gamn) 0.0)
    ((:dtaun __dtaun) 0.0)
    )
   (send-super :init)
   (setq _prn (string __prn))
   (setq _week (round __week))
   (setq _frq (round __frq))
   (setq _iode (round __iode))
   (setq _svh (round __svh))
   (setq _age (round __age))
   (setq _toe (float __toe))
   (setq _tof (float __tof))
   (setq _pos __pos)
   (setq _vel __vel)
   (setq _acc __acc)
   (setq _taun (float __taun))
   (setq _gamn (float __gamn))
   (setq _dtaun (float __dtaun))
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:frq
   (&optional __frq)
   (if __frq (setq _frq __frq)) _frq)
  (:iode
   (&optional __iode)
   (if __iode (setq _iode __iode)) _iode)
  (:svh
   (&optional __svh)
   (if __svh (setq _svh __svh)) _svh)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:toe
   (&optional __toe)
   (if __toe (setq _toe __toe)) _toe)
  (:tof
   (&optional __tof)
   (if __tof (setq _tof __tof)) _tof)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:taun
   (&optional __taun)
   (if __taun (setq _taun __taun)) _taun)
  (:gamn
   (&optional __gamn)
   (if __gamn (setq _gamn __gamn)) _gamn)
  (:dtaun
   (&optional __dtaun)
   (if __dtaun (setq _dtaun __dtaun)) _dtaun)
  (:serialization-length
   ()
   (+
    ;; string _prn
    4 (length _prn)
    ;; uint16 _week
    2
    ;; int8 _frq
    1
    ;; uint8 _iode
    1
    ;; uint8 _svh
    1
    ;; uint8 _age
    1
    ;; float64 _toe
    8
    ;; float64 _tof
    8
    ;; float64[] _pos
    (* 8    (length _pos)) 4
    ;; float64[] _vel
    (* 8    (length _vel)) 4
    ;; float64[] _acc
    (* 8    (length _acc)) 4
    ;; float64 _taun
    8
    ;; float64 _gamn
    8
    ;; float64 _dtaun
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _prn
       (write-long (length _prn) s) (princ _prn s)
     ;; uint16 _week
       (write-word _week s)
     ;; int8 _frq
       (write-byte _frq s)
     ;; uint8 _iode
       (write-byte _iode s)
     ;; uint8 _svh
       (write-byte _svh s)
     ;; uint8 _age
       (write-byte _age s)
     ;; float64 _toe
       (sys::poke _toe (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tof
       (sys::poke _tof (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _vel
     (write-long (length _vel) s)
     (dotimes (i (length _vel))
       (sys::poke (elt _vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _acc
     (write-long (length _acc) s)
     (dotimes (i (length _acc))
       (sys::poke (elt _acc i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _taun
       (sys::poke _taun (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gamn
       (sys::poke _gamn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dtaun
       (sys::poke _dtaun (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _prn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _frq
     (setq _frq (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _frq 127) (setq _frq (- _frq 256)))
   ;; uint8 _iode
     (setq _iode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _svh
     (setq _svh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _toe
     (setq _toe (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tof
     (setq _tof (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _vel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _acc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acc i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _taun
     (setq _taun (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gamn
     (setq _gamn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dtaun
     (setq _dtaun (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_comm::GlonassEphemeris :md5sum-) "f9f92a33d8424e6a6e4db533429ffaef")
(setf (get gnss_comm::GlonassEphemeris :datatype-) "gnss_comm/GlonassEphemeris")
(setf (get gnss_comm::GlonassEphemeris :definition-)
      "string prn        # Satellite PRN number
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



(provide :gnss_comm/GlonassEphemeris "f9f92a33d8424e6a6e4db533429ffaef")


