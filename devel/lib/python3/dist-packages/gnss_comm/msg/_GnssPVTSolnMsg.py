# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gnss_comm/GnssPVTSolnMsg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import gnss_comm.msg

class GnssPVTSolnMsg(genpy.Message):
  _md5sum = "d18171357d7a159f76d4d7c0b12fb631"
  _type = "gnss_comm/GnssPVTSolnMsg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This message contains information of UBX-NAV-PVT message. 
# reference: [1]. UBX-18010854-R08, page 132

GnssTimeMsg time    # GNSS time of the navigation epoch
# GNSS fix type (0=no fix, 1=dead reckoning only, 2=2D-fix, 3=3D-fix, 
# 4=GNSS+dead reckoning combined, 5=time only fix)
uint8   fix_type
bool    valid_fix   # if fix valid (1=valid fix)
bool    diff_soln   # if differential correction were applied (1=applied)
uint8   carr_soln   # carrier phase range solution status (0=no carrier phase, 1=float, 2=fix)
uint8   num_sv      # number of satellites used in the solution
float64 latitude    # latitude [degree]
float64 longitude   # longitude [degree]
float64 altitude    # height above ellipsoid [m]
float64 height_msl  # height above mean sea level [m]
float64 h_acc       # horizontal accuracy estimate [m]
float64 v_acc       # vertical accuracy estimate [m]
float64 p_dop       # Position DOP
float64 vel_n       # NED north velocity [m/s]
float64 vel_e       # NED east velocity [m/s]
float64 vel_d       # NED down velocity [m/s]
float64 vel_acc     # speed accuracy estimate [m/s]

================================================================================
MSG: gnss_comm/GnssTimeMsg
# This message contains GNSS time expressed in the form of 
# GNSS week number and time of week(in seconds)

uint32 week
float64 tow"""
  __slots__ = ['time','fix_type','valid_fix','diff_soln','carr_soln','num_sv','latitude','longitude','altitude','height_msl','h_acc','v_acc','p_dop','vel_n','vel_e','vel_d','vel_acc']
  _slot_types = ['gnss_comm/GnssTimeMsg','uint8','bool','bool','uint8','uint8','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time,fix_type,valid_fix,diff_soln,carr_soln,num_sv,latitude,longitude,altitude,height_msl,h_acc,v_acc,p_dop,vel_n,vel_e,vel_d,vel_acc

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GnssPVTSolnMsg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.time is None:
        self.time = gnss_comm.msg.GnssTimeMsg()
      if self.fix_type is None:
        self.fix_type = 0
      if self.valid_fix is None:
        self.valid_fix = False
      if self.diff_soln is None:
        self.diff_soln = False
      if self.carr_soln is None:
        self.carr_soln = 0
      if self.num_sv is None:
        self.num_sv = 0
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.altitude is None:
        self.altitude = 0.
      if self.height_msl is None:
        self.height_msl = 0.
      if self.h_acc is None:
        self.h_acc = 0.
      if self.v_acc is None:
        self.v_acc = 0.
      if self.p_dop is None:
        self.p_dop = 0.
      if self.vel_n is None:
        self.vel_n = 0.
      if self.vel_e is None:
        self.vel_e = 0.
      if self.vel_d is None:
        self.vel_d = 0.
      if self.vel_acc is None:
        self.vel_acc = 0.
    else:
      self.time = gnss_comm.msg.GnssTimeMsg()
      self.fix_type = 0
      self.valid_fix = False
      self.diff_soln = False
      self.carr_soln = 0
      self.num_sv = 0
      self.latitude = 0.
      self.longitude = 0.
      self.altitude = 0.
      self.height_msl = 0.
      self.h_acc = 0.
      self.v_acc = 0.
      self.p_dop = 0.
      self.vel_n = 0.
      self.vel_e = 0.
      self.vel_d = 0.
      self.vel_acc = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_Id5B11d().pack(_x.time.week, _x.time.tow, _x.fix_type, _x.valid_fix, _x.diff_soln, _x.carr_soln, _x.num_sv, _x.latitude, _x.longitude, _x.altitude, _x.height_msl, _x.h_acc, _x.v_acc, _x.p_dop, _x.vel_n, _x.vel_e, _x.vel_d, _x.vel_acc))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.time is None:
        self.time = gnss_comm.msg.GnssTimeMsg()
      end = 0
      _x = self
      start = end
      end += 105
      (_x.time.week, _x.time.tow, _x.fix_type, _x.valid_fix, _x.diff_soln, _x.carr_soln, _x.num_sv, _x.latitude, _x.longitude, _x.altitude, _x.height_msl, _x.h_acc, _x.v_acc, _x.p_dop, _x.vel_n, _x.vel_e, _x.vel_d, _x.vel_acc,) = _get_struct_Id5B11d().unpack(str[start:end])
      self.valid_fix = bool(self.valid_fix)
      self.diff_soln = bool(self.diff_soln)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_Id5B11d().pack(_x.time.week, _x.time.tow, _x.fix_type, _x.valid_fix, _x.diff_soln, _x.carr_soln, _x.num_sv, _x.latitude, _x.longitude, _x.altitude, _x.height_msl, _x.h_acc, _x.v_acc, _x.p_dop, _x.vel_n, _x.vel_e, _x.vel_d, _x.vel_acc))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.time is None:
        self.time = gnss_comm.msg.GnssTimeMsg()
      end = 0
      _x = self
      start = end
      end += 105
      (_x.time.week, _x.time.tow, _x.fix_type, _x.valid_fix, _x.diff_soln, _x.carr_soln, _x.num_sv, _x.latitude, _x.longitude, _x.altitude, _x.height_msl, _x.h_acc, _x.v_acc, _x.p_dop, _x.vel_n, _x.vel_e, _x.vel_d, _x.vel_acc,) = _get_struct_Id5B11d().unpack(str[start:end])
      self.valid_fix = bool(self.valid_fix)
      self.diff_soln = bool(self.diff_soln)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_Id5B11d = None
def _get_struct_Id5B11d():
    global _struct_Id5B11d
    if _struct_Id5B11d is None:
        _struct_Id5B11d = struct.Struct("<Id5B11d")
    return _struct_Id5B11d