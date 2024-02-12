#ifndef _TRANSFORMATION_H_
#define _TRANSFORMATION_H_

#include <ros/ros.h>
#include <tf/tf.h>

#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/common/distances.h>
#include <pcl_ros/transforms.h>
#include <pcl_ros/point_cloud.h>
#include <tf/transform_listener.h>



#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseStamped.h>
#include <quadrotor_msgs/PositionCommand.h>
#include "quadrotor_msgs/PositionCommand.h"
#include "airsim_ros_pkgs/SetLocalPosition.h"
#include <opencv2/opencv.hpp>
#include <sensor_msgs/CameraInfo.h>




#include <sensor_msgs/PointCloud2.h>
#include <cmath>
#include <iostream>
#include <vector>




class DepthImage
{
public:



    DepthImage (const ros::NodeHandle& nh, const ros::NodeHandle& nh_private); 
    //cv::Mat pointCloudToDepthImage(const sensor_msgs::PointCloud2::ConstPtr& cloud_msg);
    //cv::Mat generateDepthImageFromGoalPosition(const geometry_msgs::Point& goal_position);

    void publishDepthImage();
    bool rcv_cmd = false; 
    bool has_odom_ = false ; 
    bool has_pointcloud_ = false;
    bool  has_camera_info_ = false;
    bool has_image_info_= false; 




    
  
private:
    // ROS node handlers
    ros::NodeHandle nh_;
    ros::NodeHandle nh_private_;

    void initialize_ros();
   // void pointcloud_cb(const sensor_msgs::PointCloud2::ConstPtr& pointcloud_msg);
    void odomCallBack(const nav_msgs::Odometry::ConstPtr& odom_msg);
    void camCallBack(const sensor_msgs::CameraInfo::ConstPtr& camera_msg);
    void positionCommandCallback(const geometry_msgs::Point::ConstPtr& cmd);
    //bool isPointInRRTDirection(const pcl::PointXYZ& point,
    //                                   const geometry_msgs::Point& rrt_direction,
      //                                 const nav_msgs::Odometry& current_odom);

    void processDepthImage();
    void publish_odom();
    void imageCallBack(const sensor_msgs::Image::ConstPtr& image_msg);




 

    geometry_msgs::Point _cmd;
    //sensor_msgs::PointCloud2 _curr_pointcloud;
    nav_msgs::Odometry curr_odom;
    nav_msgs::Odometry transformed_odom;

    sensor_msgs::CameraInfo cam_info;
    //sensor_msgs::ImagePtr output_image ;
    sensor_msgs::Image transformed_image;
    sensor_msgs::Image image_info;


    //cv::Mat depth_image_from_point_cloud;
    //cv::Mat depth_image;
    //sensor_msgs::Image image; 

    //cv::Mat goal_depth_image;
    //cv::Mat combined_depth_image;
    //cv::Mat generated_depth_image;

   

    


 




    //ros::ServiceClient position_goal_client_;
    
    // publishes
    ros::Publisher depth_image_pub_;
    //ros::Publisher depth_cloud_pub_;
    //ros::Publisher publish_cam_info;
    ros::Publisher transformed_odom_pub_;
    //subscriber
    //ros::Subscriber trajectory_sub_;
    //ros::Subscriber curr_pointcloud_sub_ ;
    ros::Subscriber curr_odom_sub_;
    ros::Subscriber curr_cam_sub_ ;
    ros::Subscriber position_command_sub_ ;
    ros::Subscriber curr_image_sub_ ;





  

};

#endif // COLLISION_CHECKER_H_
