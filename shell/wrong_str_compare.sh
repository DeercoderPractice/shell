#!/usr/bin/env bash

myvar="a b c"

if [ "$myvar" = "a b c" ]
then
	echo "myvar is equal to 'a b c'"
else
	echo "myvar is not equal to 'a b c '"
fi

if [ $myvar = "a b c" ] # two many arguments, for myvar is a multi-word string and will replace, to be treated as many params
then
	echo "myvar is equal to 'a b c'"
else
	echo "myvar is not equal to 'a b c'"
fi
