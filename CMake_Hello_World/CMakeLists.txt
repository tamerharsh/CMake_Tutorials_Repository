cmake_minimum_required(VERSION 3.2)
project(CMake_Hello_World)


# Default to Release
#set(CMAKE_BUILD_TYPE "Release" )
add_executable(CMake_Hello_World   main.cpp)



install (TARGETS CMake_Hello_World DESTINATION bin)
