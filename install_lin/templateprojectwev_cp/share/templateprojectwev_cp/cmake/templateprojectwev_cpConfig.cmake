# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_templateprojectwev_cp_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED templateprojectwev_cp_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(templateprojectwev_cp_FOUND FALSE)
  elseif(NOT templateprojectwev_cp_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(templateprojectwev_cp_FOUND FALSE)
  endif()
  return()
endif()
set(_templateprojectwev_cp_CONFIG_INCLUDED TRUE)

# output package information
if(NOT templateprojectwev_cp_FIND_QUIETLY)
  message(STATUS "Found templateprojectwev_cp: 0.0.1 (${templateprojectwev_cp_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'templateprojectwev_cp' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT templateprojectwev_cp_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(templateprojectwev_cp_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "AOConfig.cmake;ament_cmake_export_targets-extras.cmake")
foreach(_extra ${_extras})
  include("${templateprojectwev_cp_DIR}/${_extra}")
endforeach()
