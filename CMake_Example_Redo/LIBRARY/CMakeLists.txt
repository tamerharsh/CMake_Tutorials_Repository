add_library (LIBRARY src/calculator.cpp)

include_directories(include)


install (TARGETS LIBRARY DESTINATION lib)

install (FILES include/calculator.h DESTINATION include)