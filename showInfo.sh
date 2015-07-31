#! /bin/bash

# 显示系统时间
date >> log.txt

# 显示登录的用户以及他们在干神马 w(man w查看更加详细信息)
w >> log.txt
# who >> log.txt(显示谁登录进去了)

# show Uptime, as show what the system has been running
uptime >> log.txt





