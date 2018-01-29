#!/usr/bin/env bash

WRK=$(pwd)
cd $WRK

VER="v"
VER+="$SNAPCRAFT_PROJECT_VERSION"
FILENAME="restic_"
FILENAME+="$SNAPCRAFT_PROJECT_VERSION"
FILENAME+="_linux_amd64"

wget https://github.com/restic/restic/releases/download/$VER/$FILENAME.bz2
bunzip2 $WRK/$FILENAME.bz2
mv $WRK/$FILENAME $WRK/restic
chmod +x $WRK/restic

exit 0
