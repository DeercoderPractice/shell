#! /bin/bash

while echo 'display the config'

do

select test in "ls -l""ps aux""du -sh"

do

case $test in
"ls -l") ls -l;;
"ps aux") ps aux;;
"du -sh") du -sh;;
esac

break
done

done
