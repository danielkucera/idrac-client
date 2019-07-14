#!/bin/bash

HOST="10.1.10.200"

#PLATFORM="Win32"
#PLATFORM="Win64"
#PLATFORM="Linux32"
PLATFORM="Linux64"

WGET="wget --no-check-certificate" 

$WGET https://$HOST/software/avctKVM.jar

mkdir lib
cd lib/

$WGET https://$HOST/software/avctKVMIO$PLATFORM.jar
$WGET https://$HOST/software/avctVM$PLATFORM.jar

unzip avctKVMIO$PLATFORM.jar '*.so' '*.dll'
unzip avctVM$PLATFORM.jar '*.so' '*.dll'

