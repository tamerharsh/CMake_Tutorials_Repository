cmake_minimum_required(VERSION 2.8)

project (CMake_Example)



#version number

set (CMake_Example_VERSION_MAJOR 1)

set (CMake_Example_VERSION_MINOR 0)



#include the subdirectory containing our libs

add_subdirectory (Library)

include_directories(LIBRARY/include)

#indicate the entry point for the executable

add_executable (CMake_Example Library main.cpp)



# Indicate which libraries to include during the link process.

target_link_libraries (CMake_Example Library)



install (TARGETS CMake_Example DESTINATION bin)