;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssSsrCodeBias)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssSsrCodeBias (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSSSRCODEBIAS")
  (make-package "GNSS_COMM::GNSSSSRCODEBIAS"))

(in-package "ROS")
;;//! \htmlinclude GnssSsrCodeBias.msg.html


(defclass gnss_comm::GnssSsrCodeBias
  :super ros::object
  :slots (_prn _week _tow _iod _udi _isdcb _code _bias ))

(defmethod gnss_comm::GnssSsrCodeBias
  (:init
   (&key
    ((:prn __prn) "")
    ((:week __week) 0)
    ((:tow __tow) 0.0)
    ((:iod __iod) 0)
    ((:udi __udi) 0.0)
    ((:isdcb __isdcb) 0)
    ((:code __code) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:bias __bias) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _prn (string __prn))
   (setq _week (round __week))
   (setq _tow (float __tow))
   (setq _iod (round __iod))
   (setq _udi (float __udi))
   (setq _isdcb (round __isdcb))
   (setq _code __code)
   (setq _bias __bias)
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
  (:isdcb
   (&optional __isdcb)
   (if __isdcb (setq _isdcb __isdcb)) _isdcb)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:bias
   (&optional __bias)
   (if __bias (setq _bias __bias)) _bias)
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
    ;; uint8 _isdcb
    1
    ;; string[] _code
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _code)) 4
    ;; float64[] _bias
    (* 8    (length _bias)) 4
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
     ;; uint8 _isdcb
       (write-byte _isdcb s)
     ;; string[] _code
     (write-long (length _code) s)
     (dolist (elem _code)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _bias
     (write-long (length _bias) s)
     (dotimes (i (length _bias))
       (sys::poke (elt _bias i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; uint8 _isdcb
     (setq _isdcb (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _code
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _code (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _code i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _bias
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bias (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _bias i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssSsrCodeBias :md5sum-) "ce4d49239692f6cf4c5f50ef544acb9f")
(setf (get gnss_comm::GnssSsrCodeBias :datatype-) "gnss_comm/GnssSsrCodeBias")
(setf (get gnss_comm::GnssSsrCodeBias :definition-)
      "string prn        # Satellite PRN number
uint16 week       # GPS week, SSR message
float64 tow       # GPS time of week, SSR message
uint32 iod        # Issue of data, SSR message
float64 udi       # SSR update interval
uint8 isdcb       # If differenced
string[] code     # Code indicators
float64[] bias    # Code biases

")



(provide :gnss_comm/GnssSsrCodeBias "ce4d49239692f6cf4c5f50ef544acb9f")


