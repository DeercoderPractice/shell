#! /bin/bash

for i in `seq 100`
 do
    dmesg>>log.txt
    str="1xxx============================"
    echo $str >> log.txt ## Note: must use $str to get its value, using usr will directly put the str to the file, not the content
    echo $i
 done
