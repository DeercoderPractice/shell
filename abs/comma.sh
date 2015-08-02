#! /bin/bash

var="!This is a test!"
echo $var

var1='!This is a test!'
echo $var1
echo foo$var1bar ## 这样不会识别出变量$var1，因为shell不知道变量起始和结束标志
echo foo${var}bar ## 用{}括起来表示一个变量名，并且把$放在括号外，这样就能够识别处理
echo foo${var1}bar

## basename and dirname in shell(内建命令，直接执行)
tmp=' ~/mini/packages/apps/Camera/src/com/android/camera/MenuHelper.java'
basename $tmp
dirname $tmp

## 如何将命令的结果保存到一个变量中
test=`dirname ~/min/packages/apps/Camera/src/com/andriod/MenuHelp.java` # 利用Tab键上面的符号
echo $test

test1=$(dirname ~/mini/packages/apps/Camera/src/com/android/camera/Camera.java) # 也可以利用$()来实现
echo $test1

## 管道技术
test2=`ls /etc/ | grep pa`
echo $test2

test3=$(ls /etc/ | grep pa)
echo $test3

### 高级阶段技巧
testname=foodforthougth.jpg
echo ${testname##*fo} ## *fo表示通配，而##截取最大长度，#表示最短匹配,另外#表示是从头开始的
echo ${testname#*fo}
testname=test.tar.gz
echo ${testname%%.*} ## .*表示统配后缀为.的情况，%%表示最大匹配，%表示最短匹配，另外%表示从尾部开始匹配
echo ${testname%.*} ## 从末尾处开始匹配不必使用*。比如匹配fo不需要使用*fo，直接使用fo就可以了。




