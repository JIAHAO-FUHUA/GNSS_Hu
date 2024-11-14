# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gnss_comm/GnssSsrPhaseBias.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GnssSsrPhaseBias(genpy.Message):
  _md5sum = "a4471b1f6aefc4665ad839c60a640213"
  _type = "gnss_comm/GnssSsrPhaseBias"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string prn        # Satellite PRN number
uint16 week       # GPS week, SSR message
float64 tow       # GPS time of week, SSR message
uint32 iod        # Issue of data, SSR message
uint8 isdpb       # If differenced
float64 udi       # SSR update interval
string[] phase    # Phase indicators
float64[] bias    # Phase biases
"""
  __slots__ = ['prn','week','tow','iod','isdpb','udi','phase','bias']
  _slot_types = ['string','uint16','float64','uint32','uint8','float64','string[]','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       prn,week,tow,iod,isdpb,udi,phase,bias

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GnssSsrPhaseBias, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.prn is None:
        self.prn = ''
      if self.week is None:
        self.week = 0
      if self.tow is None:
        self.tow = 0.
      if self.iod is None:
        self.iod = 0
      if self.isdpb is None:
        self.isdpb = 0
      if self.udi is None:
        self.udi = 0.
      if self.phase is None:
        self.phase = []
      if self.bias is None:
        self.bias = []
    else:
      self.prn = ''
      self.week = 0
      self.tow = 0.
      self.iod = 0
      self.isdpb = 0
      self.udi = 0.
      self.phase = []
      self.bias = []

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
      _x = self.prn
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_HdIBd().pack(_x.week, _x.tow, _x.iod, _x.isdpb, _x.udi))
      length = len(self.phase)
      buff.write(_struct_I.pack(length))
      for val1 in self.phase:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.bias)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.bias))
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.prn = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.prn = str[start:end]
      _x = self
      start = end
      end += 23
      (_x.week, _x.tow, _x.iod, _x.isdpb, _x.udi,) = _get_struct_HdIBd().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.phase = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.phase.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.bias = s.unpack(str[start:end])
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
      _x = self.prn
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_HdIBd().pack(_x.week, _x.tow, _x.iod, _x.isdpb, _x.udi))
      length = len(self.phase)
      buff.write(_struct_I.pack(length))
      for val1 in self.phase:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.bias)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.bias.tostring())
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
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.prn = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.prn = str[start:end]
      _x = self
      start = end
      end += 23
      (_x.week, _x.tow, _x.iod, _x.isdpb, _x.udi,) = _get_struct_HdIBd().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.phase = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.phase.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.bias = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_HdIBd = None
def _get_struct_HdIBd():
    global _struct_HdIBd
    if _struct_HdIBd is None:
        _struct_HdIBd = struct.Struct("<HdIBd")
    return _struct_HdIBd
