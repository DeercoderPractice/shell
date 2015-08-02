#! /bin/bash

R=$(cat /etc/passwd) #执行的结果和``（backquota的结果一样），即`cat /etc/passwd`
arch=$(uname -m)

echo $R
echo $arch

arch=`uname -m`
echo $arch

