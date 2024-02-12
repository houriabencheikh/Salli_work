#include "transformation/depth_image.h"

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

#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/PointCloud2.h>
#include <sensor_msgs/Image.h>
#include <geometry_msgs/Point.h>
#include <opencv2/opencv.hpp>
#include <sensor_msgs/CameraInfo.h>



#include <vector>
#include <cmath>
#include <iostream>

//const double z_scale = -1.0;  


DepthImage::DepthImage (const ros::NodeHandle& nh, const ros::NodeHandle& nh_private)
    : nh_(nh), nh_private_(nh_private)
{
    initialize_ros();

}

void DepthImage::initialize_ros()
{
    ROS_INFO_STREAM("Initializing ROS");
    /*
    //trajectory_sub_ = nh_.subscribe("command/point", 50, &DepthImage::trajectoryCallback, this);
    curr_odom_sub_ = nh_.subscribe("/airsim_node/SALLI/odom_local_ned", 50, &DepthImage::odomCallBack, this);

    curr_pointcloud_sub_ = nh_.subscribe("/airsim_node/SALLI/lidar/Lidar" , 50, &DepthImage::pointcloud_cb, this);

    curr_cam_sub_ = nh_.subscribe("/airsim_node/SALLI/zed_mini_right/camera_info", 50, &DepthImage::camCallBack, this);

    position_command_sub_ = nh_.subscribe("/firefly/command/point", 10, &DepthImage::positionCommandCallback, this);


    depth_image_pub_ = nh_.advertise<sensor_msgs::Image>("/target_position/point_cloud_to_depth_image", 5);

*/

    curr_image_sub_ = nh_.subscribe("/airsim_node/SALLI/zed_mini_right/DepthPlanar", 50, &DepthImage::imageCallBack, this);
    depth_image_pub_ = nh_.advertise<sensor_msgs::Image>("/transformation/salli_depth_image", 5);

    curr_odom_sub_ = nh_.subscribe("/airsim_node/SALLI/odom_local_ned", 50, &DepthImage::odomCallBack, this);
    transformed_odom_pub_ = nh_.advertise<nav_msgs::Odometry>("/transformation/_odom_transformed", 1);

    position_command_sub_ = nh_.subscribe("/firefly/command/point", 10, &DepthImage::positionCommandCallback, this);
    curr_cam_sub_ = nh_.subscribe("/airsim_node/SALLI/zed_mini_right/camera_info", 50, &DepthImage::camCallBack, this);



    
 }

void DepthImage:: publishDepthImage(){


}
 
 

 /*

void DepthImage:: publishDepthImage(){

    if (!has_pointcloud_ || !rcv_cmd || !has_odom_) return;

    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>());
    pcl::fromROSMsg(_curr_pointcloud , *cloud);

     Eigen::Affine3f transform = Eigen::Translation3f(curr_odom.pose.pose.position.x,  // Convert odometry position to Eigen type
                                                     curr_odom.pose.pose.position.y,
                                                     curr_odom.pose.pose.position.z) *
                                Eigen::Quaternionf(curr_odom.pose.pose.orientation.w,    // Convert odometry orientation to Eigen type
                                                   curr_odom.pose.pose.orientation.x,
                                                   curr_odom.pose.pose.orientation.y,
                                                   curr_odom.pose.pose.orientation.z);
   
   
    // Transform the point cloud to the drone's local frame
    pcl::PointCloud<pcl::PointXYZ>::Ptr transformed_cloud(new pcl::PointCloud<pcl::PointXYZ>());
    pcl::transformPointCloud(*cloud, *transformed_cloud, transform);


    // Filter the point cloud based on the RRT direction
    pcl::PointCloud<pcl::PointXYZ>::Ptr filtered_cloud(new pcl::PointCloud<pcl::PointXYZ>());
    for (const auto& point : transformed_cloud->points) {
            if (isPointInRRTDirection(point, _cmd , curr_odom)) {
                filtered_cloud->points.push_back(point);
            }
        }
  


}

//The isPointInFieldOfView function will filter out points that are not within a 45-degree angle on either side of the RRT direction 
//vector, effectively giving you a 90-degree field of view in front of the drone.

bool DepthImage::isPointInRRTDirection(const pcl::PointXYZ& point,
                                       const geometry_msgs::Point& _cmd,
                                       const nav_msgs::Odometry& curr_odom) {
    // Assuming _cmd is a unit vector in the RRT direction
    Eigen::Vector3f rrt_vector(_cmd.x, _cmd.y, _cmd.z);
    rrt_vector.normalize(); // Normalize the RRT direction vector

    // Create a vector from the drone to the point (in the local frame)
    Eigen::Vector3f point_vector(point.x, point.y, point.z);

    // Calculate the angle between the RRT direction vector and the vector to the point
    float cos_angle = rrt_vector.dot(point_vector.normalized());
    float angle = std::acos(cos_angle); // angle in radians

    // Define the maximum angle for the "cone" within which we want to consider points
    const float MAX_ANGLE = M_PI / 4; // 45 degrees in radians

    // Check if the point is within the "cone" of the RRT direction
    if (cos_angle >= std::cos(MAX_ANGLE)) { // Cosine is used to avoid computing the arc cosine
        return true; // Point is within the RRT direction
    }

    return false; // Point is outside the RRT direction
}


 */

void DepthImage :: positionCommandCallback(const geometry_msgs::Point::ConstPtr& cmd){
	
    rcv_cmd = true;
	_cmd    = *cmd;

}





/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*
void DepthImage::pointcloud_cb(const sensor_msgs::PointCloud2::ConstPtr& pointcloud_msg)
{
 
    has_pointcloud_ = true;
    _curr_pointcloud = *pointcloud_msg;
    DepthImage::processPointCloudToDepthImage();

}
void DepthImage::processPointCloudToDepthImage() {


if (has_pointcloud_ && has_camera_info_) {

    ROS_INFO_STREAM("cam_info");

    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>());
    pcl::fromROSMsg(_curr_pointcloud, *cloud);

    // Assuming 'cam_info' is properly initialized and available here
    float centre_x = cam_info.K[2];
    float centre_y = cam_info.K[5];
    float focal_x = cam_info.K[0];
    float focal_y = cam_info.K[4];

    cv::Mat cv_image = cv::Mat(cam_info.height, cam_info.width, CV_32FC1, cv::Scalar(std::numeric_limits<float>::max()));

    for (const auto& point : cloud->points) {
         ROS_INFO_STREAM("transformation");

        
        // Check if the point's depth is valid
        if (std::isfinite(point.z)) {
            float z = -point.z;  // Assuming the point cloud is in a right-handed coordinate system
            // Project the point onto the 2D image plane
            float u = (point.x * focal_x) / z + centre_x;
            float v = (point.y * focal_y) / z + centre_y;

            // Ensure the projected point falls within the image bounds
            if (u >= 0 && u < cam_info.width && v >= 0 && v < cam_info.height) {
                // Update the depth image pixel if the new depth is closer
                float& depth_pixel = cv_image.at<float>(int(v), int(u));
                if (depth_pixel > z) {
                    depth_pixel = z;
                }
            }
        }
    }

    // Convert the depth image to a ROS Image message
    sensor_msgs::ImagePtr output_image = cv_bridge::CvImage(std_msgs::Header(), "32FC1", cv_image).toImageMsg();
    output_image->header.stamp = cam_info.header.stamp;  
    output_image->header.frame_id = _curr_pointcloud.header.frame_id; 

    // Publish the depth image
    depth_image_pub_.publish(output_image);
    ROS_INFO_STREAM("depth_published");

    //publish_cam_info.publish(cam_info);

}
//has_camera_info_ = false;
has_pointcloud_ = false ; 

}
*/




void DepthImage::camCallBack(const sensor_msgs::CameraInfo::ConstPtr& camera_msg){
    has_camera_info_ = true;
    cam_info = *camera_msg;


}



void DepthImage::imageCallBack(const sensor_msgs::Image::ConstPtr& image_msg){
    has_image_info_ = true;
    image_info = *image_msg;
   DepthImage::processDepthImage();


}
void DepthImage::processDepthImage(){
    if (!has_image_info_) {
          
        ROS_WARN("No camera_info available to publish.");
        return;
    }

    transformed_image.header.frame_id =  image_info.header.frame_id ;
    transformed_image.header.stamp    = ros::Time::now();

    transformed_image.height = image_info.height ;
    transformed_image.width = image_info.width ;
    transformed_image.encoding = image_info.encoding ;

    transformed_image.is_bigendian = image_info.is_bigendian ;
    transformed_image.step = image_info.step ;
    transformed_image.data = image_info.data ;
    depth_image_pub_.publish(transformed_image);
    has_image_info_ = false;


}


void DepthImage::publish_odom()
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
    transformed_odom.pose.pose.position.y = curr_odom.pose.pose.position.y;
    transformed_odom.pose.pose.position.z = curr_odom.pose.pose.position.z;
// Assuming the `_odom` object has the correct orientation data

    transformed_odom.pose.pose.orientation.x = curr_odom.pose.pose.orientation.x;
    transformed_odom.pose.pose.orientation.y = curr_odom.pose.pose.orientation.y;
    transformed_odom.pose.pose.orientation.z = curr_odom.pose.pose.orientation.z;
    transformed_odom.pose.pose.orientation.w = curr_odom.pose.pose.orientation.w;

// Assuming the `_odom` object has the correct velocity data
    transformed_odom.twist.twist.linear.x = curr_odom.twist.twist.linear.x;
    transformed_odom.twist.twist.linear.y = curr_odom.twist.twist.linear.y;
    transformed_odom.twist.twist.linear.z = curr_odom.twist.twist.linear.z;

// Assuming the `_odom` object has correct angular velocity data
    transformed_odom.twist.twist.angular.x = curr_odom.twist.twist.angular.x;
    transformed_odom.twist.twist.angular.y = curr_odom.twist.twist.angular.y;
    transformed_odom.twist.twist.angular.z = curr_odom.twist.twist.angular.z;
    transformed_odom_pub_.publish(transformed_odom);
    has_odom_ = false;


}

void DepthImage::odomCallBack(const nav_msgs::Odometry::ConstPtr& odom_msg){

    has_odom_ = true;
    curr_odom = *odom_msg;
    DepthImage::publish_odom();

 
}  
