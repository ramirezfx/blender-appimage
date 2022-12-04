#!/bin/bash

IMGNAME=blender.png
DESKTOPFILE=blender.desktop

APPPATH=$(kdialog --getopenfilename)

sed -i 's?Exec=blender?Exec='"$APPPATH"' --appimage-extract-and-run?g' $DESKTOPFILE

sudo mv $DESKTOPFILE /usr/share/applications
sudo cp $IMGNAME /usr/share/icons
