cmake_minimum_required(VERSION 2.8)
project(set(${proj_name} CMake_Coding))

#setting the version number of the project
set(CMake_Coding_VERSION_MAJAOR 1)
set(CMAKE_Coding_VERSION_MINOR 0)
#INCLUDE THE SUBDIRECTORIES

add_subdirectory(set(${name_of_subdir} platform))
include_directories(${name_of_subdir}/include)

#indicate the entry point for the executable 

add_executable(${proj_name} ${name_of_subdir} main.cpp)

#Indicating the libraries to be included during the link process 
target_link_libraries(${proj_name} ${name_of_subdir})