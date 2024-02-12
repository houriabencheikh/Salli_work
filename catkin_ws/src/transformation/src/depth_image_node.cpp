#include <ros/ros.h>
#include "transformation/depth_image.h"


int main(int argc, char** argv)
{   // node name depth_image
    ros::init(argc, argv, "depth_image");
    // access for the ros kommunication
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");

    DepthImage depth_image(nh, nh_private);
   
    // for loop 10/1s
    ros::Rate loop_rate(0.5);

    while (ros::ok())
    {
       
            depth_image.publishDepthImage();
        


        ros::spinOnce();

        loop_rate.sleep();
    }

    return 0;
}
