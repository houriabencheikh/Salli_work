// Generated by gencpp from file airsim_ros_pkgs/SetLocalPositionResponse.msg
// DO NOT EDIT!


#ifndef AIRSIM_ROS_PKGS_MESSAGE_SETLOCALPOSITIONRESPONSE_H
#define AIRSIM_ROS_PKGS_MESSAGE_SETLOCALPOSITIONRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace airsim_ros_pkgs
{
template <class ContainerAllocator>
struct SetLocalPositionResponse_
{
  typedef SetLocalPositionResponse_<ContainerAllocator> Type;

  SetLocalPositionResponse_()
    : success(false)
    , message()  {
    }
  SetLocalPositionResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SetLocalPositionResponse_

typedef ::airsim_ros_pkgs::SetLocalPositionResponse_<std::allocator<void> > SetLocalPositionResponse;

typedef boost::shared_ptr< ::airsim_ros_pkgs::SetLocalPositionResponse > SetLocalPositionResponsePtr;
typedef boost::shared_ptr< ::airsim_ros_pkgs::SetLocalPositionResponse const> SetLocalPositionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace airsim_ros_pkgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "airsim_ros_pkgs/SetLocalPositionResponse";
  }

  static const char* value(const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Response : success=true - (if async=false && if setpoint reached before timeout = 30sec) || (if async=true)\n"
"bool success\n"
"string message\n"
;
  }

  static const char* value(const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetLocalPositionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::airsim_ros_pkgs::SetLocalPositionResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AIRSIM_ROS_PKGS_MESSAGE_SETLOCALPOSITIONRESPONSE_H