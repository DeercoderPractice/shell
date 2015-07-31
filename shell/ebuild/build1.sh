#!/usr/bin/env bash
if [ -d work ]
then
	rm -rf work
fi

mkdir work	# in bash, just use the command directly
cd work
tar xzf /usr/src/disfiles/sed-3.02.tar.gz
cd sed-3.02
./configure --prefix=/usr
make
