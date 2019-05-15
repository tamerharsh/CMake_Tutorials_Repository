add_library (Computation_lib src/computation_file.cpp)

include_directories(include)

set(CMAKE_INSTALL_PREFIX "F:\CmakeTutorials\CMake_Export_Lib\Computation_lib")
install (TARGETS Computation_lib DESTINATION lib)
#install (TARGETS Computation_lib DESTINATION install/lib)

install (FILES include/computation_file.h DESTINATION include)
install (FILES include/computation_file.h DESTINATION  install/include)

install (TARGETS Computation_lib DESTINATION install/lib  EXPORT FindCMakeLibraryDemo)
install(EXPORT FindCMakeLibraryDemo DESTINATION install)



