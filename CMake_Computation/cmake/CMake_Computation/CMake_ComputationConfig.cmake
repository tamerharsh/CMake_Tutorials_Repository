get_filename_component(CMake_Computation_CMAKE_DIR "${CMAKE_SOURCE_DIR}/cmake" PATH)
#get_filename_component(<VAR> <FileName> <COMP> [CACHE])
#this sets the var to value with append the specification(<comp>) say PATH /EXT/ABSOLUTE pathRELPATH

if(NOT TARGET CMake_Computation)
include(${CMake_Computation_CMAKE_DIR}/CMake_ComputationTargets.cmake)
endif()