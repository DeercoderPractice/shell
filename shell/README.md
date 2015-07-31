README
====

1. It it noted that when assigning the value in `bash`, it should not give blank before and after the `=`
		
		$myvar = 'This is a variable' # wrong assignment
		$myvar='This is a variable' # right assignment


2. variables cannot be added to the environment unless you `export` it, and then you can use it as `$var`, however, if you want ot reset it or remove it, then just use `unset var`. **NOTE**: `var` is just the name of your variables


3. `basename` and `dirname` is used to get the base directory name and the first part name in the path, for example:
	
		basename /usr/local/share/doc/food/food.txt	# the result is food.txt
		dirname /usr/local/share/doc/food/food.txt	# the result is /usr/local/share/doc/food


4. file compare operation is used for dealing with the files by using their property like exist, directory or read/write/execute, and string compare is used for comparing strings, algorithmetic compare is used for comparing the number of the equations.



5. For string compare, it is always better to include the `" "` for the variables.
	
		if [ "$myvar" = "one two three" ]	# Good practice
		if [ $myvar = "one two three" ] 	# Bad practice for multi-word strings


6. We can put the function in the `~/.bashrc` or `~/.bash_profile`, in order to use it

7. In the function, the variable is useful in the global area, so that when exiting the function the variable is still useful in the area
