cmake_minimum_required(VERSION 3.4)

set(Proj_name "BoostLib")
Project(${Proj_name})

set(Boost_INCLUDE_DIR "C:/local/boost_1_64_0")
set(BOOST_LIBRARYDIR "C:/local/boost_1_64_0" )
set(CMAKE_INSTALL_PREFIX "F:/CMake_Tutorials/CMake_Boost" )


find_package(Boost COMPONENTS lambda REQUIRED  )
include_directories(${Boost_INCLUDE_DIR})
add_executable(CMake_Boost example.cpp)

target_link_libraries( CMake_Boost ${Boost_LIBRARIES} )
SET(VAR "1")

#get_cmake_property(VAR TARGET boost PROPERTY SOURCE)
# MESSAGE(${VAR})
install(TARGETS CMake_Boost DESTINATION bin)
install(TARGETS CMake_Boost DESTINATION install/bin)


