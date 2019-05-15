function(myfunc list)
    message(STATUS ${list})
	foreach(i in RANGE 0 ${list})
	 # math(EXPR Fizz "${i}%3")
	  # if(Fizz == 0)
	   message(STATUS "aa")
	endforeach()   
endfunction()

set(list 1,2,3)
myfunc(${list})
	   