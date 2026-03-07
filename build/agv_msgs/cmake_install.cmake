# Install script for directory: /home/mkac/mav_ws/src/agv_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/srv" TYPE FILE FILES
    "/home/mkac/mav_ws/src/agv_msgs/srv/DataCheck.srv"
    "/home/mkac/mav_ws/src/agv_msgs/srv/SetDigitalOutput.srv"
    "/home/mkac/mav_ws/src/agv_msgs/srv/WaypointsPath.srv"
    "/home/mkac/mav_ws/src/agv_msgs/srv/ArrayWaypoints.srv"
    "/home/mkac/mav_ws/src/agv_msgs/srv/DirectionMove.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/msg" TYPE FILE FILES
    "/home/mkac/mav_ws/src/agv_msgs/msg/DigitalSensor.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/FollowLineSensor.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/FollowLineControl.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/DiffDriverMotorSpeed.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/ArduinoIO.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/HmiControl.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/BasicFunction.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/CardWithFunction.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/DataChanged.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/CardID.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/SafetyStt.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/SafetyControl.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/EncoderDifferential.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/LedControl.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/Pid.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/WaypointGlobal.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/CartesianCoordinate.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/CartesianPosition.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/DataMatrixStamped.msg"
    "/home/mkac/mav_ws/src/agv_msgs/msg/ErrorRobotToPath.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES "/home/mkac/mav_ws/build/agv_msgs/catkin_generated/installspace/agv_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/include/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/share/roseus/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/share/common-lisp/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/share/gennodejs/ros/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/mkac/mav_ws/devel/lib/python3/dist-packages/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mkac/mav_ws/devel/lib/python3/dist-packages/agv_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mkac/mav_ws/build/agv_msgs/catkin_generated/installspace/agv_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES "/home/mkac/mav_ws/build/agv_msgs/catkin_generated/installspace/agv_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs/cmake" TYPE FILE FILES
    "/home/mkac/mav_ws/build/agv_msgs/catkin_generated/installspace/agv_msgsConfig.cmake"
    "/home/mkac/mav_ws/build/agv_msgs/catkin_generated/installspace/agv_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/agv_msgs" TYPE FILE FILES "/home/mkac/mav_ws/src/agv_msgs/package.xml")
endif()

