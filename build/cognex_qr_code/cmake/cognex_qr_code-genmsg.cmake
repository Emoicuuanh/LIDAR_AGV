# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cognex_qr_code: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cognex_qr_code_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv" NAME_WE)
add_custom_target(_cognex_qr_code_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cognex_qr_code" "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cognex_qr_code
  "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cognex_qr_code
)

### Generating Module File
_generate_module_cpp(cognex_qr_code
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cognex_qr_code
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cognex_qr_code_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cognex_qr_code_generate_messages cognex_qr_code_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv" NAME_WE)
add_dependencies(cognex_qr_code_generate_messages_cpp _cognex_qr_code_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cognex_qr_code_gencpp)
add_dependencies(cognex_qr_code_gencpp cognex_qr_code_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cognex_qr_code_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cognex_qr_code
  "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cognex_qr_code
)

### Generating Module File
_generate_module_eus(cognex_qr_code
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cognex_qr_code
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cognex_qr_code_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cognex_qr_code_generate_messages cognex_qr_code_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv" NAME_WE)
add_dependencies(cognex_qr_code_generate_messages_eus _cognex_qr_code_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cognex_qr_code_geneus)
add_dependencies(cognex_qr_code_geneus cognex_qr_code_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cognex_qr_code_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cognex_qr_code
  "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cognex_qr_code
)

### Generating Module File
_generate_module_lisp(cognex_qr_code
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cognex_qr_code
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cognex_qr_code_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cognex_qr_code_generate_messages cognex_qr_code_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv" NAME_WE)
add_dependencies(cognex_qr_code_generate_messages_lisp _cognex_qr_code_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cognex_qr_code_genlisp)
add_dependencies(cognex_qr_code_genlisp cognex_qr_code_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cognex_qr_code_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cognex_qr_code
  "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cognex_qr_code
)

### Generating Module File
_generate_module_nodejs(cognex_qr_code
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cognex_qr_code
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cognex_qr_code_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cognex_qr_code_generate_messages cognex_qr_code_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv" NAME_WE)
add_dependencies(cognex_qr_code_generate_messages_nodejs _cognex_qr_code_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cognex_qr_code_gennodejs)
add_dependencies(cognex_qr_code_gennodejs cognex_qr_code_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cognex_qr_code_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cognex_qr_code
  "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cognex_qr_code
)

### Generating Module File
_generate_module_py(cognex_qr_code
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cognex_qr_code
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cognex_qr_code_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cognex_qr_code_generate_messages cognex_qr_code_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mkac/mav_ws/src/cognex_qr_code/srv/QrCode.srv" NAME_WE)
add_dependencies(cognex_qr_code_generate_messages_py _cognex_qr_code_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cognex_qr_code_genpy)
add_dependencies(cognex_qr_code_genpy cognex_qr_code_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cognex_qr_code_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cognex_qr_code)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cognex_qr_code
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cognex_qr_code_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cognex_qr_code)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cognex_qr_code
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cognex_qr_code_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cognex_qr_code)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cognex_qr_code
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cognex_qr_code_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cognex_qr_code)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cognex_qr_code
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cognex_qr_code_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cognex_qr_code)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cognex_qr_code\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cognex_qr_code
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cognex_qr_code_generate_messages_py std_msgs_generate_messages_py)
endif()
