#! /bin/bash

#  脚本的返回值就是最后一条command的返回值，使用$?或者exit甚至是神马都没有都会自动返回最后一条命令的执行状态，作为脚本的返回值

ls -l
cat /etc/aaa

exit

#or exit $?
#or exit
#or (nothing)


