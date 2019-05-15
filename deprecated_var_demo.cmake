#Not allowing to use any particular variable
#i.e. Deprecated => use variable_watch variable
#this example will not allow to use hello variable.
set(hello "hellowordl!")

function(Deprecated_var var access)
	if(access STREQUAL "READ_ACCESS")
		message(DEPRECATION "THE variable is "{var}" is deprecated ")
	endif()
end_function()


variable_watch(hello Deprecated_var)
message(STATUS "${hello}")