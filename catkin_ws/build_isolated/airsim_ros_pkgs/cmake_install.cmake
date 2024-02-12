# Install script for directory: /home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bertmuc/SALLI/catkin_ws/install_isolated")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bertmuc/SALLI/catkin_ws/install_isolated/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bertmuc/SALLI/catkin_ws/install_isolated" TYPE PROGRAM FILES "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bertmuc/SALLI/catkin_ws/install_isolated/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bertmuc/SALLI/catkin_ws/install_isolated" TYPE PROGRAM FILES "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bertmuc/SALLI/catkin_ws/install_isolated/setup.bash;/home/bertmuc/SALLI/catkin_ws/install_isolated/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bertmuc/SALLI/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/setup.bash"
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bertmuc/SALLI/catkin_ws/install_isolated/setup.sh;/home/bertmuc/SALLI/catkin_ws/install_isolated/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bertmuc/SALLI/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/setup.sh"
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bertmuc/SALLI/catkin_ws/install_isolated/setup.zsh;/home/bertmuc/SALLI/catkin_ws/install_isolated/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bertmuc/SALLI/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/setup.zsh"
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/bertmuc/SALLI/catkin_ws/install_isolated/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/bertmuc/SALLI/catkin_ws/install_isolated" TYPE FILE FILES "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/msg" TYPE FILE FILES
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/GimbalAngleEulerCmd.msg"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/GimbalAngleQuatCmd.msg"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/GPSYaw.msg"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/VelCmd.msg"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/VelCmdGroup.msg"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/CarControls.msg"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/CarState.msg"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/Altimeter.msg"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/msg/Environment.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/srv" TYPE FILE FILES
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/srv/SetGPSPosition.srv"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/srv/Takeoff.srv"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/srv/TakeoffGroup.srv"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/srv/Land.srv"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/srv/LandGroup.srv"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/srv/Reset.srv"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/srv/SetLocalPosition.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/cmake" TYPE FILE FILES "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/include/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/share/roseus/ros/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/share/common-lisp/ros/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/share/gennodejs/ros/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib/python3/dist-packages/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib/python3/dist-packages/airsim_ros_pkgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/cmake" TYPE FILE FILES "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs/cmake" TYPE FILE FILES
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgsConfig.cmake"
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/catkin_generated/installspace/airsim_ros_pkgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs" TYPE FILE FILES "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/airsim_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/airsim_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/airsim_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs" TYPE EXECUTABLE FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib/airsim_ros_pkgs/airsim_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/airsim_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/airsim_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/airsim_node"
         OLD_RPATH "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib:/opt/ros/noetic/lib:/home/bertmuc/SALLI/catkin_ws/devel_isolated/quadrotor_msgs/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/airsim_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs" TYPE EXECUTABLE FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib/airsim_ros_pkgs/pd_position_controller_simple_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node"
         OLD_RPATH "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib:/opt/ros/noetic/lib:/home/bertmuc/SALLI/catkin_ws/devel_isolated/quadrotor_msgs/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/airsim_ros_pkgs/pd_position_controller_simple_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib/libairsim_ros.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so"
         OLD_RPATH "/opt/ros/noetic/lib:/home/bertmuc/SALLI/catkin_ws/devel_isolated/quadrotor_msgs/lib:/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libairsim_ros.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs/lib/libpd_position_controller_simple.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpd_position_controller_simple.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs" TYPE FILE FILES "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/README.md")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/airsim_ros_pkgs" TYPE DIRECTORY FILES
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/launch"
    "/home/bertmuc/SALLI/catkin_ws/src/airsim_ros_pkgs/rviz"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/rpclib_wrapper/cmake_install.cmake")
  include("/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/AirLib/cmake_install.cmake")
  include("/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/MavLinkCom/cmake_install.cmake")
  include("/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/bertmuc/SALLI/catkin_ws/build_isolated/airsim_ros_pkgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
