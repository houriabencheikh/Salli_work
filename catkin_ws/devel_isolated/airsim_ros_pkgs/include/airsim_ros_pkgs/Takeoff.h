// Generated by gencpp from file airsim_ros_pkgs/Takeoff.msg
// DO NOT EDIT!


#ifndef AIRSIM_ROS_PKGS_MESSAGE_TAKEOFF_H
#define AIRSIM_ROS_PKGS_MESSAGE_TAKEOFF_H

#include <ros/service_traits.h>


#include <airsim_ros_pkgs/TakeoffRequest.h>
#include <airsim_ros_pkgs/TakeoffResponse.h>


namespace airsim_ros_pkgs
{

struct Takeoff
{

typedef TakeoffRequest Request;
typedef TakeoffResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Takeoff
} // namespace airsim_ros_pkgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::airsim_ros_pkgs::Takeoff > {
  static const char* value()
  {
    return "3a122444608b7d9984b24a10fba10ac1";
  }

  static const char* value(const ::airsim_ros_pkgs::Takeoff&) { return value(); }
};

template<>
struct DataType< ::airsim_ros_pkgs::Takeoff > {
  static const char* value()
  {
    return "airsim_ros_pkgs/Takeoff";
  }

  static const char* value(const ::airsim_ros_pkgs::Takeoff&) { return value(); }
};


// service_traits::MD5Sum< ::airsim_ros_pkgs::TakeoffRequest> should match
// service_traits::MD5Sum< ::airsim_ros_pkgs::Takeoff >
template<>
struct MD5Sum< ::airsim_ros_pkgs::TakeoffRequest>
{
  static const char* value()
  {
    return MD5Sum< ::airsim_ros_pkgs::Takeoff >::value();
  }
  static const char* value(const ::airsim_ros_pkgs::TakeoffRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::airsim_ros_pkgs::TakeoffRequest> should match
// service_traits::DataType< ::airsim_ros_pkgs::Takeoff >
template<>
struct DataType< ::airsim_ros_pkgs::TakeoffRequest>
{
  static const char* value()
  {
    return DataType< ::airsim_ros_pkgs::Takeoff >::value();
  }
  static const char* value(const ::airsim_ros_pkgs::TakeoffRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::airsim_ros_pkgs::TakeoffResponse> should match
// service_traits::MD5Sum< ::airsim_ros_pkgs::Takeoff >
template<>
struct MD5Sum< ::airsim_ros_pkgs::TakeoffResponse>
{
  static const char* value()
  {
    return MD5Sum< ::airsim_ros_pkgs::Takeoff >::value();
  }
  static const char* value(const ::airsim_ros_pkgs::TakeoffResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::airsim_ros_pkgs::TakeoffResponse> should match
// service_traits::DataType< ::airsim_ros_pkgs::Takeoff >
template<>
struct DataType< ::airsim_ros_pkgs::TakeoffResponse>
{
  static const char* value()
  {
    return DataType< ::airsim_ros_pkgs::Takeoff >::value();
  }
  static const char* value(const ::airsim_ros_pkgs::TakeoffResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AIRSIM_ROS_PKGS_MESSAGE_TAKEOFF_H