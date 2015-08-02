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
