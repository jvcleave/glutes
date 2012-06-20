#!/bin/bash

echo "Cleaning"
#make clean -C ../Bld/raspberrypi/
echo "Building"
make -C ../Bld/raspberrypi/
echo "Moving"
cp ../Lib/libglutes.a /usr/lib/
echo "Build App"
g++ -o sample_unix.bin sample_unix.cpp -lX11 -lEGL -lglutes