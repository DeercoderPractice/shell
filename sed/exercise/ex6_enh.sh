#!/usr/bin/env bash
for i in /*
do
	if [ -L "$i" ]
	then
		sed '/i --This is a symlink--' $i
	elif [ -f "$i" ]
	then
		sed '/i ====' $i
	elif [ -d "$i" ]
	then
		sed '/i directory' $i
	fi	
	#echo $i
done
