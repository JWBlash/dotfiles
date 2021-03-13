#!/bin/bash

#for deploying .uf2s to pico

#vars
PWD=$(pwd)
USER=$(whoami)

TEST=$(test -f $PWD/*.uf2)
if [ $? = 1 ]; then
    echo "[DEPLOYMENT FAILURE]: *.uf2 not found in $PWD"
    exit 1
fi

FILE=$PWD/*.uf2

TEST_DIR=$(test -d /media/$USER/RPI-RP2)
if [ $? = 1 ]; then
    echo "[DEPLOYMENT FAILURE]: Pico not found in /media/$USER/"
    exit 1
fi

DIR=/media/$USER/RPI-RP2

cp $FILE $DIR
