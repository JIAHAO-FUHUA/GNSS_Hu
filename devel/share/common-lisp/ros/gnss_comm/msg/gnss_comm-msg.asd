
(cl:in-package :asdf)

(defsystem "gnss_comm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GlonassEphemeris" :depends-on ("_package_GlonassEphemeris"))
    (:file "_package_GlonassEphemeris" :depends-on ("_package"))
    (:file "GnssAntennaPosition" :depends-on ("_package_GnssAntennaPosition"))
    (:file "_package_GnssAntennaPosition" :depends-on ("_package"))
    (:file "GnssBestXYZMsg" :depends-on ("_package_GnssBestXYZMsg"))
    (:file "_package_GnssBestXYZMsg" :depends-on ("_package"))
    (:file "GnssEphemMsg" :depends-on ("_package_GnssEphemMsg"))
    (:file "_package_GnssEphemMsg" :depends-on ("_package"))
    (:file "GnssEphemMsgarray" :depends-on ("_package_GnssEphemMsgarray"))
    (:file "_package_GnssEphemMsgarray" :depends-on ("_package"))
    (:file "GnssEphemerides" :depends-on ("_package_GnssEphemerides"))
    (:file "_package_GnssEphemerides" :depends-on ("_package"))
    (:file "GnssEphemeris" :depends-on ("_package_GnssEphemeris"))
    (:file "_package_GnssEphemeris" :depends-on ("_package"))
    (:file "GnssGloEphemMsg" :depends-on ("_package_GnssGloEphemMsg"))
    (:file "_package_GnssGloEphemMsg" :depends-on ("_package"))
    (:file "GnssIonosphereParameter" :depends-on ("_package_GnssIonosphereParameter"))
    (:file "_package_GnssIonosphereParameter" :depends-on ("_package"))
    (:file "GnssMeasMsg" :depends-on ("_package_GnssMeasMsg"))
    (:file "_package_GnssMeasMsg" :depends-on ("_package"))
    (:file "GnssObsMsg" :depends-on ("_package_GnssObsMsg"))
    (:file "_package_GnssObsMsg" :depends-on ("_package"))
    (:file "GnssObservation" :depends-on ("_package_GnssObservation"))
    (:file "_package_GnssObservation" :depends-on ("_package"))
    (:file "GnssObservations" :depends-on ("_package_GnssObservations"))
    (:file "_package_GnssObservations" :depends-on ("_package"))
    (:file "GnssPVTSolnMsg" :depends-on ("_package_GnssPVTSolnMsg"))
    (:file "_package_GnssPVTSolnMsg" :depends-on ("_package"))
    (:file "GnssSsrCodeBias" :depends-on ("_package_GnssSsrCodeBias"))
    (:file "_package_GnssSsrCodeBias" :depends-on ("_package"))
    (:file "GnssSsrCodeBiases" :depends-on ("_package_GnssSsrCodeBiases"))
    (:file "_package_GnssSsrCodeBiases" :depends-on ("_package"))
    (:file "GnssSsrEphemerides" :depends-on ("_package_GnssSsrEphemerides"))
    (:file "_package_GnssSsrEphemerides" :depends-on ("_package"))
    (:file "GnssSsrEphemeris" :depends-on ("_package_GnssSsrEphemeris"))
    (:file "_package_GnssSsrEphemeris" :depends-on ("_package"))
    (:file "GnssSsrPhaseBias" :depends-on ("_package_GnssSsrPhaseBias"))
    (:file "_package_GnssSsrPhaseBias" :depends-on ("_package"))
    (:file "GnssSsrPhaseBiases" :depends-on ("_package_GnssSsrPhaseBiases"))
    (:file "_package_GnssSsrPhaseBiases" :depends-on ("_package"))
    (:file "GnssSvsMsg" :depends-on ("_package_GnssSvsMsg"))
    (:file "_package_GnssSvsMsg" :depends-on ("_package"))
    (:file "GnssTimeMsg" :depends-on ("_package_GnssTimeMsg"))
    (:file "_package_GnssTimeMsg" :depends-on ("_package"))
    (:file "GnssTimePulseInfoMsg" :depends-on ("_package_GnssTimePulseInfoMsg"))
    (:file "_package_GnssTimePulseInfoMsg" :depends-on ("_package"))
    (:file "StampedFloat64Array" :depends-on ("_package_StampedFloat64Array"))
    (:file "_package_StampedFloat64Array" :depends-on ("_package"))
  ))