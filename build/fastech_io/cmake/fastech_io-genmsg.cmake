# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fastech_io: 1 messages, 2 services")

set(MSG_I_FLAGS "-Ifastech_io:/home/mkac/mav_ws/src/fastech_io/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fastech_io_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/msg/io.msg" NAME_WE)
add_custom_target(_fastech_io_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fastech_io" "/home/mkac/mav_ws/src/fastech_io/msg/io.msg" ""
)

get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv" NAME_WE)
add_custom_target(_fastech_io_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fastech_io" "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv" ""
)

get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv" NAME_WE)
add_custom_target(_fastech_io_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fastech_io" "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/msg/io.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fastech_io
)

### Generating Services
_generate_srv_cpp(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fastech_io
)
_generate_srv_cpp(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fastech_io
)

### Generating Module File
_generate_module_cpp(fastech_io
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fastech_io
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fastech_io_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fastech_io_generate_messages fastech_io_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/msg/io.msg" NAME_WE)
add_dependencies(fastech_io_generate_messages_cpp _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_cpp _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_cpp _fastech_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fastech_io_gencpp)
add_dependencies(fastech_io_gencpp fastech_io_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fastech_io_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/msg/io.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fastech_io
)

### Generating Services
_generate_srv_eus(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fastech_io
)
_generate_srv_eus(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fastech_io
)

### Generating Module File
_generate_module_eus(fastech_io
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fastech_io
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fastech_io_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fastech_io_generate_messages fastech_io_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/msg/io.msg" NAME_WE)
add_dependencies(fastech_io_generate_messages_eus _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_eus _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_eus _fastech_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fastech_io_geneus)
add_dependencies(fastech_io_geneus fastech_io_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fastech_io_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/msg/io.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fastech_io
)

### Generating Services
_generate_srv_lisp(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fastech_io
)
_generate_srv_lisp(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fastech_io
)

### Generating Module File
_generate_module_lisp(fastech_io
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fastech_io
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fastech_io_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fastech_io_generate_messages fastech_io_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/msg/io.msg" NAME_WE)
add_dependencies(fastech_io_generate_messages_lisp _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_lisp _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_lisp _fastech_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fastech_io_genlisp)
add_dependencies(fastech_io_genlisp fastech_io_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fastech_io_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/msg/io.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fastech_io
)

### Generating Services
_generate_srv_nodejs(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fastech_io
)
_generate_srv_nodejs(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fastech_io
)

### Generating Module File
_generate_module_nodejs(fastech_io
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fastech_io
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fastech_io_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fastech_io_generate_messages fastech_io_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/msg/io.msg" NAME_WE)
add_dependencies(fastech_io_generate_messages_nodejs _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_nodejs _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_nodejs _fastech_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fastech_io_gennodejs)
add_dependencies(fastech_io_gennodejs fastech_io_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fastech_io_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/msg/io.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fastech_io
)

### Generating Services
_generate_srv_py(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fastech_io
)
_generate_srv_py(fastech_io
  "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fastech_io
)

### Generating Module File
_generate_module_py(fastech_io
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fastech_io
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fastech_io_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fastech_io_generate_messages fastech_io_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/msg/io.msg" NAME_WE)
add_dependencies(fastech_io_generate_messages_py _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/SetValueOutput.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_py _fastech_io_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mkac/mav_ws/src/fastech_io/srv/GetIO.srv" NAME_WE)
add_dependencies(fastech_io_generate_messages_py _fastech_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fastech_io_genpy)
add_dependencies(fastech_io_genpy fastech_io_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fastech_io_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fastech_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fastech_io
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(fastech_io_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fastech_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fastech_io
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(fastech_io_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fastech_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fastech_io
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(fastech_io_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fastech_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fastech_io
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(fastech_io_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fastech_io)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fastech_io\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fastech_io
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(fastech_io_generate_messages_py std_msgs_generate_messages_py)
endif()
