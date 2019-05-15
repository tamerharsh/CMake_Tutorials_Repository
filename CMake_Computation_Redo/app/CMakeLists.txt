add_executable(${proj_name} main.cpp)
include_directories(${computation_lib_include} )

target_link_libraries(${proj_name}  Computation_lib )


#target_compile_options(${proj_name} PUBLIC -Werror)
target_compile_definitions(${proj_name} PRIVATE $<$<CONFIG:Debug>:DEBUG_BUILD>)
target_compile_features(${proj_name} PRIVATE  cxx_std_11)
#target_compile_options(${proj_name} PUBLIC -Werror -Wall -Wextra)

install (TARGETS ${proj_name} DESTINATION ../bin)

install(TARGETS ${proj_name} DESTINATION ../install/bin)

