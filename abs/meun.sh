#! /bin/bash

while echo 'display system'
do
  select vi in "FreeBSD""Ubuntu""Federa";
    do
        case $vi in
        "FreeBSD") echo 'freebsd';;
        "Ubuntu")  echo 'Ubuntu';;
        "Federa")  echo 'Federa';;
        *)         continue;;
        esac
    done
done

