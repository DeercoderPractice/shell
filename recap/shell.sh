#!/bin/env bash

mydir=`dirname /usr/local/shard/doc/food.txt`
echo $mydir


mydir=`basename /usr/local/shard/doc/food.txt`
echo $mydir

mydir=$(dirname /usr/local/shared/doc/food.txt) # use command replacement,using $() to get the result from it
echo $mydir

myvar=foodforthought.jpg
echo ${myvar##*fo}	#*fo is to match 'fo'. ## means to max match
echo ${myvar#*fo}	# short match

myfoo="chickensoup.tar.gz"
echo ${myfoo%%.*}	#maximize match the suffix
echo ${myfoo%.*}	#short match

myfood="chicksoup"
echo ${myfood%%soup}	# % means from end to start, # means from start to end
echo ${myfood%soup}

exclaim=cowboytestforme
echo ${exclaim:0:3}
echo ${exclaim:3:7}
