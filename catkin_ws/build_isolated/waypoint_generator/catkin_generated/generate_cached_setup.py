# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/noetic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/noetic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/bertmuc/SALLI/catkin_ws/devel_isolated/vfh3d;/home/bertmuc/SALLI/catkin_ws/devel_isolated/transformation;/home/bertmuc/SALLI/catkin_ws/devel_isolated/pointcloudTraj;/home/bertmuc/SALLI/catkin_ws/devel_isolated/odom_visualization;/home/bertmuc/SALLI/catkin_ws/devel_isolated/octomap;/home/bertmuc/SALLI/catkin_ws/devel_isolated/airsim_ros_pkgs;/home/bertmuc/SALLI/catkin_ws/devel_isolated/quadrotor_msgs;/home/bertmuc/SALLI/catkin_ws/devel_isolated/pose_utils;/home/bertmuc/SALLI/catkin_ws/devel_isolated/kdtree;/home/bertmuc/SALLI/catkin_ws/devel_isolated/catkin_simple;/opt/ros/noetic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python3/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/bertmuc/SALLI/catkin_ws/devel_isolated/waypoint_generator/env.sh')

output_filename = '/home/bertmuc/SALLI/catkin_ws/build_isolated/waypoint_generator/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
