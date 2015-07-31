#!/usr/bin/env bash

echo $1 # output the first parameter

if [ $1 == 1 ]
then
	echo "Input is 1"
elif [ $1 == 2 ]
then
	echo "Input is 2"
else
	echo "other situation"
fi
