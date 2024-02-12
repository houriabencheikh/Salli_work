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



#include <sensor_msgs/PointCloud2.h>
#include <cmath>
#include <iostream>
#include <vector>




class PctTransformation
{
public:


    bool rcv_cmd = false; 
    bool has_odom_ = false;
    bool has_pointcloud_ = false;

    PctTransformation (const ros::NodeHandle& nh, const ros::NodeHandle& nh_private); 
    void publishPctTransformation();




    
  
private:

   
    // ROS node handlers
    ros::NodeHandle nh_;
    ros::NodeHandle nh_private_;

    void initialize_ros();
    //void publishTargetPosition();
    void positionCommandCallback(const quadrotor_msgs::PositionCommand::ConstPtr& cmd);   
    void odomCallBack(const nav_msgs::Odometry::ConstPtr& odom_msg);
    void publish_odom();
    void pointcloud_cb(const sensor_msgs::PointCloud2::ConstPtr& pointcloud_msg);
    void publish_pointcloud();



    //geometry_msgs::PoseStamped target_position_msg;
    quadrotor_msgs::PositionCommand _cmd;
    nav_msgs::Odometry curr_odom;
    nav_msgs::Odometry transformed_odom ;
    sensor_msgs::PointCloud2 _curr_pointcloud ;
    sensor_msgs::PointCloud2 transformed_cloud;
    //sensor_msgs::PointCloud2 output;


    tf::TransformListener listener;
    tf::StampedTransform transform;




    ros::ServiceClient position_goal_client_;
    
    // publishes
    //ros::Publisher target_position_pub_;
    ros::Publisher transformed_odom_pub_ ;
    ros::Publisher transformed_pointcloud_pub_ ;

    //subscriber
    ros::Subscriber position_command_sub_;
    ros::Subscriber curr_odom_sub_ ;
    ros::Subscriber curr_pointcloud_sub_ ;
    ros::Subscriber curr_odom_sub;


  

};

#endif // COLLISION_CHECKER_H_
