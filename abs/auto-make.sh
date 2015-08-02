#! /bin/bash
# Author: liuchang<liuchang@tp-link.net>
# Description: This script is used to auto-make the whole project of TP-min

echo '### beginning to make all of the project'

echo 'First, make the boot......'
cd boot
make clean && make all

if [ $? != '0' ]
then
	echo 'making boot error!'
else
	echo 'making boot successfully!'
fi

echo 'Second, make the kernel......'
cd ..
cd kernel
make clean && make all

if [ $? != '0' ]
then
	echo 'making kernel error!'
else
	echo 'making kernel successfully!'
fi

echo 'Last, make the system......'
cd ..
make -j4

if [ $? != '0' ]
then
	echo 'making system error!'
else
	echo 'making system successfully!'
fi

exit
