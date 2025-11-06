#set(CMAKE_AR "C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.28.29910/bin/Hostx64/x64/lib.exe")
message("CMAKE_AR               -------------------------  ${CMAKE_AR}")
#set(CMAKE_C_COMPILER   "C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.28.29910/bin/Hostx64/x64/cl.exe")
#set(CMAKE_CXX_COMPILER "C:/Program Files (x86)/Microsoft Visual Studio/2019/Community/VC/Tools/MSVC/14.28.29910/bin/Hostx64/x64/cl.exe")
set(CMAKE_BUILD_TYPE "Debug")
#set(COPY_PASTE_STYLE_LINKING 1)
cmake_minimum_required(VERSION 3.5)

#have visual studio compiler not optimize for speed
#add_compile_options(/Od)
#string(REPLACE "/O2" "/Od" CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE}")
#string(CONCAT CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE}" " /Zi")

##############################################################################
#grab our qrCore package
##############################################################################

set(QR_PROJECT_TYPE ROS2_PROJECT)
find_package(qr_core REQUIRED)

##############################################################################
# PROJECT
##############################################################################
#add_compile_options(/MD)
message("AO_TO_SET     -------------------------  ${AO_TO_SET}")
QR_project()

message("AO_TO_SET     -------------------------  ${AO_TO_SET}")
set(AO_TO_SET World)



set(POJECT_PACKAGE_DESCRIPTION "this is a template project for a simple composable node." )
set(POJECT_PACKAGE_AUTHOR "Hadi Jaber")
set(POJECT_PACKAGE_EMAIL "haditjuta@gmail.com")






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



 set(AO_TO_SET World)

##############################################################################
# Create target projects
##############################################################################
include(${CMAKE_CURRENT_SOURCE_DIR}/config/Targets.cmake)



function(get_all_targets var)
    set(targets)
    get_all_targets_recursive(targets ${CMAKE_CURRENT_SOURCE_DIR})
    set(${var} ${targets} PARENT_SCOPE)
endfunction()

get_all_targets(aoisdho)
foreach(target ${aoisdho})
    message(STATUS "aaaaaaaaaaaaaaaaaaTarget: ${target}")
endforeach()







#TODO: create function to automate this later
#rclcpp_components_register_nodes(${MODULE_NAME}_ROSlib_Gameobject  "${MODULE_NAME}::MyNode")
#rclcpp_components_register_nodes(${MODULE_NAME}_ROSlib_World  "${MODULE_NAME}::MyNode2")
#rclcpp_components_register_nodes(${MODULE_NAME}_ROSlib_World  "${MODULE_NAME}::MyNode3")
#rclcpp_components_register_nodes(${MODULE_NAME}_ROSlib  "${MODULE_NAME}::${node}")
#QR_Register_Nodes_As_Composable(NODE_LIST_TO_REGISTER "MyNode3" "MyNode2" "MyNode" )




##############################################################################
# export any libraries you want to export to make them find-able by other projects findpackage
##############################################################################

#QR_export_library_for_colcon()
#    FOR_TARGET ${PROJECT_NAME}_ROSlibrary
#    LIBRARY_INCLUDES_DIRECTORY include)


#rosidl_target_interfaces(templateprojectwev_ROSlib
#  ${MODULE_NAME}_rqt "rosidl_typesupport_cpp")
#rosidl_target_interfaces(my_exe_for_my_node
#  ${MODULE_NAME}_rqt "rosidl_typesupport_cpp")

QR_done()
  #CONFIG_EXTRAS "cmake/bla.cmake"


#install(
#  DIRECTORY cmake
#  DESTINATION share/${PROJECT_NAME}
#)

#ament_package()
