AWK NOTE
===

+ awk takes the statement or description that describe the data, and then will give out the corresponding format of data, so it is a data-driven language, not a procedure-driven language.

+ `sort -rnk 5` means that sort by the 5th column, that is the percentage of the `df` output part

+ `head -3` means that output only the first 3 lines of the whole output

+ `awk` can use the regrex to select the output of some forms, like the below command will only print the `/dev/sd` line
	
		df -h | awk '/dev\/sd/ { print $6 "\t: " $5 }'

+ for regex, the form is like ` awk 'EXPRESSION { PROGRAM }' file(s) `

+ In order to output some comments, we can use **BEGIN** statement

		ls -l | awk 'BEGIN { print "Files found:\n" } /\<[a|x].*\.conf$/ {print $9 }'

+ In order to output some ending comments, we can use the **END** statement

		ls -l /etc/ | awk '/\<[a|x].*\.conf$/ { print $9 } END { print "Can I do anything after that all" }'

+ Use a comma `,` is quite different when output the content of name

		awk '{ print $1 $2 }' test  # will use just single line
		awk '{ print $1, $2 }' test # will be seperated by content in test

+ Use `OFS` and `ORS` to denote the separator in the **list** and the **end separator** in the line

		awk 'BEGIN { OFS=";" ;  ORS="\n--->\n" } { print $1, $2 }' test

the above will use the `;` to seperate the items and newline with `--->` to seperate the lines


+ Use `NR` to denote the record number that is being processed, this variable is the built-in variable that we should not change and will use by default

+ We can use the `=` to define our own variable, this can be a string or numeric value.
