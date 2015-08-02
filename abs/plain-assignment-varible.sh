#! /bin/bash

echo 

# Assignment
a=879
echo "The value of \"a\" is $a."

# Assignment using let
let a=16+5
echo "The value of \"a\" is now $a."

echo

# In a 'for' loop(disguised assignment)
echo -n "Values of \"a\" in the loop are:"
for a in 7 8 9 11
do  
  echo -n "$a " 
done

echo
echo

# In a 'read' statment(Assignment)
echo -n "Enter \"a\" "
read a
echo "The value of \"a\" is now $a."

echo 

exit 0







