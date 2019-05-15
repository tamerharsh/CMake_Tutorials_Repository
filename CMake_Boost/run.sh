#!/bin/bash
cd build 

del CMakeCache.txt

cmake -Ax64  -DBoost_INCLUDE_DIR="C:\local\boost_1_64_0" -DBOOST_LIBRARYDIR="C:\local\boost_1_64_0" ..


cmake ..  -DCMAKE_INSTALL_PREFIX="F:\CmakeTutorials\CMake_Boost"
cmake --build . --config Release --target INSTALL



