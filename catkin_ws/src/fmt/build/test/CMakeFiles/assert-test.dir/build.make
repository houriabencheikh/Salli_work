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
CMAKE_SOURCE_DIR = /home/bertmuc/SALLI/catkin_ws/src/fmt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bertmuc/SALLI/catkin_ws/src/fmt/build

# Include any dependencies generated for this target.
include test/CMakeFiles/assert-test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/assert-test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/assert-test.dir/flags.make

test/CMakeFiles/assert-test.dir/assert-test.cc.o: test/CMakeFiles/assert-test.dir/flags.make
test/CMakeFiles/assert-test.dir/assert-test.cc.o: ../test/assert-test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bertmuc/SALLI/catkin_ws/src/fmt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/assert-test.dir/assert-test.cc.o"
	cd /home/bertmuc/SALLI/catkin_ws/src/fmt/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/assert-test.dir/assert-test.cc.o -c /home/bertmuc/SALLI/catkin_ws/src/fmt/test/assert-test.cc

test/CMakeFiles/assert-test.dir/assert-test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assert-test.dir/assert-test.cc.i"
	cd /home/bertmuc/SALLI/catkin_ws/src/fmt/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bertmuc/SALLI/catkin_ws/src/fmt/test/assert-test.cc > CMakeFiles/assert-test.dir/assert-test.cc.i

test/CMakeFiles/assert-test.dir/assert-test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assert-test.dir/assert-test.cc.s"
	cd /home/bertmuc/SALLI/catkin_ws/src/fmt/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bertmuc/SALLI/catkin_ws/src/fmt/test/assert-test.cc -o CMakeFiles/assert-test.dir/assert-test.cc.s

# Object files for target assert-test
assert__test_OBJECTS = \
"CMakeFiles/assert-test.dir/assert-test.cc.o"

# External object files for target assert-test
assert__test_EXTERNAL_OBJECTS =

bin/assert-test: test/CMakeFiles/assert-test.dir/assert-test.cc.o
bin/assert-test: test/CMakeFiles/assert-test.dir/build.make
bin/assert-test: test/libtest-main.a
bin/assert-test: libfmt.a
bin/assert-test: test/gtest/libgtest.a
bin/assert-test: test/CMakeFiles/assert-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bertmuc/SALLI/catkin_ws/src/fmt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/assert-test"
	cd /home/bertmuc/SALLI/catkin_ws/src/fmt/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assert-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/assert-test.dir/build: bin/assert-test

.PHONY : test/CMakeFiles/assert-test.dir/build

test/CMakeFiles/assert-test.dir/clean:
	cd /home/bertmuc/SALLI/catkin_ws/src/fmt/build/test && $(CMAKE_COMMAND) -P CMakeFiles/assert-test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/assert-test.dir/clean

test/CMakeFiles/assert-test.dir/depend:
	cd /home/bertmuc/SALLI/catkin_ws/src/fmt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bertmuc/SALLI/catkin_ws/src/fmt /home/bertmuc/SALLI/catkin_ws/src/fmt/test /home/bertmuc/SALLI/catkin_ws/src/fmt/build /home/bertmuc/SALLI/catkin_ws/src/fmt/build/test /home/bertmuc/SALLI/catkin_ws/src/fmt/build/test/CMakeFiles/assert-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/assert-test.dir/depend
