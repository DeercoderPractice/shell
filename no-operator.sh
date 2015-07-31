#! /bin/bash
# ! reverse the outcome of the a test or command.
true
echo "exit status of \"true\" = $?" # 0

! true
echo "exit status of \"!ture\" = $?" # 1

true
! true # note: must use a space between ! and true.

ls | bogusjsifjie # 127
echo $?

! ls | bogsjifejfie # must use a space between ! and ls

echo $? # 0(because the last result is 127,revese it is 0)


