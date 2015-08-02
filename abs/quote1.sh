#! /bin/bash

var="a varible containing five words"

COMMAND This is $var

COMMAND "This is $var"

var2=""

COMMAND $var2 $var2 $var2 # execute with no parameters
COMMAND "$var2" "$var2" "$var2" # execute with three parameters
COMMAND "$var2 $var2 $var2" # execute with one parameters.

