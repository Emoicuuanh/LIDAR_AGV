# Install script for directory: /home/mkac/mav_ws/src/mission_manager

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mkac/mav_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mission_manager/action" TYPE FILE FILES
    "/home/mkac/mav_ws/src/mission_manager/action/CheckPositionStatus.action"
    "/home/mkac/mav_ws/src/mission_manager/action/Mission.action"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mission_manager/msg" TYPE FILE FILES
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/CheckPositionStatusAction.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/CheckPositionStatusActionGoal.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/CheckPositionStatusActionResult.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/CheckPositionStatusActionFeedback.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/CheckPositionStatusGoal.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/CheckPositionStatusResult.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/CheckPositionStatusFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mission_manager/msg" TYPE FILE FILES
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/MissionAction.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/MissionActionGoal.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/MissionActionResult.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/MissionActionFeedback.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/MissionGoal.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/MissionResult.msg"
    "/home/mkac/mav_ws/devel/share/mission_manager/msg/MissionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mission_manager/cmake" TYPE FILE FILES "/home/mkac/mav_ws/build/mission_manager/catkin_generated/installspace/mission_manager-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/include/mission_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/share/roseus/ros/mission_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/share/common-lisp/ros/mission_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/share/gennodejs/ros/mission_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/mkac/mav_ws/devel/lib/python3/dist-packages/mission_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/lib/python3/dist-packages/mission_manager")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mkac/mav_ws/build/mission_manager/catkin_generated/installspace/mission_manager.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mission_manager/cmake" TYPE FILE FILES "/home/mkac/mav_ws/build/mission_manager/catkin_generated/installspace/mission_manager-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mission_manager/cmake" TYPE FILE FILES
    "/home/mkac/mav_ws/build/mission_manager/catkin_generated/installspace/mission_managerConfig.cmake"
    "/home/mkac/mav_ws/build/mission_manager/catkin_generated/installspace/mission_managerConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mission_manager" TYPE FILE FILES "/home/mkac/mav_ws/src/mission_manager/package.xml")
endif()

