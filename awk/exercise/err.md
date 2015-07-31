ERROR Correction
====

## Description

This file is going to record what mistakes that I have made during the exercises


## ERROR

+ The output format is not correct for ex1:

		{ print "dn: uid=$1,dc=example, dc=com\ncn: $2,$3\nsn:$3\ntelephoneNumber:$4" } # error
		{ print "dn: uid="$1", dc=example, dc=com\ncn: "$2,$3"\nsn: "$3"\ntelephoneNumber: "$4 } # correct 

**NOTE**: should not put `$1` into one of the `" "`, otherwise it will treat it as string
