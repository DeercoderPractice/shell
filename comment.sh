#! /bin/bash

echo 'The # here doesnot begin a comment'
echo "The # here doesnot begin a commnet"
echo  The \# here does not begin a comment
echo The #这里是一个注释

echo ${PATH#*:} #参数替换，不是注释
echo $((2#101011))  #数制替换，不是注释

echo hello; echo there;

if [ -x "$filename" ]; then 
#+
  echo "File $filename exists."; cp $filename $filename.bak
else # 
  echo "File $filename not found."; touch $filename;
fi;

echo "File test complete."




# Thanks, S.C



