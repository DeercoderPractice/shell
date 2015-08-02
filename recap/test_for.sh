#!/usr/bin/env bash

for x in one two three # this is for mutli values
do
	echo number $x
done

for x in "one two three" # this is just for one string
do
	echo number $x
done

for myfile in /etc/r*
do
	if [ -d $myfile ]
	then
		echo "$myfile is a directory"
	else
		echo "$myfile"
	fi
done
