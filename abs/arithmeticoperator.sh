#! /bin/bash
# This file is used to practice arithmetic operation.
# -eq, -ne, -lt, -le, -gt, -ge
# 所谓的算术运算符，就是直接比较算术值的
# 当然，也可以使用字符串比较符来进行操作。


test=32
if [ $test -eq 32 ]
then
	echo "$test is equal to 32"
fi

if [ $test -ne 32 ]
then
	echo "$test is not equal to 32"
fi

if [ $test -lt 23 ]
then
	echo "$test is little than 23"
fi

if [ $test -le 32 ]
then
	echo "$test is little or equal to 32"
fi


if [ $test -gt 23 ]
then
	echo "$test is greater than 23"
fi

if [ $test -ge 32 ]
then
	echo "$test is greater or equal to 32"
fi

exit
