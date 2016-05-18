#!/bin/sh
#
ARCH=$(uname -m)

config="multi_v7_defconfig"

build_prefix="-armv7-devel-r"
branch_prefix="v"
branch_postfix=".x"

#arm
KERNEL_ARCH=arm
#toolchain="gcc_linaro_eabi_4_8"
#toolchain="gcc_linaro_eabi_4_9"
#toolchain="gcc_linaro_eabi_5"
#toolchain="gcc_linaro_gnueabi_4_6"
#toolchain="gcc_linaro_gnueabihf_4_7"
#toolchain="gcc_linaro_gnueabihf_4_8"
#toolchain="gcc_linaro_gnueabihf_4_9"
toolchain="gcc_linaro_gnueabihf_5"
#arm64
#KERNEL_ARCH=arm64
#toolchain="gcc_linaro_aarch64_gnu_5"

#Kernel/Build
KERNEL_REL=4.6
KERNEL_TAG=${KERNEL_REL}
BUILD=${build_prefix}6
kernel_rt=".X-rtY"

#v4.X-rcX + upto SHA
prev_KERNEL_SHA="f7df9be067160eef52f04bd2f137a20683fb1c12"
KERNEL_SHA="4a5219edcdae52bfb5eea0dfc2a7bd575961dad7"

#git branch
#BRANCH="${branch_prefix}${KERNEL_REL}${branch_postfix}"

DISTRO=cross
DEBARCH=armhf
#
