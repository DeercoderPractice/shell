#! /bin/bash

echo 'the script name is ' $0
echo 'the first argument is '$1

echo 'the number of parameters is ' $#

if [ -z "$test" ]
then
	test='xxxxx'
	echo '$test'
	echo "$test" 
fi

### The following is about the file comparation operator
filename="/bin/bash"
if [ -e "$filename" ] # -e judges whether it exists
then
	echo "$filename exist!"
fi

if [ -d "$filename" ] # Note: must hava a blank between [ and the judges
then
	echo "$filename is a directory!"
fi

if [ -f "$filename" ]
then
	echo "$filename is a normal file!"
fi

if [ -L "$filename" ]
then	
	echo "$filename is a symoblic file"
fi

if [ -r "$filename" ]
then
	echo "$filename is readable!"
fi

if [ -w "$filename" ]
then
	echo "$filename is writable!"
fi

if [ -x "$filename" ]
then
	echo "$filename is excutable!"
fi

file1="/bin/bash"
file2="/usr/bin/python"

if [ "$file1" -nt "$file2" ]
then	
	echo "$file1 is newer than $file2"
fi

if [ "$file1" -ot "$file2" ]
then
	echo "$file1 is older than $file2"
fi

exit
