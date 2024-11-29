#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "templateprojectwev_cp::templateprojectwev_CPPlib" for configuration "Debug"
set_property(TARGET templateprojectwev_cp::templateprojectwev_CPPlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(templateprojectwev_cp::templateprojectwev_CPPlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libtemplateprojectwev_CPPlib.a"
  )

list(APPEND _cmake_import_check_targets templateprojectwev_cp::templateprojectwev_CPPlib )
list(APPEND _cmake_import_check_files_for_templateprojectwev_cp::templateprojectwev_CPPlib "${_IMPORT_PREFIX}/lib/libtemplateprojectwev_CPPlib.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
