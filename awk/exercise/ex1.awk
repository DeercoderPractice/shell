BEGIN { FS=":"; print " Start parsing the records:" }
{ print "dn: uid="$1", dc=example, dc=com\ncn: "$2,$3"\nsn: "$3"\ntelephoneNumber: "$4 }
END { print " End of parsing, Happy Hacking!" }
