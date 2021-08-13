# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "robot_do_an: 0 messages, 0 services")

set(MSG_I_FLAGS "-Igazebo_msgs:/opt/ros/noetic/share/gazebo_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/noetic/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_do_an_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(robot_do_an
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_do_an
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_do_an_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_do_an_generate_messages robot_do_an_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(robot_do_an_gencpp)
add_dependencies(robot_do_an_gencpp robot_do_an_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_do_an_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(robot_do_an
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_do_an
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_do_an_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_do_an_generate_messages robot_do_an_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(robot_do_an_geneus)
add_dependencies(robot_do_an_geneus robot_do_an_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_do_an_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(robot_do_an
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_do_an
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_do_an_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_do_an_generate_messages robot_do_an_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(robot_do_an_genlisp)
add_dependencies(robot_do_an_genlisp robot_do_an_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_do_an_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(robot_do_an
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_do_an
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_do_an_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_do_an_generate_messages robot_do_an_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(robot_do_an_gennodejs)
add_dependencies(robot_do_an_gennodejs robot_do_an_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_do_an_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(robot_do_an
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_do_an
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_do_an_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_do_an_generate_messages robot_do_an_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(robot_do_an_genpy)
add_dependencies(robot_do_an_genpy robot_do_an_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_do_an_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_do_an)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_do_an
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_cpp)
  add_dependencies(robot_do_an_generate_messages_cpp gazebo_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_do_an_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_do_an)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_do_an
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_eus)
  add_dependencies(robot_do_an_generate_messages_eus gazebo_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_do_an_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_do_an)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_do_an
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_lisp)
  add_dependencies(robot_do_an_generate_messages_lisp gazebo_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_do_an_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_do_an)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_do_an
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_nodejs)
  add_dependencies(robot_do_an_generate_messages_nodejs gazebo_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_do_an_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_do_an)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_do_an\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_do_an
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET gazebo_msgs_generate_messages_py)
  add_dependencies(robot_do_an_generate_messages_py gazebo_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_do_an_generate_messages_py std_msgs_generate_messages_py)
endif()
