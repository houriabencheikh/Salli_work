# Install script for directory: /home/bertmuc/SALLI/catkin_ws/src/Sophus

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bertmuc/SALLI/catkin_ws/devel_isolated/sophus")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/sophus/cmake/SophusTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/sophus/cmake/SophusTargets.cmake"
         "/home/bertmuc/SALLI/catkin_ws/build_isolated/sophus/devel/CMakeFiles/Export/share/sophus/cmake/SophusTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/sophus/cmake/SophusTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/sophus/cmake/SophusTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sophus/cmake" TYPE FILE FILES "/home/bertmuc/SALLI/catkin_ws/build_isolated/sophus/devel/CMakeFiles/Export/share/sophus/cmake/SophusTargets.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sophus/cmake" TYPE FILE FILES
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/sophus/devel/SophusConfig.cmake"
    "/home/bertmuc/SALLI/catkin_ws/build_isolated/sophus/devel/SophusConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sophus" TYPE FILE FILES
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/average.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/cartesian.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/ceres_local_parameterization.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/ceres_manifold.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/ceres_typetraits.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/common.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/geometry.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/interpolate.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/interpolate_details.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/num_diff.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/rotation_matrix.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/rxso2.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/rxso3.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/se2.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/se3.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/sim2.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/sim3.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/sim_details.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/so2.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/so3.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/spline.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/types.hpp"
    "/home/bertmuc/SALLI/catkin_ws/src/Sophus/sophus/velocities.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/bertmuc/SALLI/catkin_ws/build_isolated/sophus/devel/test/cmake_install.cmake")
  include("/home/bertmuc/SALLI/catkin_ws/build_isolated/sophus/devel/examples/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/bertmuc/SALLI/catkin_ws/build_isolated/sophus/devel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
