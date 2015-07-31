#!/usr/bin/env bash
ls -l | awk '{ print $5 $9 }' #output the 5th and 9th column
ls -lh | grep -v total | awk '{ print "Size is " $5 " bytes for " $9 }'
df -h | sort -rnk 5 | head -3 | awk '{ print "Partition " $6 "\t: " $5 " full!" }'
df -h | awk '/dev\/sd/ { print $6 "\t: " $5 }'


# regex part for some string matching
ls -l /etc | awk '/\<(a|x).*\.conf$/ { print $9 }'

# BEGIN Statement for outputing comments
ls -l /etc | awk 'BEGIN { print "Files found:\n" } /\<[a|x].*\.conf$/ {print $9 }'

# END statement for output ending comments
ls -l /etc/ | awk '/\<[a|x].*\.conf$/ { print $9 } END { print "Can I do anything after that all" }'

