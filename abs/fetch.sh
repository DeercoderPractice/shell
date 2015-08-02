#!/bin/env bash

prefix='http://vision.stanford.edu/teaching/cs231n/slides/lecture'
for i in `seq 1 10`;
do
	url=$prefix$i'.pdf'	
	echo $url
	wget $url	
done
