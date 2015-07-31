#! /bin/bash
# Using 'shift' to step through all the positional parameters.
# using this by shft.sh a b c def 23

until [ -z "$1" ] # until all the parameter ends
do  
  echo -n "$1 "
  shift # here shift pass $2 to $1, $3 to $2, ...
done

echo # Extra linefeed

echo "$2" # if $2 have used to move to $1, then it is empty.
exit

# So shift is move , not copy.


