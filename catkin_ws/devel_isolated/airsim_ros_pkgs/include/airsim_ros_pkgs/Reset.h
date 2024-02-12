// Generated by gencpp from file airsim_ros_pkgs/Reset.msg
// DO NOT EDIT!


#ifndef AIRSIM_ROS_PKGS_MESSAGE_RESET_H
#define AIRSIM_ROS_PKGS_MESSAGE_RESET_H

#include <ros/service_traits.h>


#include <airsim_ros_pkgs/ResetRequest.h>
#include <airsim_ros_pkgs/ResetResponse.h>


namespace airsim_ros_pkgs
{

struct Reset
{

typedef ResetRequest Request;
typedef ResetResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Reset
} // namespace airsim_ros_pkgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::airsim_ros_pkgs::Reset > {
  static const char* value()
  {
    return "3a122444608b7d9984b24a10fba10ac1";
  }

  static const char* value(const ::airsim_ros_pkgs::Reset&) { return value(); }
};

template<>
struct DataType< ::airsim_ros_pkgs::Reset > {
  static const char* value()
  {
    return "airsim_ros_pkgs/Reset";
  }

  static const char* value(const ::airsim_ros_pkgs::Reset&) { return value(); }
};


// service_traits::MD5Sum< ::airsim_ros_pkgs::ResetRequest> should match
// service_traits::MD5Sum< ::airsim_ros_pkgs::Reset >
template<>
struct MD5Sum< ::airsim_ros_pkgs::ResetRequest>
{
  static const char* value()
  {
    return MD5Sum< ::airsim_ros_pkgs::Reset >::value();
  }
  static const char* value(const ::airsim_ros_pkgs::ResetRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::airsim_ros_pkgs::ResetRequest> should match
// service_traits::DataType< ::airsim_ros_pkgs::Reset >
template<>
struct DataType< ::airsim_ros_pkgs::ResetRequest>
{
  static const char* value()
  {
    return DataType< ::airsim_ros_pkgs::Reset >::value();
  }
  static const char* value(const ::airsim_ros_pkgs::ResetRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::airsim_ros_pkgs::ResetResponse> should match
// service_traits::MD5Sum< ::airsim_ros_pkgs::Reset >
template<>
struct MD5Sum< ::airsim_ros_pkgs::ResetResponse>
{
  static const char* value()
  {
    return MD5Sum< ::airsim_ros_pkgs::Reset >::value();
  }
  static const char* value(const ::airsim_ros_pkgs::ResetResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::airsim_ros_pkgs::ResetResponse> should match
// service_traits::DataType< ::airsim_ros_pkgs::Reset >
template<>
struct DataType< ::airsim_ros_pkgs::ResetResponse>
{
  static const char* value()
  {
    return DataType< ::airsim_ros_pkgs::Reset >::value();
  }
  static const char* value(const ::airsim_ros_pkgs::ResetResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // AIRSIM_ROS_PKGS_MESSAGE_RESET_H