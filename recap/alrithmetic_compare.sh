#!/usr/bin/env bash

mynum=3
if [ 3 -eq $mynum ]
then
	echo "$mynum is equal to 3"
fi	

if [ 4 -ne $mynum ]
then
	echo "$mynum is not equal to 4"
fi

if [ 2 -lt $mynum ]
then
	echo "2 is less than $mynum"
fi

if [ 2 -le $mynum ]
then
	echo "2 is less or equal than $mynum"
fi

if [ 3 -gt $mynum ]
then
	echo "3 is greater than $mynum" 
fi

if [ 3 -ge $mynum ]
then
	echo "3 is greater or equal to $mynum"
fi
