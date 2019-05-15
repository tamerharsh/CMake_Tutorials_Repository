add_library (Computation_lib SHARED src/computation_file.cpp)

include_directories(include)


install (TARGETS Computation_lib DESTINATION lib)
install (TARGETS Computation_lib DESTINATION install/lib)

install (FILES include/computation_file.h DESTINATION include)
install (FILES include/computation_file.h DESTINATION  install/include)


