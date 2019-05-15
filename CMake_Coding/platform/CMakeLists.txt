include_directories(include)

add_library (${name_of_subdir} src/editor.cpp)
add_library (${name_of_subdir} src/language.cpp)


install (TARGETS ${name_of_subdir} DESTINATION lib)

install (FILES include/editor.h DESTINATION include)
install (FILES include/language.h DESTINATION include)
