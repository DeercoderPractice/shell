#!/usr/bin/env bash

DIR="tmp.log"

if [ -e $DIR ]
then
	echo > $DIR
else
	touch $DIR
fi

cd /etc/init.d
grep sed* > tmp.log

cd /etc/rc.d/init.d
grep sed* >> tmp.log
