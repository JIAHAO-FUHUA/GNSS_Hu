;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssSsrPhaseBias)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssSsrPhaseBias (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSSSRPHASEBIAS")
  (make-package "GNSS_COMM::GNSSSSRPHASEBIAS"))

(in-package "ROS")
;;//! \htmlinclude GnssSsrPhaseBias.msg.html


(defclass gnss_comm::GnssSsrPhaseBias
  :super ros::object
  :slots (_prn _week _tow _iod _isdpb _udi _phase _bias ))

(defmethod gnss_comm::GnssSsrPhaseBias
  (:init
   (&key
    ((:prn __prn) "")
    ((:week __week) 0)
    ((:tow __tow) 0.0)
    ((:iod __iod) 0)
    ((:isdpb __isdpb) 0)
    ((:udi __udi) 0.0)
    ((:phase __phase) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:bias __bias) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _prn (string __prn))
   (setq _week (round __week))
   (setq _tow (float __tow))
   (setq _iod (round __iod))
   (setq _isdpb (round __isdpb))
   (setq _udi (float __udi))
   (setq _phase __phase)
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
  (:isdpb
   (&optional __isdpb)
   (if __isdpb (setq _isdpb __isdpb)) _isdpb)
  (:udi
   (&optional __udi)
   (if __udi (setq _udi __udi)) _udi)
  (:phase
   (&optional __phase)
   (if __phase (setq _phase __phase)) _phase)
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
    ;; uint8 _isdpb
    1
    ;; float64 _udi
    8
    ;; string[] _phase
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _phase)) 4
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
     ;; uint8 _isdpb
       (write-byte _isdpb s)
     ;; float64 _udi
       (sys::poke _udi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string[] _phase
     (write-long (length _phase) s)
     (dolist (elem _phase)
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
   ;; uint8 _isdpb
     (setq _isdpb (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _udi
     (setq _udi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string[] _phase
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _phase (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _phase i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get gnss_comm::GnssSsrPhaseBias :md5sum-) "a4471b1f6aefc4665ad839c60a640213")
(setf (get gnss_comm::GnssSsrPhaseBias :datatype-) "gnss_comm/GnssSsrPhaseBias")
(setf (get gnss_comm::GnssSsrPhaseBias :definition-)
      "string prn        # Satellite PRN number
uint16 week       # GPS week, SSR message
float64 tow       # GPS time of week, SSR message
uint32 iod        # Issue of data, SSR message
uint8 isdpb       # If differenced
float64 udi       # SSR update interval
string[] phase    # Phase indicators
float64[] bias    # Phase biases

")



(provide :gnss_comm/GnssSsrPhaseBias "a4471b1f6aefc4665ad839c60a640213")


