#!/usr/bin/env bash

echo ${1##.*}
echo ${1##*.}
echo ${1%%.*}
echo ${1%%*.}

if [ "${1##*.}" == "tar" ]
then
	echo "This is a tar file"
else
	echo "This is not a tar file"
fi
