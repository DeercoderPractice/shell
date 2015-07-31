#! /bin/bash

# 本Shell命令直接运行后，使用echo $usme无任何结果输出，而使用source test.sh后，在使用echo $usme则可以输出结果，即为执行的指令w的输出就诶过。
# 注意的一点就是，冒号后面要加上空格。此处冒号的作用是：为二元运算提供一个占位符

#: ${usme=`w`}
#${usme=`w`}  # 会报错，如果没有冒号

#: > test.xxx
: >> test.xxx

id=$$ # process id
echo $id


echo $'test123'

echo \"{This,words,are,quoted}\"

a=124;
{ a=321; } #注意，括号的前后必须都是空格，否则会报错。
echo $a

a=321
hello=$a
