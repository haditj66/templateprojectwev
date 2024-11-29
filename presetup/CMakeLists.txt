##############################################################################
# PROJECT
##############################################################################



set(CMAKE_BUILD_TYPE "Debug")
cmake_minimum_required(VERSION 3.5)
project(just_a_setup)


set(QR_PROJECT_TYPE QR_PROJECT_SETUP)
 

if(WIN32)
    set(CMAKE_BINARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/build/win)
    set(CMAKE_CURRENT_BINARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/build/win)
else()
    set(CMAKE_BINARY_DIR ${CMAKE_CURRENT_SOURCE_DIR}/build/lin)
endif()


##############################################################################
# CMAKE | As found in ROS2 eloquent distribution
##############################################################################


#grab our qrCore package
find_package(qr_core REQUIRED)


