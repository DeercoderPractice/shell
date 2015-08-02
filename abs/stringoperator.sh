#! /bin/bash

test="xxxxxx"
if [ -z "$test" ]
then
	echo "$test is null!"
fi

if [ -n "$test" ]
then
	echo "$test is not null!"
fi

test1="ssjifejfejfsf"
test2="ssjifejfejfsf"
test3="ssjifejfejfsf"

if [ "$test1" = "$test2" ] # string comparation
then
	echo "the two strings are the same"
fi

if [ "$test1" != "$test2" ] # string comparation using !=
then
	echo "$test1 is not equal to $test2"
fi




