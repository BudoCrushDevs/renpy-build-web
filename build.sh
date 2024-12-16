#!/bin/sh

sdk_name=renpy-$1-sdk
echo "Downloading the specified SDK (${sdk_name})..."
wget -q https://www.renpy.org/dl/$1/${sdk_name}.tar.bz2
clear

echo "Downloaded SDK version (${sdk_name})."
echo "Setting up the specified SDK (${sdk_name})..."
tar -xf ./${sdk_name}.tar.bz2
rm ./${sdk_name}.tar.bz2
mv ./${sdk_name} ../renpy




echo ../renpy/renpy.sh ../renpy/launcher web_build "$2" --destination "$3"
../renpy/renpy.sh ../renpy/launcher web_build "$2" --destination "$3"
