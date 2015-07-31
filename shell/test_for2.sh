#!/usr/bin/env bash

for x in /var/log/*
do
	echo `basename $x` is a file living in /var/log
done

for thing in "$@"
do
	echo you typed ${thing}
done
