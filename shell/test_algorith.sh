#/usr/bin/env bash

## use $(()) to calculate the value
echo $((100/3))

myvar=56
echo $(($myvar+12))

echo $(($myvar - $myvar))

myvar=$(($myvar+1))
echo $myvar
