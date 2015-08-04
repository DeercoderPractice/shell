#!/usr/bin/env bash
for i in `ls /` # as it is just a string, so the loops never goes inside for every situation
do
	if [ -L "$i" ]
	then
		echo "symbolic file"
	elif [ -f "$i" ]
	then
		echo "plain file"
	elif [ -d "$i" ]
	then
		echo "directory"
	fi	
	#echo $i
done
