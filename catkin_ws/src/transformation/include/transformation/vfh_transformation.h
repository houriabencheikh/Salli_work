#ifndef _TRANSFORMATION_H_
#define _TRANSFORMATION_H_

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
#include "airsim_ros_pkgs/SetLocalPosition.h"
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseStamped.h>
#include <sensor_msgs/PointCloud2.h>
#include <visualization_msgs/MarkerArray.h>





#include <vector>
#include <cmath>
#include <iostream>



class VfhTransformation
{
public:


    bool has_odom_ = false;
    bool rcv_cmd = false;
    bool has_pointcloud_=false ;
	

    VfhTransformation (const ros::NodeHandle& nh, const ros::NodeHandle& nh_private); 
    void publishVfhTransformation();
    void publishTargetPosition();





    
  
private:

   
    // ROS node handlers
    ros::NodeHandle nh_;
    ros::NodeHandle nh_private_;

    void initialize_ros();
  
    void odomCallBack(const nav_msgs::Odometry::ConstPtr& odom_msg);
    void publish_odom();
    void positionCommandCallback(const geometry_msgs::PoseStamped::ConstPtr& cmd);
    void pointcloud_cb(const sensor_msgs::PointCloud2::ConstPtr& pointcloud_msg);
    void publishOctomap() ;







  
    sensor_msgs::PointCloud2 _curr_pointcloud ;
    octomap_msgs::Octomap octomap_msg;
    nav_msgs::Odometry curr_odom;
    geometry_msgs::PoseStamped transformed_odom ;
    geometry_msgs::PoseStamped _cmd;
    double octomap_resolution_;
    std::shared_ptr<octomap::OcTree> octree_;
    geometry_msgs::PoseStamped target_pose;


  



    ros::ServiceClient position_goal_client_;


    
    // publishes
    ros::Publisher transformed_odom_pub_ ;
    ros::Publisher octomap_pub_;
    ros::Publisher marker_array_pub;
    ros::Publisher target_pos_pub ;
 

  
    ros::Subscriber curr_odom_sub_;
    ros::Subscriber position_command_sub_;
    ros::Subscriber curr_pointcloud_sub_;


};

#endif // COLLISION_CHECKER_H_
