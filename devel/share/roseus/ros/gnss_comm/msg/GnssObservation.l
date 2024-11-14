;; Auto-generated. Do not edit!


(when (boundp 'gnss_comm::GnssObservation)
  (if (not (find-package "GNSS_COMM"))
    (make-package "GNSS_COMM"))
  (shadow 'GnssObservation (find-package "GNSS_COMM")))
(unless (find-package "GNSS_COMM::GNSSOBSERVATION")
  (make-package "GNSS_COMM::GNSSOBSERVATION"))

(in-package "ROS")
;;//! \htmlinclude GnssObservation.msg.html


(defclass gnss_comm::GnssObservation
  :super ros::object
  :slots (_prn _week _tow _SNR _LLI _code _L _P _D ))

(defmethod gnss_comm::GnssObservation
  (:init
   (&key
    ((:prn __prn) "")
    ((:week __week) 0)
    ((:tow __tow) 0.0)
    ((:SNR __SNR) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:LLI __LLI) (make-array 0 :initial-element 0 :element-type :char))
    ((:code __code) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:L __L) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:P __P) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:D __D) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _prn (string __prn))
   (setq _week (round __week))
   (setq _tow (float __tow))
   (setq _SNR __SNR)
   (setq _LLI __LLI)
   (setq _code __code)
   (setq _L __L)
   (setq _P __P)
   (setq _D __D)
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
  (:SNR
   (&optional __SNR)
   (if __SNR (setq _SNR __SNR)) _SNR)
  (:LLI
   (&optional __LLI)
   (if __LLI (setq _LLI __LLI)) _LLI)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:L
   (&optional __L)
   (if __L (setq _L __L)) _L)
  (:P
   (&optional __P)
   (if __P (setq _P __P)) _P)
  (:D
   (&optional __D)
   (if __D (setq _D __D)) _D)
  (:serialization-length
   ()
   (+
    ;; string _prn
    4 (length _prn)
    ;; uint16 _week
    2
    ;; float64 _tow
    8
    ;; float64[] _SNR
    (* 8    (length _SNR)) 4
    ;; uint8[] _LLI
    (* 1    (length _LLI)) 4
    ;; string[] _code
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _code)) 4
    ;; float64[] _L
    (* 8    (length _L)) 4
    ;; float64[] _P
    (* 8    (length _P)) 4
    ;; float64[] _D
    (* 8    (length _D)) 4
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
     ;; float64[] _SNR
     (write-long (length _SNR) s)
     (dotimes (i (length _SNR))
       (sys::poke (elt _SNR i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8[] _LLI
     (write-long (length _LLI) s)
     (princ _LLI s)
     ;; string[] _code
     (write-long (length _code) s)
     (dolist (elem _code)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _L
     (write-long (length _L) s)
     (dotimes (i (length _L))
       (sys::poke (elt _L i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _P
     (write-long (length _P) s)
     (dotimes (i (length _P))
       (sys::poke (elt _P i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _D
     (write-long (length _D) s)
     (dotimes (i (length _D))
       (sys::poke (elt _D i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _SNR
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _SNR (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _SNR i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; uint8[] _LLI
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _LLI (make-array n :element-type :char))
     (replace _LLI buf :start2 ptr-) (incf ptr- n))
   ;; string[] _code
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _code (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _code i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _L
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _L (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _L i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _P
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _P (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _P i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _D
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _D (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _D i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get gnss_comm::GnssObservation :md5sum-) "1046d106d7c9fd0ab168f0ec9fdcf788")
(setf (get gnss_comm::GnssObservation :datatype-) "gnss_comm/GnssObservation")
(setf (get gnss_comm::GnssObservation :definition-)
      "string prn        # Satellite PRN number
uint16 week       # GPS week
float64 tow       # GPS time of week
float64[] SNR      # Signal strengths
uint8[] LLI       # Loss of lock indicators
string[] code     # Code indicators
float64[] L       # Carrier phase cycles
float64[] P       # Pseudoranges
float64[] D       # Dopplers

")



(provide :gnss_comm/GnssObservation "1046d106d7c9fd0ab168f0ec9fdcf788")


