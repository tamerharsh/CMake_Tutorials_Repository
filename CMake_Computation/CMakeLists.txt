cmake_minimum_required(VERSION 3.4)

if(${CMAKE_VERSION} VERSION_LESS 3.4 )
	message(FATAL_ERROR "CMAKE VERSION IS > 3.4 is needed ")
	
else()
 message(STATUS "*********CMAKE_VERSION > 3.4 FOUND , MOVING AHEAD*******")
endif()
	

#Project(CMake_Computation)
set(proj_name "CMake_Computation")
Project(${proj_name})

#setting up of properties 

set(CMake_Computation_VERSION_MAJOR 1)
set(CMake_Computation_VERSION_MINOR 0)

#To Store  .exe , .sln etc in other place than its default location. 
set(CMAKE_INSTALL_PREFIX "F:/CmakeTutorials/CMake_Computation")#please change according to your convenience.


#to make the project as start up project in MSVC
set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT ${proj_name}) 

#include subdirectory 


add_subdirectory(Computation_lib)
#include directory  as main.cpp needs this one.
include_directories(Computation_lib/include)


#Enable this  only if Compiling has to be done in Release mode. Note 

#[[ is multiple line comment in CMAKE.]]

#[[
if(CMAKE_BUILD_TYPE STREQUAL "Release")
    message("Build is Release type")
	
 else()
	message(FATAL_ERROR "Only Release mode is  allowed")
endif(CMAKE_BUILD_TYPE STREQUAL "Release")
]]


#indicate the  entry point 
add_executable(CMake_Computation Computation_lib  main.cpp)

#To link the libraries with the executable.
target_link_libraries(CMake_Computation Computation_lib)

# Install the outputs in the desired locations

install (TARGETS CMake_Computation DESTINATION bin)

install(TARGETS CMake_Computation DESTINATION install/bin )


#===========EXPORT THE TARGET========
#=======GOOD BOYS EXPORT TARGET==REFER BLOG PABLO ARIS=========
#Approach=>Curently  exporting from the build tree ,alternatively #Export from an Installation Tree
#[[
install(Targets CMake_Computation EXPORT CMake_Computation-export)

install(EXPORT CMAKE_Computation-targets 
FILE CMake_ComputationTargets.cmake
DESTINATION ${CMake_Source_Dir

]]