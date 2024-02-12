# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vfh3d: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vfh3d_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv" NAME_WE)
add_custom_target(_vfh3d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vfh3d" "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/TwistStamped:geometry_msgs/Twist"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(vfh3d
  "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfh3d
)

### Generating Module File
_generate_module_cpp(vfh3d
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfh3d
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vfh3d_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vfh3d_generate_messages vfh3d_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv" NAME_WE)
add_dependencies(vfh3d_generate_messages_cpp _vfh3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfh3d_gencpp)
add_dependencies(vfh3d_gencpp vfh3d_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfh3d_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(vfh3d
  "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfh3d
)

### Generating Module File
_generate_module_eus(vfh3d
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfh3d
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vfh3d_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vfh3d_generate_messages vfh3d_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv" NAME_WE)
add_dependencies(vfh3d_generate_messages_eus _vfh3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfh3d_geneus)
add_dependencies(vfh3d_geneus vfh3d_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfh3d_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(vfh3d
  "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfh3d
)

### Generating Module File
_generate_module_lisp(vfh3d
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfh3d
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vfh3d_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vfh3d_generate_messages vfh3d_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv" NAME_WE)
add_dependencies(vfh3d_generate_messages_lisp _vfh3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfh3d_genlisp)
add_dependencies(vfh3d_genlisp vfh3d_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfh3d_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(vfh3d
  "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfh3d
)

### Generating Module File
_generate_module_nodejs(vfh3d
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfh3d
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vfh3d_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vfh3d_generate_messages vfh3d_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv" NAME_WE)
add_dependencies(vfh3d_generate_messages_nodejs _vfh3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfh3d_gennodejs)
add_dependencies(vfh3d_gennodejs vfh3d_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfh3d_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(vfh3d
  "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfh3d
)

### Generating Module File
_generate_module_py(vfh3d
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfh3d
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vfh3d_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vfh3d_generate_messages vfh3d_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bertmuc/SALLI/catkin_ws/src/vfh3d/srv/CorrectTarget.srv" NAME_WE)
add_dependencies(vfh3d_generate_messages_py _vfh3d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfh3d_genpy)
add_dependencies(vfh3d_genpy vfh3d_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfh3d_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfh3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfh3d
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(vfh3d_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfh3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfh3d
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(vfh3d_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfh3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfh3d
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(vfh3d_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfh3d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfh3d
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(vfh3d_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfh3d)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfh3d\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfh3d
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(vfh3d_generate_messages_py geometry_msgs_generate_messages_py)
endif()
