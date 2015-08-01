#!/usr/bin/env bash

DIR=$PWD/scripts

ls $DIR/*.sh > tmp.log
sed 's/^.*scripts\///g' tmp.log > result.log
