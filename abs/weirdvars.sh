#! /bin/bash
#  This program is a weird result

echo

var="'(]\\{}\$\""
echo $var
echo "$var" # same result doesn't make  any sense

echo

IFS='\' #经过验证是跟这个有关系，修改变量名或者“”都不行，
echo $var #结果不同于上面的，会把\转换位空格，为何呢？
echo "$var"




