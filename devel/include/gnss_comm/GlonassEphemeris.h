// Generated by gencpp from file gnss_comm/GlonassEphemeris.msg
// DO NOT EDIT!


#ifndef GNSS_COMM_MESSAGE_GLONASSEPHEMERIS_H
#define GNSS_COMM_MESSAGE_GLONASSEPHEMERIS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gnss_comm
{
template <class ContainerAllocator>
struct GlonassEphemeris_
{
  typedef GlonassEphemeris_<ContainerAllocator> Type;

  GlonassEphemeris_()
    : prn()
    , week(0)
    , frq(0)
    , iode(0)
    , svh(0)
    , age(0)
    , toe(0.0)
    , tof(0.0)
    , pos()
    , vel()
    , acc()
    , taun(0.0)
    , gamn(0.0)
    , dtaun(0.0)  {
    }
  GlonassEphemeris_(const ContainerAllocator& _alloc)
    : prn(_alloc)
    , week(0)
    , frq(0)
    , iode(0)
    , svh(0)
    , age(0)
    , toe(0.0)
    , tof(0.0)
    , pos(_alloc)
    , vel(_alloc)
    , acc(_alloc)
    , taun(0.0)
    , gamn(0.0)
    , dtaun(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _prn_type;
  _prn_type prn;

   typedef uint16_t _week_type;
  _week_type week;

   typedef int8_t _frq_type;
  _frq_type frq;

   typedef uint8_t _iode_type;
  _iode_type iode;

   typedef uint8_t _svh_type;
  _svh_type svh;

   typedef uint8_t _age_type;
  _age_type age;

   typedef double _toe_type;
  _toe_type toe;

   typedef double _tof_type;
  _tof_type tof;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _pos_type;
  _pos_type pos;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _vel_type;
  _vel_type vel;

   typedef std::vector<double, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<double>> _acc_type;
  _acc_type acc;

   typedef double _taun_type;
  _taun_type taun;

   typedef double _gamn_type;
  _gamn_type gamn;

   typedef double _dtaun_type;
  _dtaun_type dtaun;





  typedef boost::shared_ptr< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> const> ConstPtr;

}; // struct GlonassEphemeris_

typedef ::gnss_comm::GlonassEphemeris_<std::allocator<void> > GlonassEphemeris;

typedef boost::shared_ptr< ::gnss_comm::GlonassEphemeris > GlonassEphemerisPtr;
typedef boost::shared_ptr< ::gnss_comm::GlonassEphemeris const> GlonassEphemerisConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_comm::GlonassEphemeris_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gnss_comm::GlonassEphemeris_<ContainerAllocator1> & lhs, const ::gnss_comm::GlonassEphemeris_<ContainerAllocator2> & rhs)
{
  return lhs.prn == rhs.prn &&
    lhs.week == rhs.week &&
    lhs.frq == rhs.frq &&
    lhs.iode == rhs.iode &&
    lhs.svh == rhs.svh &&
    lhs.age == rhs.age &&
    lhs.toe == rhs.toe &&
    lhs.tof == rhs.tof &&
    lhs.pos == rhs.pos &&
    lhs.vel == rhs.vel &&
    lhs.acc == rhs.acc &&
    lhs.taun == rhs.taun &&
    lhs.gamn == rhs.gamn &&
    lhs.dtaun == rhs.dtaun;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gnss_comm::GlonassEphemeris_<ContainerAllocator1> & lhs, const ::gnss_comm::GlonassEphemeris_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gnss_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f9f92a33d8424e6a6e4db533429ffaef";
  }

  static const char* value(const ::gnss_comm::GlonassEphemeris_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf9f92a33d8424e6aULL;
  static const uint64_t static_value2 = 0x6e4db533429ffaefULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_comm/GlonassEphemeris";
  }

  static const char* value(const ::gnss_comm::GlonassEphemeris_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string prn        # Satellite PRN number\n"
"uint16 week       # GPS week\n"
"int8 frq          # Satellite frequency number\n"
"uint8 iode        # Issue of data, ephemeris\n"
"uint8 svh         # SV health\n"
"uint8 age         # Age of operation\n"
"float64 toe       # Epoch of epherides\n"
"float64 tof       # Message frame time\n"
"float64[] pos     # Satellite position\n"
"float64[] vel     # Satellite velocity\n"
"float64[] acc     # Satellite acceleration\n"
"float64 taun      # SV clock bias\n"
"float64 gamn      # SV relative freq bias\n"
"float64 dtaun     # Delay between L1 and L2\n"
;
  }

  static const char* value(const ::gnss_comm::GlonassEphemeris_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prn);
      stream.next(m.week);
      stream.next(m.frq);
      stream.next(m.iode);
      stream.next(m.svh);
      stream.next(m.age);
      stream.next(m.toe);
      stream.next(m.tof);
      stream.next(m.pos);
      stream.next(m.vel);
      stream.next(m.acc);
      stream.next(m.taun);
      stream.next(m.gamn);
      stream.next(m.dtaun);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GlonassEphemeris_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_comm::GlonassEphemeris_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_comm::GlonassEphemeris_<ContainerAllocator>& v)
  {
    s << indent << "prn: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.prn);
    s << indent << "week: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.week);
    s << indent << "frq: ";
    Printer<int8_t>::stream(s, indent + "  ", v.frq);
    s << indent << "iode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.iode);
    s << indent << "svh: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.svh);
    s << indent << "age: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.age);
    s << indent << "toe: ";
    Printer<double>::stream(s, indent + "  ", v.toe);
    s << indent << "tof: ";
    Printer<double>::stream(s, indent + "  ", v.tof);
    s << indent << "pos[]" << std::endl;
    for (size_t i = 0; i < v.pos.size(); ++i)
    {
      s << indent << "  pos[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.pos[i]);
    }
    s << indent << "vel[]" << std::endl;
    for (size_t i = 0; i < v.vel.size(); ++i)
    {
      s << indent << "  vel[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.vel[i]);
    }
    s << indent << "acc[]" << std::endl;
    for (size_t i = 0; i < v.acc.size(); ++i)
    {
      s << indent << "  acc[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.acc[i]);
    }
    s << indent << "taun: ";
    Printer<double>::stream(s, indent + "  ", v.taun);
    s << indent << "gamn: ";
    Printer<double>::stream(s, indent + "  ", v.gamn);
    s << indent << "dtaun: ";
    Printer<double>::stream(s, indent + "  ", v.dtaun);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_COMM_MESSAGE_GLONASSEPHEMERIS_H