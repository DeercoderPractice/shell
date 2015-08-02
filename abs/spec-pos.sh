#! /bin/bash

args=$# # 获得参数的个数

lastarg=${!args} #等效于$args的做法

lastargs=${!#} # 等效于$#的做法

echo $args
echo $lastarg
echo $lastargs

# 所以最终执行./spec-pos.sh 1 2 3 4的结果是4 4 4
# 但是注意如果一个参数都不给的话，则是0，./spec-pos.sh ./spec-pos.sh的结果，也就是说，第一个获得的参数为0，后面的结果是lastarg=$0,也就是函数名，至于咀咒一个为何是那么多，结果不得而知。
