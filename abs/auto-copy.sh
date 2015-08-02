#! /bin/bash
# Filename: auto-copy.sh
# This script is used to copy the TPMini flash-download files to
# the destination directory

echo '###### Auto-copy: first remove all download files'
rm ../download/*
echo '' > log.txt # remove all previous log

cp kernel/out/zImage ../download/
if [ $? != '0' ]
then
	echo 'copy zImage error!'
fi

cp kernel/out/zImage_recovery ../download/
if [ $? != '0' ]
then
	echo 'copy zImage_recovery error!'
fi

cp boot/out/Wtm_rel_mmp2.bin ../download
if [ $? != '0' ]
then
	echo 'copy Wtm_rel_mmp2.bin error!'
fi

cp boot/out/nontrusted/ntim_mmp2_nand_bbu_ddr.bin ../download
if [ $? != '0' ]
then
	echo 'copy ntim_mmp2_nand_bbu_ddr.bin error!'
fi

cp boot/uboot/u-boot.bin ../download
if [ $? != '0' ]
then
	echo 'copy uboot.bin error!'
fi

cp out/debug/target/product/brownstone/MMP2_G50_Linux_2g.blf ../download
if [ $? != '0' ]
then
	echo 'copy MMP2_G50_Linux_2g.blf error!'
fi

cp out/debug/target/product/brownstone/primary_gpt_2g ../download
if [ $? != '0' ]
then
	echo 'copy primary_gpt_2g error!'
fi


cp out/debug/target/product/brownstone/secondary_gpt_2g ../download
if [ $? != '0' ]
then
	echo 'copy secondary_gpt_2g error!'
fi

cp out/debug/target/product/brownstone/system.img ../download
if [ $? != '0' ]
then
	echo 'copy system.img error!'
fi

cp out/debug/target/product/brownstone/userdata.img ../download
if [ $? != '0' ]
then
	echo 'copy userdata.img error!'
fi

cp out/debug/target/product/brownstone/ramdisk.img ../download
if [ $? != '0' ]
then
	echo 'copy ramdisk.img error!'
fi

cp out/debug/target/product/brownstone/ramdisk_recovery.img ../download
if [ $? != '0' ]
then
	echo 'copy ramdisk_recovery.img error!'
fi

echo 'successfully copy all files'
exit	
