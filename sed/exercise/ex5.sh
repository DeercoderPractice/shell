#!/usr/bin/env bash

# Task 1
ls $PWD/scripts/*.sh | sed 's/^.*scripts\///g' > ex5.log

# Task 2
ls /usr/bin | sed -n '/^.a.$/p' >> ex5.log

# Append string
cat ex5.log | sed '/man/i ***This might have something to do with man and man pages ***'
