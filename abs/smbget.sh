#! /bin/bash
# This script is used to get files from smb according your input parameters.
# Usage: ./smbget.sh
#        chooseoption: 1, 2, 3,
#        get the files from the server

while echo '### This script is used to get files from 100 server'

do


### 特别注意后面要加上空格，否则会当做连续的字符串（Shell中有字符串的自动连接）
select vi in "TPMini: get system.img" "TPMini: get all flash images" "TPMini:kernel" "T882v2: get FM.apk" "exit"
do

case ${vi} in
"TPMini: get system.img")
    if [ -e ./system.img ]
    then
        rm system.img
    fi

    smbget -u liuchang -p tplinkliuchang smb://172.31.130.100/liuchang/mini/out/debug/target/product/brownstone/system.img
    ;;
"TPMini: get all flash images")
    if [ -e ./system.img ]
    then
        rm system.img
    fi

    if [ -e ./ramdisk.img ]
    then
        rm ramdisk.img
    fi

    if [ -e ./zImage ]
    then
        rm zImage
    fi

    echo "## First removing all the existing images......."
    smbget -u liuchang -p tplinkliuchang smb://172.31.130.100/liuchang/mini/out/debug/target/product/brownstone/system.img
    smbget -u liuchang -p tplinkliuchang smb://172.31.130.100/liuchang/mini/out/debug/target/product/brownstone/ramdisk.img
    smbget -u liuchang -p tplinkliuchang smb://172.31.130.100/liuchang/mini/kernel/out/zImage
    ;;
"TPMini:kernel")
    if [ -e ./zImage ]
    then
        rm zImage
    fi

    smbget -u liuchang -p tplinkliuchang smb://172.31.130.100/liuchang/mini/kernel/out/zImage
    ;;

"T882v2: get FM.apk")
    if [-e ./FM.apk ]
    then
        rm FM.apk
    fi

    smbget -u liuchang -p tplinkliuchang smb://172.31.130.100/liuchang/t882-v2/out/debug/target/product/msm7627a/system/app/FM.apk
    ;;
"exit")
    exit
    ;;
*)
    continue
    ;;
esac

break
done

done
