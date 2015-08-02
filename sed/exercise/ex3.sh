#!/usr/bin/env bash
FILE="ex1.log ex2.log"

# use the sed delete commands
sed '1,3d' $FILE > ex3.log
