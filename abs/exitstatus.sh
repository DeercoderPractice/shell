#! /bin/bash

echo hello
echo $? # 执行成功，返回0

lskdjfie
echo $? # 没有该命令，返回错误码

echo
exit 112 # 返回一个执行状态，执行完该脚本后，使用echo $?可以看到为112

