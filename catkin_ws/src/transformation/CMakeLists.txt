cmake_minimum_required(VERSION 3.0.2)
project(transformation)

#set(AIRSIM_ROOT  ${CMAKE_CURRENT_SOURCE_DIR}/../../../AirSim)

#add_subdirectory("${AIRSIM_ROOT}/cmake/rpclib_wrapper" rpclib_wrapper)
#add_subdirectory("${AIRSIM_ROOT}/cmake/AirLib" AirLib)
#add_subdirectory("${AIRSIM_ROOT}/cmake/MavLinkCom" MavLinkCom)
# Compile as C++11, supported in ROS Kinetic and newer
set(CMAKE_VERBOSE_MAKEFILE "true")
set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_CXX_FLAGS "-std=c++14 -march=native -DEIGEN_DONT_PARALLELIZE ${CMAKE_CXX_FLAGS} -g -O3 -Wall")
## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  sensor_msgs
  nav_msgs
  pcl_ros
  pcl_conversions
  quadrotor_msgs
  geometry_msgs
  airsim_ros_pkgs
  cv_bridge
  octomap_ros
)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})



catkin_package(
  INCLUDE_DIRS include
#  LIBRARIES my_transformations
#  CATKIN_DEPENDS roscpp std_msgs
 CATKIN_DEPENDS roscpp std_msgs sensor_msgs nav_msgs pcl_ros quadrotor_msgs geometry_msgs airsim_ros_pkgs cv_bridge  octomap_ros
 airsim_ros_pkgs
)


## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  #${AIRSIM_ROOT}/AirLib/deps/eigen3
 # ${AIRSIM_ROOT}/AirLib/include
  #${AIRSIM_ROOT}/AirLib/deps/rpclib/include
 # ${RPC_LIB_INCLUDES}
)


#add_library(my_transformations src/my_transformations.cpp)
#add_dependencies(my_transformations ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
#add_dependencies(my_transformations ${catkin_EXPORTED_TARGETS})

add_library(transformation src/pct_transformation.cpp src/depth_image.cpp src/vfh_transformation.cpp   )

#add_library(target_position src/depth_image.cpp)

add_dependencies(transformation ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})



add_executable(pct_transformation_node src/pct_transformation_node.cpp)
target_link_libraries(
  pct_transformation_node
  transformation 
  ${catkin_LIBRARIES} 
 # AirLib              # Uncomment if linking against AirLib
  #${RPC_LIB}          # Uncomment or resolve RPC_LIB if necessary
)


add_executable(depth_image_node src/depth_image_node.cpp)
target_link_libraries(
  depth_image_node
  transformation  
  ${catkin_LIBRARIES} ${OpenCV_LIBS}
)

add_executable(vfh_transformation_node src/vfh_transformation_node.cpp)
target_link_libraries(
  vfh_transformation_node
  transformation 
  ${catkin_LIBRARIES} 
 # AirLib              # Uncomment if linking against AirLib
  #${RPC_LIB}          # Uncomment or resolve RPC_LIB if necessary
)



install(TARGETS
    #list of nodes
    pct_transformation_node
    vfh_transformation_node
    depth_image_node
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

# Install executables and libraries
install(TARGETS 
  transformation
  pct_transformation_node 
  depth_image_node 
  vfh_transformation_node

  #RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)


# for shipping binaries. run `$ catin_make install`
install(DIRECTORY
  launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  # PATTERN ".git" EXCLUDE
)
