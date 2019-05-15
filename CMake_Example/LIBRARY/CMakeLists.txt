add_library (Library src/calculator.cpp)

include_directories(include)


install (TARGETS Library DESTINATION lib)

install (FILES include/calculator.h DESTINATION include)