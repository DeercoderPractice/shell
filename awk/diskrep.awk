BEGIN { print " *** WARNING WARNING WARNING *** "}
/\<[8|9|[0-9]%/ { print "Partition " $6 "\t: " $5 " full!" }
END { print " *** Give money for new disk URGENTLY! *** " }
