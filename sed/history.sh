#!/usr/bin/env bash

sed '/erors/p' example
sed -n '/erors/p' example
sed -n '/^This.*errors.$/p' example
sed '/erors/d' example
sed '2,4d' example
sed '3,$d' example
sed -n '/a text/,/This/p' example
sed 's/erors/errors' example
sed 's/erors/errors/g' example

## insert '> ' before the first word of each line
sed 's/^/> /' example ## ^ means the first 

## insert 'EOF' at the end of each line
sed 's/$/EOF/' example ## $ means the end

## multi find and replace with -e option
sed -e 's/erors/errors/g' -e 's/last/final/g' example

## redirect the output into one file
sed -e 's/erors/errors/g' -e 's/last/final/g' example > result_str.txt
