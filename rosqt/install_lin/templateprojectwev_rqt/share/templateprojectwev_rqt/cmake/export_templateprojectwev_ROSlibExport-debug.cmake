#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "templateprojectwev_rqt::templateprojectwev_ROSlib" for configuration "Debug"
set_property(TARGET templateprojectwev_rqt::templateprojectwev_ROSlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(templateprojectwev_rqt::templateprojectwev_ROSlib PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libtemplateprojectwev_ROSlib.so"
  IMPORTED_SONAME_DEBUG "libtemplateprojectwev_ROSlib.so"
  )

list(APPEND _cmake_import_check_targets templateprojectwev_rqt::templateprojectwev_ROSlib )
list(APPEND _cmake_import_check_files_for_templateprojectwev_rqt::templateprojectwev_ROSlib "${_IMPORT_PREFIX}/lib/libtemplateprojectwev_ROSlib.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
