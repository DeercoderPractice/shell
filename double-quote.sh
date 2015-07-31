#! /bin/bash

List="one two three"

for a in $List # 这里的$List没有加双引号，所以会被split开为3个单词
do
  echo "$a"
done

echo "---"

for a in "$List" #这里加了双引号，所以直接作为 一个字符串
do 
 echo "$a"
done

exit 0


