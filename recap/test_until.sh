#!/usr/bin/env bash
myvar=0

# untils is opposite to while, that it will keep executing until some conditions
until [ $myvar -eq 10 ]
do
	echo $myvar
	myvar=$(($myvar+1))
done
