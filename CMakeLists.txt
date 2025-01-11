

set(CMAKE_BUILD_TYPE "Debug")
cmake_minimum_required(VERSION 3.5)


##############################################################################
#grab our qrCore package
##############################################################################
set(QR_PROJECT_TYPE SIMPLECPP_PROJECT)
find_package(qr_core REQUIRED)

QR_module(templateprojectwev)


set(POJECT_PACKAGE_DESCRIPTION "this is a simple cpp library that is using colcon for the packaging system" )
set(POJECT_PACKAGE_AUTHOR "Hadi Jaber")
set(POJECT_PACKAGE_EMAIL "haditjuta@gmail.com")

##############################################################################
# PROJECT
##############################################################################
QR_project()


#set the AOs present in this module
QR_set_AO(World)
QR_set_AO(Gameobject)
#include("${CMAKE_CURRENT_SOURCE_DIR}/config/AOConfig.cmake")


message("AO_TO_SET =============   ${AO_TO_SET}")
  

##############################################################################
# DEPENDENCIES | add your ROS dependency packags here. (the Find_List_Of_Ros_Packages() function will generate the packages.xml file
##############################################################################

include(${CMAKE_CURRENT_SOURCE_DIR}/config/DepNames.cmake)

QR_Find_List_Of_Ros_Packages(
    PACKAGES_INTERFACE_LIST
    ${MODULE_DEPENDS_IF}
    PACKAGES_CPP_LIST
    ${MODULE_DEPENDS_CP}
    PACKAGES_ROSQT_LIST
    ${MODULE_DEPENDS_RQT}

    NON_QR_PACKAGES_LIST
    ${MODULE_DEPENDS_NONQR}
    NON_QR_PACKAGES_INTERFACE_LIST
    example_interfaces
    std_msgs
    )


    #  my_composable_node_i


     # PACKAGES_INTERFACE_LIST
     # example_interfaces
     # std_msgs




##############################################################################
# create targets
##############################################################################

include(${CMAKE_CURRENT_SOURCE_DIR}/config/Targets.cmake)


function(get_all_targets var)
    set(targets)
    get_all_targets_recursive(targets ${CMAKE_CURRENT_SOURCE_DIR})
    set(${var} ${targets} PARENT_SCOPE)
endfunction()

get_all_targets(aoisdho)
foreach(target ${aoisdho})
    message(STATUS "Target: ${target}")
endforeach()


QR_done()



