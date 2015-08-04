NOTE
====

## Some points

+ for sed regex, it is worthing noting for some common usage for regex

		.$	# means the end of the file
		^	# means the begin of the file

+ In ex2.sh, I used the `ls /usr/bin | sed -n '/^.a.$/p'` to solve the problem, there are some points that worth recapping.

		+ using pipe to combine the `ls` and `sed` command
		+ use `-n` option for printing only the selected result
		+ use the `^.a` instead of `^a` to represent the first two letters

+ In ex5.sh, I used a new command that is not in the book, but it is listed in the table, that is `sed /man/i XXXX`, this command is used for inserting some line before the matched string's line. For example, here it is used for inserting a line before the line that contains the string `man`. It is no need to use other options like `s/` to search and replace, that will make it more complex
