cmake_minimum_required(VERSION 3.12)

if(${CMAKE_VERSION} VERSION_LESS 3.12 )
	message(FATAL_ERROR "CMAKE VERSION IS >= 3.12 is needed ")
	
else()
 message(STATUS "*********CMAKE_VERSION >= 3.12 FOUND , MOVING AHEAD*******")
endif()
	

#Project(CMake_Computation)
set(proj_name "CMake_Computation_Redo")
Project(${proj_name})

#setting up of properties 

set(${proj_name}_VERSION_MAJOR 1)
set(${proj_name}_VERSION_MINOR 0)
set(CMAKE_INSTALL_PREFIX "F:/CmakeTutorials/CMake_Computation_Redo")
set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT ${proj_name})


#include subdirectories
add_subdirectory(Computation_lib)
set(computation_lib_include ${CMAKE_CURRENT_SOURCE_DIR}/Computation_lib/include)
add_subdirectory(app)

#target_compile_definitions(${proj_name}   PRIVATE $<$<CONFIG:Debug>:DEBUG_BUILD>)


