#!/usr/bin/env bash

echo "the first parameter is"$1
x=$1
case "${x##*.}" in
	gz)
		echo "this is a *.gz file"
		;;
	bz2)
		echo "this is a *.bz2 file"
		;;
	*)
		echo "other cases"
		;;
esac
