#!/bin/bash
rm -Rf blender-*
rm blender-2.93.4-linux-x64.tar.xz
rm appimagetool-x86_64.AppImage
rm Blender-x86_64.AppImage

BASEURL=https://download.blender.org/release/
APPVER=$(wget -O - $BASEURL |   grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep Blender | grep -v Benchmark | sort -V | tail -n 1)
BASEURL=$BASEURL$APPVER
APPVER=$(wget -O - $BASEURL |   grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep linux | sort -V | tail -n 1)

wget -O blender-latest.tar.xz $BASEURL$APPVER

#wget https://mirror.clarkson.edu/blender/release/Blender2.93/blender-2.93.4-linux-x64.tar.xz


wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
chmod 700 appimagetool-x86_64.AppImage
tar xf blender-latest.tar.xz
rm blender-latest.tar.xz
APPDIR=$(basename $APPVER .tar.xz)
chmod 700 AppRun
cp AppRun $APPDIR
./appimagetool-x86_64.AppImage $APPDIR
