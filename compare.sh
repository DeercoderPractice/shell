#! /bin/bash
# int-or-string sample

a=2334
let "a += 1" # 引号就可以有空格，否则你试试let a += 1肯定不能过。
echo "a = $a" # a是整数，所以可以加1，并且正常实现
echo

b=${a/23/BB} # 注意此处只是执行一个变量替换的命令，即正则表达式的命令。

echo "b = $b" # 经过替换后，b就是一个字符串了，而不是数字
declare -i b  # 这样即使把b声明为整数也失效了。
echo "b = $b" # 所以显示出来就是一个字符串BB35

let "b += 1" # 对一个字符串加1的话，bash会把它转换成整数，而默认的值为0
echo "b = $b" # 所以转换后加1就变为了1
echo

c=BB34 
echo "c = $c" # 通用c位字符串，替换后由于都是digit，所以d变为了整数
d=${c/BB/23}

echo "d = $d" # d为整数，并且执行了加1操作。
let "d += 1"
echo "d = $d"
echo

e='' # 对于一个空串，“”，e=这样的，直接显示就是字符串
echo "e = $e"
let "e += 1" # 执行算术运算同样，把空串赋值为0，然后执行加1操作。
echo "e = $e"
echo

echo "f = $f" # 没有声明的同样赋值为0，然后加1操作。
let "f += 1"
echo "f = $f"
echo

exit $?

# bash通常会把null的整型值置为0，不过不要依赖这个特性。








