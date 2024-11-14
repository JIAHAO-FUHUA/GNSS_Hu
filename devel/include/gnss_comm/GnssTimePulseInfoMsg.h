// Generated by gencpp from file gnss_comm/GnssTimePulseInfoMsg.msg
// DO NOT EDIT!


#ifndef GNSS_COMM_MESSAGE_GNSSTIMEPULSEINFOMSG_H
#define GNSS_COMM_MESSAGE_GNSSTIMEPULSEINFOMSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <gnss_comm/GnssTimeMsg.h>

namespace gnss_comm
{
template <class ContainerAllocator>
struct GnssTimePulseInfoMsg_
{
  typedef GnssTimePulseInfoMsg_<ContainerAllocator> Type;

  GnssTimePulseInfoMsg_()
    : time()
    , utc_based(false)
    , time_sys(0)  {
    }
  GnssTimePulseInfoMsg_(const ContainerAllocator& _alloc)
    : time(_alloc)
    , utc_based(false)
    , time_sys(0)  {
  (void)_alloc;
    }



   typedef  ::gnss_comm::GnssTimeMsg_<ContainerAllocator>  _time_type;
  _time_type time;

   typedef uint8_t _utc_based_type;
  _utc_based_type utc_based;

   typedef uint32_t _time_sys_type;
  _time_sys_type time_sys;





  typedef boost::shared_ptr< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> const> ConstPtr;

}; // struct GnssTimePulseInfoMsg_

typedef ::gnss_comm::GnssTimePulseInfoMsg_<std::allocator<void> > GnssTimePulseInfoMsg;

typedef boost::shared_ptr< ::gnss_comm::GnssTimePulseInfoMsg > GnssTimePulseInfoMsgPtr;
typedef boost::shared_ptr< ::gnss_comm::GnssTimePulseInfoMsg const> GnssTimePulseInfoMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator1> & lhs, const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator2> & rhs)
{
  return lhs.time == rhs.time &&
    lhs.utc_based == rhs.utc_based &&
    lhs.time_sys == rhs.time_sys;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator1> & lhs, const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gnss_comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "de306035e295e3c4b1e0771a216b495a";
  }

  static const char* value(const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xde306035e295e3c4ULL;
  static const uint64_t static_value2 = 0xb1e0771a216b495aULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_comm/GnssTimePulseInfoMsg";
  }

  static const char* value(const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains information of UBX-TIM-TP message. \n"
"# reference: [1]. UBX-18010854-R08, page 156\n"
"\n"
"GnssTimeMsg time    # GNSS time of the next time pulse\n"
"bool utc_based      # if the time is UTC (1=UTC, 0=GNSS)\n"
"uint32 time_sys     # GNSS time reference system, if the time base is GNSS (utc_base=0)\n"
"================================================================================\n"
"MSG: gnss_comm/GnssTimeMsg\n"
"# This message contains GNSS time expressed in the form of \n"
"# GNSS week number and time of week(in seconds)\n"
"\n"
"uint32 week\n"
"float64 tow\n"
;
  }

  static const char* value(const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
      stream.next(m.utc_based);
      stream.next(m.time_sys);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GnssTimePulseInfoMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_comm::GnssTimePulseInfoMsg_<ContainerAllocator>& v)
  {
    s << indent << "time: ";
    s << std::endl;
    Printer< ::gnss_comm::GnssTimeMsg_<ContainerAllocator> >::stream(s, indent + "  ", v.time);
    s << indent << "utc_based: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.utc_based);
    s << indent << "time_sys: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.time_sys);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_COMM_MESSAGE_GNSSTIMEPULSEINFOMSG_H
