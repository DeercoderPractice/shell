#! /bin/bash

variable1_=$1_ #末尾加上_的好处是可以避免为null的错误。因为总会使得有_存在。

critical_argument01=$variable1_

variable1=${variable1_/_/}

echo $variable1

if [ -z $1 ]
then
 exit $E_MISSING_POS_PARAM
fi


