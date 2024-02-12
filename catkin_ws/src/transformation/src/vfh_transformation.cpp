#include "transformation/vfh_transformation.h"

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
#include <geometry_msgs/PoseStamped.h>
#include <octomap_ros/conversions.h>
#include <octomap_msgs/conversions.h>
#include <octomap_msgs/Octomap.h>
#include <pcl_conversions/pcl_conversions.h>
#include <octomap/OcTree.h>
#include <memory>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseStamped.h>
#include <sensor_msgs/PointCloud2.h>
#include <tf/transform_datatypes.h>
#include <visualization_msgs/MarkerArray.h>
#include <airsim_ros_pkgs/SetLocalPosition.h>







#include <vector>
#include <cmath>
#include <iostream>



VfhTransformation::VfhTransformation(const ros::NodeHandle& nh, const ros::NodeHandle& nh_private)
    : nh_(nh), nh_private_(nh_private)
{
    initialize_ros();

}

void VfhTransformation::initialize_ros()
{
    ROS_INFO_STREAM("Initializing ROS");

    curr_pointcloud_sub_ = nh_.subscribe("/airsim_node/SALLI/lidar/Lidar" , 50, &VfhTransformation::pointcloud_cb, this);
    octomap_pub_= nh_.advertise<octomap_msgs::Octomap>("/transformation/octomap_binary", 1, true);

    curr_odom_sub_ = nh_.subscribe("/airsim_node/SALLI/odom_local_ned", 50, &VfhTransformation::odomCallBack, this);
    transformed_odom_pub_ = nh_.advertise<geometry_msgs::PoseStamped>("/transformation/_odom_transformed", 1);


    //target_pos_pub = nh_.advertise<geometry_msgs::PoseStamped>("/transformation/target_position", 10);
    position_command_sub_ = nh_.subscribe("/vfh3d/cmd_pose", 50, &VfhTransformation::positionCommandCallback, this);

    //position_goal_client_ = nh_.serviceClient<airsim_ros_pkgs::SetLocalPosition>("/airsim_node/local_position_goal");



    marker_array_pub = nh_.advertise<visualization_msgs::MarkerArray>("occupied_cells_vis_array", 1);


}

void VfhTransformation::publishVfhTransformation() {
}

/*

void VfhTransformation::publishVfhTransformation() {
    
    if (!rcv_cmd) {
        ROS_WARN("No cmd position available to publish.");
        return;
    }

    // Normalize the quaternion
    tf::Quaternion tfQuat(_cmd.pose.orientation.x, _cmd.pose.orientation.y, -_cmd.pose.orientation.z, _cmd.pose.orientation.w);
    tfQuat.normalize();
    geometry_msgs::Quaternion normalized_quaternion;
    tf::quaternionTFToMsg(tfQuat, normalized_quaternion);

    // Set the normalized quaternion back to _cmd.pose.orientation
    _cmd.pose.orientation = normalized_quaternion;


    airsim_ros_pkgs::SetLocalPosition srv;
    srv.request.x = _cmd.pose.position.x;  
    srv.request.y = _cmd.pose.position.y;
    srv.request.z = -_cmd.pose.position.z;

    double yaw = tf::getYaw(_cmd.pose.orientation);
    srv.request.yaw = yaw;

    if (position_goal_client_.call(srv)) {
        ROS_INFO("Position command sent: %f, %f, %f, %f", srv.request.x, srv.request.y, srv.request.z, srv.request.yaw);
        ROS_INFO("PID recieved the target position");

    } else {
        ROS_ERROR("Failed to call service local_position_goal");
    }

    rcv_cmd = false;

}

*/



void VfhTransformation::positionCommandCallback(const geometry_msgs::PoseStamped::ConstPtr& cmd){
	rcv_cmd = true;
	_cmd    = *cmd;


    VfhTransformation::publishVfhTransformation();

}


/*
void VfhTransformation::publishTargetPosition(){


    geometry_msgs::PoseStamped target_pose;

    // Define the target position and orientation
    double target_x = 1.0;
    double target_y = 3.0;  
    double target_z = -2.0;  
    double target_yaw = 0.0; 

    // Set the frame_id and timestamp
    target_pose.header.frame_id = "SALLI/Lidar";
    target_pose.header.stamp = ros::Time::now();

    // Set the position
    target_pose.pose.position.x = target_x;
    target_pose.pose.position.y = target_y;
    target_pose.pose.position.z = target_z; 
    target_pose.pose.orientation.w = 1 ; 


    // Publishing the target position
    target_pos_pub.publish(target_pose);
    ROS_INFO("taget position is published");

}

*/

void VfhTransformation::publish_odom()
{
    if (!has_odom_ ) {
        ROS_WARN("No odom available to publish.");
        return;
    }
    //transformed_odom.header.frame_id = "lidar_loam";
    transformed_odom.header.frame_id = "SALLI/Lidar";

    transformed_odom.header.stamp = ros::Time::now();
    //transformed_odom.child_frame_id = curr_odom.child_frame_id;


    // Assuming the `_odom` object has the correct position data
    transformed_odom.pose.position.x = curr_odom.pose.pose.position.x;
    transformed_odom.pose.position.y = curr_odom.pose.pose.position.y;
    transformed_odom.pose.position.z = -curr_odom.pose.pose.position.z;

    // Convert quaternion to RPY (roll, pitch, yaw)
    double roll, pitch, yaw;
   tf::Quaternion quat;
   tf::quaternionMsgToTF(curr_odom.pose.pose.orientation, quat);
   tf::Matrix3x3(quat).getRPY(roll, pitch, yaw);

   // Here you would adjust roll, pitch, and/or yaw based on your specific transformation needs
   // For example, negating the pitch might look like this:
   // yaw = -yaw;
 
   // Convert back to quaternion
   tf::Quaternion transformed_quat;
   transformed_quat.setRPY(roll, pitch, yaw);
   geometry_msgs::Quaternion transformed_orientation;
   tf::quaternionTFToMsg(transformed_quat, transformed_orientation);

  // Set the transformed orientation
  transformed_odom.pose.orientation = transformed_orientation;

    // Publish the transformed odometry
    transformed_odom_pub_.publish(transformed_odom);

    ROS_INFO("odemetry is published");

    has_odom_ = false;
}
  
void VfhTransformation::odomCallBack(const nav_msgs::Odometry::ConstPtr& odom_msg){

    has_odom_ = true;
    curr_odom = *odom_msg;

    VfhTransformation::publish_odom();
}





void VfhTransformation::publishOctomap() {
      if (!has_pointcloud_) {
        ROS_WARN("No pointcloud data received yet to generate an Octomap.");
        return;
    }

    pcl::PointCloud<pcl::PointXYZ> pcl_cloud;
    pcl::fromROSMsg(_curr_pointcloud, pcl_cloud);

    // each voxel represents a cubic space with sides of length 0.15 meters 
     // Initialize octree_ with a resolution, e.g., 0.1 meters
        octree_ = std::make_shared<octomap::OcTree>(0.15);


    // Insert the point cloud into the OcTree
    for (const auto& point : pcl_cloud) {
        octree_->updateNode(octomap::point3d(point.x, point.y, point.z), true);
    }
   
    //updates the occupancy information of inner nodes based on their children's occupancy information
    octree_->updateInnerOccupancy();

    // Prepare octomap message
    octomap_msgs::Octomap octomap_msg;
    //octomap_msg.header.frame_id = "lidar_loam"; SALLI/Lidar
    octomap_msg.header.frame_id = "SALLI/Lidar"; 
    octomap_msg.header.stamp = ros::Time::now();
    octomap_msg.binary = true;
    octomap_msg.id = "OcTree";
    octomap_msg.resolution = octomap_resolution_;

    std::stringstream datastream;
    octree_->writeBinary(datastream);
    std::string data = datastream.str();
    octomap_msg.data = std::vector<int8_t>(data.begin(), data.end());

    octomap_pub_.publish(octomap_msg);
    ROS_INFO("octomap is published");
    has_pointcloud_ = false;

}


 void VfhTransformation::pointcloud_cb(const sensor_msgs::PointCloud2::ConstPtr& pointcloud_msg) 
{   
    has_pointcloud_ = true;
    _curr_pointcloud = *pointcloud_msg;
    VfhTransformation::publishOctomap();

}




