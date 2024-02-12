#include <ros/ros.h>
#include "transformation/vfh_transformation.h"


int main(int argc, char** argv)
{   // node name target_position
    ros::init(argc, argv, "vfh_transformation");
    // access for the ros kommunication
    ros::NodeHandle nh;
    ros::NodeHandle nh_private("~");

    VfhTransformation vfh_transformation(nh, nh_private);
   
    ros::Rate loop_rate(0.5);

    while (ros::ok())
    {
       
            vfh_transformation.publishVfhTransformation();
            //vfh_transformation.publishTargetPosition();
        


        ros::spinOnce();

        loop_rate.sleep();
    }

    return 0;
}
