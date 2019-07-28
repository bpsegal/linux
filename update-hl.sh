#!/bin/bash
HL_VERSION=5.2.0+
HL_MODNAME=habanalabs.ko
SRC_HL_PATH=drivers/misc/habanalabs/$HL_MODNAME
TGT_HL_PATH=/lib/modules/$HL_VERSION/kernel/drivers/misc/habanalabs/$HL_MODNAME
CMD="sudo cp -p $SRC_HL_PATH $TGT_HL_PATH"
echo $CMD
eval $CMD
CMD="stat $TGT_HL_PATH"
echo $CMD
eval $CMD
