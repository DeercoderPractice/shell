#! /bin/bash

a=23
echo $a
b=$a
echo $b

# command substite
a=`echo Hello!` # assigns the result of command 'echo' to a varible
echo $a # print the varible

a=`ls -l`
echo $a # remove the tabs and newline
echo
echo "$a" # preserve the tabs and newline

exit 0



