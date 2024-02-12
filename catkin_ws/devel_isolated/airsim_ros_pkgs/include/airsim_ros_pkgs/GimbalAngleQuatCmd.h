// Generated by gencpp from file airsim_ros_pkgs/GimbalAngleQuatCmd.msg
// DO NOT EDIT!


#ifndef AIRSIM_ROS_PKGS_MESSAGE_GIMBALANGLEQUATCMD_H
#define AIRSIM_ROS_PKGS_MESSAGE_GIMBALANGLEQUATCMD_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Quaternion.h>

namespace airsim_ros_pkgs
{
template <class ContainerAllocator>
struct GimbalAngleQuatCmd_
{
  typedef GimbalAngleQuatCmd_<ContainerAllocator> Type;

  GimbalAngleQuatCmd_()
    : header()
    , camera_name()
    , vehicle_name()
    , orientation()  {
    }
  GimbalAngleQuatCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , camera_name(_alloc)
    , vehicle_name(_alloc)
    , orientation(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _camera_name_type;
  _camera_name_type camera_name;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _vehicle_name_type;
  _vehicle_name_type vehicle_name;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _orientation_type;
  _orientation_type orientation;





  typedef boost::shared_ptr< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> const> ConstPtr;

}; // struct GimbalAngleQuatCmd_

typedef ::airsim_ros_pkgs::GimbalAngleQuatCmd_<std::allocator<void> > GimbalAngleQuatCmd;

typedef boost::shared_ptr< ::airsim_ros_pkgs::GimbalAngleQuatCmd > GimbalAngleQuatCmdPtr;
typedef boost::shared_ptr< ::airsim_ros_pkgs::GimbalAngleQuatCmd const> GimbalAngleQuatCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.camera_name == rhs.camera_name &&
    lhs.vehicle_name == rhs.vehicle_name &&
    lhs.orientation == rhs.orientation;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator1> & lhs, const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace airsim_ros_pkgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "26f3bc8337157b61ae91ea421cb25a16";
  }

  static const char* value(const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x26f3bc8337157b61ULL;
  static const uint64_t static_value2 = 0xae91ea421cb25a16ULL;
};

template<class ContainerAllocator>
struct DataType< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "airsim_ros_pkgs/GimbalAngleQuatCmd";
  }

  static const char* value(const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"string camera_name\n"
"string vehicle_name\n"
"geometry_msgs/Quaternion orientation\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.camera_name);
      stream.next(m.vehicle_name);
      stream.next(m.orientation);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GimbalAngleQuatCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::airsim_ros_pkgs::GimbalAngleQuatCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "camera_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.camera_name);
    s << indent << "vehicle_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.vehicle_name);
    s << indent << "orientation: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AIRSIM_ROS_PKGS_MESSAGE_GIMBALANGLEQUATCMD_H
