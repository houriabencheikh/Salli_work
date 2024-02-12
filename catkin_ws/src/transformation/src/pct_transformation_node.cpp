#include <ros/ros.h>
#include "transformation/pct_transformation.h"


int main(int argc, char** argv)
{   // node name target_position
    ros::init(argc, argv, "pct_transformation");
    // access for the ros kommunication
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");

    PctTransformation pct_transformation(nh, nh_private);
   
    // for loop 10/1s
    ros::Rate loop_rate(0.5);

    while (ros::ok())
    {
       
            pct_transformation.publishPctTransformation();
        


        ros::spinOnce();

        loop_rate.sleep();
    }

    return 0;
}
