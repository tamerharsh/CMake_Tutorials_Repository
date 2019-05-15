cmake_minimum_required(VERSION 3.4)
Project(ImgLib)

#C:\Users\intamaha\Downloads\opencv\build
set(CMAKE_PREFIX_PATH  "C:/Users/intamaha/Downloads/opencv/build")
#dependencies
find_package(OpenCV REQUIRED)

message(${OpenCV_INCLUDE_DIRS} ${OpenCV_LIBS})
#execuatable
add_executable(CMake_Image_Proceessing  main.cpp)

include_directories( ${OpenCV_INCLUDE_DIRS} )
target_link_libraries(CMake_Image_Proceessing   ${OpenCV_LIBS} )
set(CMAKE_INSTALL_PREFIX "F:/CmakeTutorials/CMake_Image_Proceessing")

