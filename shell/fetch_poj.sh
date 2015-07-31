#!/usr/bin/env bash
url="http://poj.org/problem?id="
i=1000
while [ $i -ne 1020 ]
do
	download=$url$i
	wget $download -O $i".htm"
	i=$(($i+1))
done
