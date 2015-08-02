#! /bin/bash

echo "\v\v\v\v"

echo "-------------"
echo "Here using -e to intepret the escaped character"
echo -e "\v\v\v\v"

echo "QUOTATION MARK"
echo -e "\042" # print the char which ASCII code is 42
echo "================="

# the $'\X' equals -e option to interpret the char.
echo
echo "NEWLINE"
echo $'\n' #

echo 
echo $'\a'

echo "Here begin our test-------------------"
echo "foo
bar" # 这里会作为新行分别输出，因为中间有个回车符的。

echo

echo 'foo
bar' # 同上面的道理

echo

echo foo\
bar # 链接起来了，所以输出foobar

echo "foo\
bar" # 同上

echo

echo 'foo\
bar' # 单引号是严格的引用，所以输出那个\符号









