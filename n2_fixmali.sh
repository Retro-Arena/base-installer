#!/bin/sh

# This file is part of The RetroArena (TheRA)
#
# The RetroArena (TheRA) is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/Retro-Arena/RetroArena-Setup/master/LICENSE.md
#

apt-get -qq update
apt-get -qq purge mali-fbdev
apt-get -qq -y install mesa-common-dev libegl1-mesa-dev libgles2-mesa-dev
apt-get -qq download mali-fbdev >/dev/null 2>&1
dpkg -x mali-fbdev*.deb /tmp/out
rm -rf mali-fbdev*.deb
cd /tmp/out
cp -r * /
rm -rf /tmp/out
echo "-----------------> success"
