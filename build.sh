#!/bin/bash
rm -Rf blender-2.93.4-linux-x64
rm blender-2.93.4-linux-x64.tar.xz
rm appimagetool-x86_64.AppImage
rm Blender-x86_64.AppImage
wget https://mirror.clarkson.edu/blender/release/Blender2.93/blender-2.93.4-linux-x64.tar.xz
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
chmod 700 appimagetool-x86_64.AppImage
# mkdir nomachine
tar xf blender-2.93.4-linux-x64.tar.xz
chmod 700 AppRun
cp AppRun blender-2.93.4-linux-x64
./appimagetool-x86_64.AppImage blender-2.93.4-linux-x64
