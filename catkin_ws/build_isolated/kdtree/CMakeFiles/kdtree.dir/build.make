# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bertmuc/SALLI/catkin_ws/src/pointcloudTraj/Utils/kdtree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bertmuc/SALLI/catkin_ws/build_isolated/kdtree

# Include any dependencies generated for this target.
include CMakeFiles/kdtree.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/kdtree.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/kdtree.dir/flags.make

CMakeFiles/kdtree.dir/src/kdtree.c.o: CMakeFiles/kdtree.dir/flags.make
CMakeFiles/kdtree.dir/src/kdtree.c.o: /home/bertmuc/SALLI/catkin_ws/src/pointcloudTraj/Utils/kdtree/src/kdtree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bertmuc/SALLI/catkin_ws/build_isolated/kdtree/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/kdtree.dir/src/kdtree.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/kdtree.dir/src/kdtree.c.o   -c /home/bertmuc/SALLI/catkin_ws/src/pointcloudTraj/Utils/kdtree/src/kdtree.c

CMakeFiles/kdtree.dir/src/kdtree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/kdtree.dir/src/kdtree.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bertmuc/SALLI/catkin_ws/src/pointcloudTraj/Utils/kdtree/src/kdtree.c > CMakeFiles/kdtree.dir/src/kdtree.c.i

CMakeFiles/kdtree.dir/src/kdtree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/kdtree.dir/src/kdtree.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bertmuc/SALLI/catkin_ws/src/pointcloudTraj/Utils/kdtree/src/kdtree.c -o CMakeFiles/kdtree.dir/src/kdtree.c.s

# Object files for target kdtree
kdtree_OBJECTS = \
"CMakeFiles/kdtree.dir/src/kdtree.c.o"

# External object files for target kdtree
kdtree_EXTERNAL_OBJECTS =

/home/bertmuc/SALLI/catkin_ws/devel_isolated/kdtree/lib/libkdtree.so: CMakeFiles/kdtree.dir/src/kdtree.c.o
/home/bertmuc/SALLI/catkin_ws/devel_isolated/kdtree/lib/libkdtree.so: CMakeFiles/kdtree.dir/build.make
/home/bertmuc/SALLI/catkin_ws/devel_isolated/kdtree/lib/libkdtree.so: CMakeFiles/kdtree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bertmuc/SALLI/catkin_ws/build_isolated/kdtree/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library /home/bertmuc/SALLI/catkin_ws/devel_isolated/kdtree/lib/libkdtree.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kdtree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/kdtree.dir/build: /home/bertmuc/SALLI/catkin_ws/devel_isolated/kdtree/lib/libkdtree.so

.PHONY : CMakeFiles/kdtree.dir/build

CMakeFiles/kdtree.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/kdtree.dir/cmake_clean.cmake
.PHONY : CMakeFiles/kdtree.dir/clean

CMakeFiles/kdtree.dir/depend:
	cd /home/bertmuc/SALLI/catkin_ws/build_isolated/kdtree && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bertmuc/SALLI/catkin_ws/src/pointcloudTraj/Utils/kdtree /home/bertmuc/SALLI/catkin_ws/src/pointcloudTraj/Utils/kdtree /home/bertmuc/SALLI/catkin_ws/build_isolated/kdtree /home/bertmuc/SALLI/catkin_ws/build_isolated/kdtree /home/bertmuc/SALLI/catkin_ws/build_isolated/kdtree/CMakeFiles/kdtree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/kdtree.dir/depend

