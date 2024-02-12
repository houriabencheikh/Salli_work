#include "transformation/pct_transformation.h"

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
#include <Eigen/Geometry>


#include <vector>
#include <cmath>
#include <iostream>


PctTransformation::PctTransformation(const ros::NodeHandle& nh, const ros::NodeHandle& nh_private)
    : nh_(nh), nh_private_(nh_private)
{
    initialize_ros();

}

void PctTransformation::initialize_ros()
{
    ROS_INFO_STREAM("Initializing ROS");
    
    position_command_sub_ = nh_.subscribe("/position_cmd", 50, &PctTransformation::positionCommandCallback, this);
    //target_position_pub_ = nh_.advertise<geometry_msgs::PoseStamped>("/target_position/target_position", 10);
    position_goal_client_ = nh_.serviceClient<airsim_ros_pkgs::SetLocalPosition>("/airsim_node/local_position_goal");


    curr_odom_sub_ = nh_.subscribe("/airsim_node/SALLI/odom_local_ned", 50, &PctTransformation::odomCallBack, this);
    transformed_odom_pub_ = nh_.advertise<nav_msgs::Odometry>("/transformation/_odom_transformed", 1);


    curr_pointcloud_sub_ = nh_.subscribe("/airsim_node/SALLI/lidar/Lidar" , 50, &PctTransformation::pointcloud_cb, this);
    transformed_pointcloud_pub_ = nh_.advertise<sensor_msgs::PointCloud2>("/transformation/pointcloud_transformed", 1);
    
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/* 

void TargetPosition::publishTargetPosition(){
    if (!rcv_cmd) {
        ROS_WARN("No target position available to publish.");
        return;
    }
   target_position_msg.header.stamp    = ros::Time::now();
   target_position_msg.header.frame_id = "world_ned";

   target_position_msg.pose.position.x = _cmd.position.x;
   target_position_msg.pose.position.y = _cmd.position.y;
   target_position_msg.pose.position.z = -_cmd.position.z;


    // Convert yaw to a quaternion and set the orientation
    target_position_msg.pose.orientation = tf::createQuaternionMsgFromYaw(_cmd.yaw);
    target_position_pub_.publish(target_position_msg);
    rcv_cmd = false;



}*/
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void PctTransformation::publishPctTransformation() {
    if (!rcv_cmd) {
        ROS_WARN("No target position available to publish.");
        return;
    }

    airsim_ros_pkgs::SetLocalPosition srv;
    srv.request.x = _cmd.position.x;
    srv.request.y = -_cmd.position.y;
    srv.request.z = -_cmd.position.z; // Assuming NED coordinate system
    srv.request.yaw = _cmd.yaw;

    if (position_goal_client_.call(srv)) {
        ROS_INFO("Position command sent: %f, %f, %f, %f", srv.request.x, srv.request.y, srv.request.z, srv.request.yaw);
    } else {
        ROS_ERROR("Failed to call service local_position_goal");
    }

    rcv_cmd = false;
}




void PctTransformation::positionCommandCallback(const quadrotor_msgs::PositionCommand::ConstPtr& cmd){
	rcv_cmd = true;
	_cmd    = *cmd;


    PctTransformation::publishPctTransformation();

}

void PctTransformation::publish_odom()
{
    if (!has_odom_ ) {
        ROS_WARN("No odom available to publish.");
        return;
    }
    transformed_odom.header.frame_id =  "lidar_loam";

    transformed_odom.header.stamp    = ros::Time::now();
    //transformed_odom.child_frame_id = curr_odom.child_frame_id;
   

// Assuming the `_odom` object has the correct position data


    transformed_odom.pose.pose.position.x = curr_odom.pose.pose.position.x;
    transformed_odom.pose.pose.position.y = -curr_odom.pose.pose.position.y;
    transformed_odom.pose.pose.position.z = -curr_odom.pose.pose.position.z;
// Assuming the `_odom` object has the correct orientation data

    transformed_odom.pose.pose.orientation.x = curr_odom.pose.pose.orientation.x;
    transformed_odom.pose.pose.orientation.y = -curr_odom.pose.pose.orientation.y;
    transformed_odom.pose.pose.orientation.z = -curr_odom.pose.pose.orientation.z;
    transformed_odom.pose.pose.orientation.w = curr_odom.pose.pose.orientation.w;

// Assuming the `_odom` object has the correct velocity data
    transformed_odom.twist.twist.linear.x = curr_odom.twist.twist.linear.x;
    transformed_odom.twist.twist.linear.y = -curr_odom.twist.twist.linear.y;
    transformed_odom.twist.twist.linear.z = -curr_odom.twist.twist.linear.z;

// Assuming the `_odom` object has correct angular velocity data
    transformed_odom.twist.twist.angular.x = curr_odom.twist.twist.angular.x;
    transformed_odom.twist.twist.angular.y = -curr_odom.twist.twist.angular.y;
    transformed_odom.twist.twist.angular.z = -curr_odom.twist.twist.angular.z;
    transformed_odom_pub_.publish(transformed_odom);
    has_odom_ = false;


}
  
void PctTransformation::odomCallBack(const nav_msgs::Odometry::ConstPtr& odom_msg){

    has_odom_ = true;
    curr_odom = *odom_msg;

    PctTransformation::publish_odom();


 
}

//converts it to a PCL point cloud, and then uses it for processing.
 /* void TargetPosition::publish_pointcloud()
{
    if (has_pointcloud_) 
    {
      
        pcl::PointCloud<pcl::PointXYZ>::Ptr  _curr_pointcloud_pcl (new pcl::PointCloud<pcl::PointXYZ>);

        // Convert ROS PointCloud2 message to PCL PointCloud
        pcl::fromROSMsg(_curr_pointcloud, *_curr_pointcloud_pcl);

        // Adjust Z-axis
        for (auto& point : _curr_pointcloud_pcl->points) {
            point.y = -point.y;
            point.z = -point.z;
        }

        // Convert the processed PCL cloud back to ROS message
        pcl::toROSMsg(*_curr_pointcloud_pcl, transformed_cloud);

        transformed_cloud.header.frame_id = "SALLI";
        transformed_cloud.header.stamp = _curr_pointcloud.header.stamp;
        transformed_cloud.height = _curr_pointcloud.height ;
        transformed_cloud.width = _curr_pointcloud.width ;
        transformed_cloud.fields = _curr_pointcloud.fields;
        transformed_cloud.is_bigendian = _curr_pointcloud.is_bigendian ;
        transformed_cloud.point_step = _curr_pointcloud.point_step ;
        transformed_cloud.row_step = _curr_pointcloud.row_step ;
        transformed_cloud.data = _curr_pointcloud.data ;
        transformed_cloud.is_dense = _curr_pointcloud.is_dense ;

        // Publish the transformed point cloud
        transformed_pointcloud_pub_.publish(transformed_cloud);
        has_pointcloud_ = false;
    }
}*/

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7

 void PctTransformation::publish_pointcloud()

{     
     if ( has_pointcloud_) 
{

    listener.lookupTransform("lidar_loam", _curr_pointcloud.header.frame_id, ros::Time(0), transform);
    pcl_ros::transformPointCloud("lidar_loam", _curr_pointcloud, transformed_cloud, listener);

    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>);
    pcl::fromROSMsg(transformed_cloud, *cloud);
    for (auto& point : cloud->points) {
            point.y = -point.y;
            point.z = -point.z;
        }

    
    pcl::toROSMsg(*cloud, transformed_cloud);
    transformed_cloud.header.frame_id = "lidar_loam";
    transformed_cloud.header.stamp = ros::Time::now();
    
 
    transformed_cloud.height = _curr_pointcloud.height ;
    transformed_cloud.width = _curr_pointcloud.width ;
    transformed_cloud.fields = _curr_pointcloud.fields;
    transformed_cloud.is_bigendian = _curr_pointcloud.is_bigendian ;
    transformed_cloud.point_step = _curr_pointcloud.point_step ;
    transformed_cloud.row_step = _curr_pointcloud.row_step ;
    transformed_cloud.data = _curr_pointcloud.data ;
    transformed_cloud.is_dense = _curr_pointcloud.is_dense ;
    
 
    // Publish the transformed point cloud.
    transformed_pointcloud_pub_.publish(transformed_cloud);
    has_pointcloud_ = false;
}
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////7

 void PctTransformation::pointcloud_cb(const sensor_msgs::PointCloud2::ConstPtr& pointcloud_msg) 
{   
    has_pointcloud_ = true;
    _curr_pointcloud = *pointcloud_msg;
    PctTransformation::publish_pointcloud();


}




