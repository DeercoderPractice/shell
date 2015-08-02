#/usr/bin/env bash

x=1
while [ $x -ne 10 ]
do
	echo "number: " $x
	x=$(($x + 1))
done
