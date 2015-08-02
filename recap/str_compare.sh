#!/usr/bin/env bash
if [ -z "$1" ] # string is null
then
	echo "$1 is null"
fi

if [ -n "$1" ] # string not null
then
	echo "$1 is not null"
fi 

str1="aaa"
if [ "$str1" = "aaa" ]
then
	echo "$str1 is aaa"
fi

if [ "str1" != "bbb" ]
then
	echo "$str1 is not bbb"
fi
