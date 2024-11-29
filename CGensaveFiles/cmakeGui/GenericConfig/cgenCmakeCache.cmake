set(ISForQT FALSE)

#add_compile_definitions(ROS2_PROJECT)
add_compile_definitions(ISForQT__${ISForQT})
add_compile_definitions(CGEN_ALLOPTIONS="@ISForQT::FALSE ")
