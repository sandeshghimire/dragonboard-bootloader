#!/bin/sh 
rm -f -r emmc_appsboot.mbn 
cd lk
rm -f -r build-msm8916
make  msm8916 EMMC_BOOT=1 TOOLCHAIN_PREFIX=/home/sandesh/workspace/bootloader/arm-eabi-4.8/bin/arm-eabi-
cd ..
cp lk/build-msm8916/emmc_appsboot.mbn emmc_appsboot_unsigned.mbn 
sh signlk/signlk.sh -i=emmc_appsboot_unsigned.mbn  -o=emmc_appsboot.mbn -d


