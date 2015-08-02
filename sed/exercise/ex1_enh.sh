#!/usr/bin/env bash
## enhancement for ex1.sh
DIR=$PWD/scripts

# use the predefined URL to sed the data stream
# replace the string from begining to the scripts/ with blank character
ls $DIR/*.sh | sed 's/^.*scripts\///g' > result.log
