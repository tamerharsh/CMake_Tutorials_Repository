
#Both functions and macros accept an arbitrary number of arguments. Unnamed arguments are exposed to the function as a list,
#through a special variable named ARGN. 
function(doubleEach)
    foreach(ARG ${ARGN})                # Iterate over each argument
        math(EXPR N "${ARG} * 2")       # Double ARG's numeric value; store result in N
        message("${N}")                 # Print N
    endforeach()
endfunction()

doubleEach(5 6 7 8)    

function(doubleIt VARNAME VALUE)
	message("***fucntion_doubleit***")
    math(EXPR RESULT "${VALUE} * 2")
    set(${VARNAME} "${RESULT}" PARENT_SCOPE)    # Set the named variable in caller's scope
endfunction()

doubleIt(RESULT "4")                    # Tell the function to set the variable named RESULT
message("${RESULT}")    