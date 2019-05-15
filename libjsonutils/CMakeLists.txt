cmake_minimum_required(VERSION 3.4)
project(libjsonutils VERSION 1.0.0 LANGUAGES CXX)


add_library(JSONUtils src/json_utils.cpp)
target_include_directories(JSONUtils 
PUBLIC
$<INSTALL_INTERFACE:include>
$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
PRIVATE
$(CMAKE_CURRENT_SOURCE_DIR)/src
)


target_compile_options(JSONUtils PRIVATE -Werror)

target_compile_features(JSONUtils PRIVATE cxx_std_11)

target_link_libraries(JSONUtils 
PUBLIC 
Boost::boost RapidJSON::RapidJSON
PRIVATE 
Boost::regex
)