#!/bin/bash
HL_VERSION=$(uname -r)
HL_MODNAME=habanalabs
HL_KSUFFIX=.ko
SRC_HL_PATH=drivers/misc/habanalabs/$HL_MODNAME$HL_KSUFFIX
TGT_HL_PATH=/lib/modules/$HL_VERSION/kernel/drivers/misc/habanalabs/$HL_MODNAME$HL_KSUFFIX
CMD="sudo modprobe -r $HL_MODNAME"
echo $CMD
eval $CMD
CMD="sudo cp -p $SRC_HL_PATH $TGT_HL_PATH"
echo $CMD
eval $CMD
CMD="stat $TGT_HL_PATH"
echo $CMD
eval $CMD
CMD="sudo modprobe $HL_MODNAME"
echo $CMD
eval $CMD
