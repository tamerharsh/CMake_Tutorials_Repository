#fizzbuzz in cmake 

function(fizzbuzz last)
	foreach(i in RANGE 0 ${last})
	   math(EXPR notFizz "${i}%3")
	   math(EXPR notBuzz "${i}%3")
	   if(NOT notFizz AND notBuzz)
		message("fizz")
	   elseif(notFizz  AND NOT notBuzz)
	     message("buzz")
	   elseif(NOT notFizz AND NOT notBuzz)
	    message("fizzbuzz")
	
	   else()
	   
	    message("${i}")
		endif()
		
	endforeach()
endfunction()
fizzbuzz(100)