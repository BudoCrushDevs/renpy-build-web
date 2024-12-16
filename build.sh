#!/bin/sh

sdk_name="renpy-$1-sdk"
echo "Downloading the specified SDK (${sdk_name})..."
wget -q "https://www.renpy.org/dl/$1/${sdk_name}.tar.bz2"
clear

echo "Downloaded SDK version (${sdk_name})."
echo "Setting up the specified SDK (${sdk_name})..."
tar -xf "./${sdk_name}.tar.bz2"



echo "../${sdk_name}/renpy.sh" "./${sdk_name}/launcher" web_build "$2" --destination "$3"
"../${sdk_name}/renpy.sh" "./${sdk_name}/launcher" web_build "$2" --destination "$3"
