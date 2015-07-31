#! /bin/bash
echo 'Now, beginning to flash boot......'
fastboot flash kernel zImage
fastboot flash ramdisk ramdisk.img

echo 'Second, beginning to flash system'
fastboot flash system system.img

echo 'Last, beginning to flash userdata'
fastboot flash userdata userdata.img
