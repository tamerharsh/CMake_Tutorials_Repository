cmake_minimum_required(VERSION 2.8)

project (CMake_Example_Redo)



#version number

set (CMake_Example_Redo_VERSION_MAJOR 1)

set (CMake_Example_Redo_VERSION_MINOR 0)

add_subdirectory(app)

#include the subdirectory containing our libs

add_subdirectory (LIBRARY)


include_directories(LIBRARY/include)

#indicate the entry point for the executable

add_executable (CMake_Example_Redo LIBRARY app)


# Indicate which libraries to include during the link process.

target_link_libraries (CMake_Example_Redo LIBRARY)



install (TARGETS CMake_Example_Redo DESTINATION bin)