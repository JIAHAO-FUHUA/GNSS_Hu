;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssEphemeris)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssEphemeris (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSEPHEMERIS")
  (make-package "GNSS_COMM::GNSSEPHEMERIS"))

(in-package "ROS")
;;//! \htmlinclude GnssEphemeris.msg.html


(defclass gnss_comm::GnssEphemeris
  :super ros::object
  :slots (_prn _week _sva _code _iode _iodc _svh _toc _idot _crs _deln _M0 _cuc _e _cus _A _toes _cic _OMG0 _cis _i0 _crc _omg _OMGd _tgd _f2 _f1 _f0 ))

(defmethod gnss_comm::GnssEphemeris
  (:init
   (&key
    ((:prn __prn) "")
    ((:week __week) 0)
    ((:sva __sva) 0)
    ((:code __code) 0)
    ((:iode __iode) 0)
    ((:iodc __iodc) 0)
    ((:svh __svh) 0)
    ((:toc __toc) 0.0)
    ((:idot __idot) 0.0)
    ((:crs __crs) 0.0)
    ((:deln __deln) 0.0)
    ((:M0 __M0) 0.0)
    ((:cuc __cuc) 0.0)
    ((:e __e) 0.0)
    ((:cus __cus) 0.0)
    ((:A __A) 0.0)
    ((:toes __toes) 0.0)
    ((:cic __cic) 0.0)
    ((:OMG0 __OMG0) 0.0)
    ((:cis __cis) 0.0)
    ((:i0 __i0) 0.0)
    ((:crc __crc) 0.0)
    ((:omg __omg) 0.0)
    ((:OMGd __OMGd) 0.0)
    ((:tgd __tgd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:f2 __f2) 0.0)
    ((:f1 __f1) 0.0)
    ((:f0 __f0) 0.0)
    )
   (send-super :init)
   (setq _prn (string __prn))
   (setq _week (round __week))
   (setq _sva (round __sva))
   (setq _code (round __code))
   (setq _iode (round __iode))
   (setq _iodc (round __iodc))
   (setq _svh (round __svh))
   (setq _toc (float __toc))
   (setq _idot (float __idot))
   (setq _crs (float __crs))
   (setq _deln (float __deln))
   (setq _M0 (float __M0))
   (setq _cuc (float __cuc))
   (setq _e (float __e))
   (setq _cus (float __cus))
   (setq _A (float __A))
   (setq _toes (float __toes))
   (setq _cic (float __cic))
   (setq _OMG0 (float __OMG0))
   (setq _cis (float __cis))
   (setq _i0 (float __i0))
   (setq _crc (float __crc))
   (setq _omg (float __omg))
   (setq _OMGd (float __OMGd))
   (setq _tgd __tgd)
   (setq _f2 (float __f2))
   (setq _f1 (float __f1))
   (setq _f0 (float __f0))
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:sva
   (&optional __sva)
   (if __sva (setq _sva __sva)) _sva)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:iode
   (&optional __iode)
   (if __iode (setq _iode __iode)) _iode)
  (:iodc
   (&optional __iodc)
   (if __iodc (setq _iodc __iodc)) _iodc)
  (:svh
   (&optional __svh)
   (if __svh (setq _svh __svh)) _svh)
  (:toc
   (&optional __toc)
   (if __toc (setq _toc __toc)) _toc)
  (:idot
   (&optional __idot)
   (if __idot (setq _idot __idot)) _idot)
  (:crs
   (&optional __crs)
   (if __crs (setq _crs __crs)) _crs)
  (:deln
   (&optional __deln)
   (if __deln (setq _deln __deln)) _deln)
  (:M0
   (&optional __M0)
   (if __M0 (setq _M0 __M0)) _M0)
  (:cuc
   (&optional __cuc)
   (if __cuc (setq _cuc __cuc)) _cuc)
  (:e
   (&optional __e)
   (if __e (setq _e __e)) _e)
  (:cus
   (&optional __cus)
   (if __cus (setq _cus __cus)) _cus)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:toes
   (&optional __toes)
   (if __toes (setq _toes __toes)) _toes)
  (:cic
   (&optional __cic)
   (if __cic (setq _cic __cic)) _cic)
  (:OMG0
   (&optional __OMG0)
   (if __OMG0 (setq _OMG0 __OMG0)) _OMG0)
  (:cis
   (&optional __cis)
   (if __cis (setq _cis __cis)) _cis)
  (:i0
   (&optional __i0)
   (if __i0 (setq _i0 __i0)) _i0)
  (:crc
   (&optional __crc)
   (if __crc (setq _crc __crc)) _crc)
  (:omg
   (&optional __omg)
   (if __omg (setq _omg __omg)) _omg)
  (:OMGd
   (&optional __OMGd)
   (if __OMGd (setq _OMGd __OMGd)) _OMGd)
  (:tgd
   (&optional __tgd)
   (if __tgd (setq _tgd __tgd)) _tgd)
  (:f2
   (&optional __f2)
   (if __f2 (setq _f2 __f2)) _f2)
  (:f1
   (&optional __f1)
   (if __f1 (setq _f1 __f1)) _f1)
  (:f0
   (&optional __f0)
   (if __f0 (setq _f0 __f0)) _f0)
  (:serialization-length
   ()
   (+
    ;; string _prn
    4 (length _prn)
    ;; uint16 _week
    2
    ;; uint8 _sva
    1
    ;; uint16 _code
    2
    ;; uint8 _iode
    1
    ;; uint16 _iodc
    2
    ;; uint8 _svh
    1
    ;; float64 _toc
    8
    ;; float64 _idot
    8
    ;; float64 _crs
    8
    ;; float64 _deln
    8
    ;; float64 _M0
    8
    ;; float64 _cuc
    8
    ;; float64 _e
    8
    ;; float64 _cus
    8
    ;; float64 _A
    8
    ;; float64 _toes
    8
    ;; float64 _cic
    8
    ;; float64 _OMG0
    8
    ;; float64 _cis
    8
    ;; float64 _i0
    8
    ;; float64 _crc
    8
    ;; float64 _omg
    8
    ;; float64 _OMGd
    8
    ;; float64[] _tgd
    (* 8    (length _tgd)) 4
    ;; float64 _f2
    8
    ;; float64 _f1
    8
    ;; float64 _f0
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
     ;; uint8 _sva
       (write-byte _sva s)
     ;; uint16 _code
       (write-word _code s)
     ;; uint8 _iode
       (write-byte _iode s)
     ;; uint16 _iodc
       (write-word _iodc s)
     ;; uint8 _svh
       (write-byte _svh s)
     ;; float64 _toc
       (sys::poke _toc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _idot
       (sys::poke _idot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _crs
       (sys::poke _crs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _deln
       (sys::poke _deln (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _M0
       (sys::poke _M0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cuc
       (sys::poke _cuc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _e
       (sys::poke _e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cus
       (sys::poke _cus (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _A
       (sys::poke _A (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _toes
       (sys::poke _toes (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cic
       (sys::poke _cic (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _OMG0
       (sys::poke _OMG0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cis
       (sys::poke _cis (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _i0
       (sys::poke _i0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _crc
       (sys::poke _crc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omg
       (sys::poke _omg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _OMGd
       (sys::poke _OMGd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _tgd
     (write-long (length _tgd) s)
     (dotimes (i (length _tgd))
       (sys::poke (elt _tgd i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _f2
       (sys::poke _f2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f1
       (sys::poke _f1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f0
       (sys::poke _f0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _prn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _week
     (setq _week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _sva
     (setq _sva (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _code
     (setq _code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _iode
     (setq _iode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _iodc
     (setq _iodc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _svh
     (setq _svh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _toc
     (setq _toc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _idot
     (setq _idot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _crs
     (setq _crs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _deln
     (setq _deln (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _M0
     (setq _M0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cuc
     (setq _cuc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _e
     (setq _e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cus
     (setq _cus (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _A
     (setq _A (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _toes
     (setq _toes (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cic
     (setq _cic (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _OMG0
     (setq _OMG0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cis
     (setq _cis (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _i0
     (setq _i0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _crc
     (setq _crc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omg
     (setq _omg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _OMGd
     (setq _OMGd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _tgd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tgd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tgd i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _f2
     (setq _f2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f1
     (setq _f1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f0
     (setq _f0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_comm::GnssEphemeris :md5sum-) "f182a49b5f433f32cb565ad1e7c4c34a")
(setf (get gnss_comm::GnssEphemeris :datatype-) "gnss_comm/GnssEphemeris")
(setf (get gnss_comm::GnssEphemeris :definition-)
      "string prn        # Satellite PRN number
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
")



(provide :gnss_comm/GnssEphemeris "f182a49b5f433f32cb565ad1e7c4c34a")


