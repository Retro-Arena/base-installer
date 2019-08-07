#!/bin/bash

# This file is part of The RetroArena (TheRA)
#
# The RetroArena (TheRA) is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/Retro-Arena/RetroArena-Setup/master/LICENSE.md
#

# modify bash
sed -i '1iforce_color_prompt=yes' .bashrc
touch .hushlogin
echo "sudo ~/RetroArena-Setup/retroarena_setup.sh" >.bash_history

# install retroarena
git clone --depth 1 https://github.com/Retro-Arena/RetroArena-Setup.git
cd /home/pigaming/RetroArena-Setup

# install core packages
sudo __nodialog=1 ./retroarena_packages.sh retroarch-dev depends
sudo __nodialog=1 ./retroarena_packages.sh retroarch-dev install_bin
sudo __nodialog=1 ./retroarena_packages.sh retroarch-dev configure
sudo __nodialog=1 ./retroarena_packages.sh retroarch-dev config
sudo __nodialog=1 ./retroarena_packages.sh emulationstation-dev depends
sudo __nodialog=1 ./retroarena_packages.sh emulationstation-dev install_bin
sudo __nodialog=1 ./retroarena_packages.sh emulationstation-dev configure
sudo __nodialog=1 ./retroarena_packages.sh runcommand depends
sudo __nodialog=1 ./retroarena_packages.sh runcommand install_bin
sudo __nodialog=1 ./retroarena_packages.sh runcommand config
sudo __nodialog=1 ./retroarena_packages.sh settingsmenu install_bin
sudo __nodialog=1 ./retroarena_packages.sh settingsmenu configure

# install opt packages
sudo __nodialog=1 ./retroarena_packages.sh kodi depends
sudo __nodialog=1 ./retroarena_packages.sh kodi install_bin
sudo __nodialog=1 ./retroarena_packages.sh launchingimages depends
sudo __nodialog=1 ./retroarena_packages.sh launchingimages install_bin
sudo __nodialog=1 ./retroarena_packages.sh moonlight depends
sudo __nodialog=1 ./retroarena_packages.sh moonlight sources
sudo __nodialog=1 ./retroarena_packages.sh moonlight build
sudo __nodialog=1 ./retroarena_packages.sh moonlight install
sudo __nodialog=1 ./retroarena_packages.sh moonlight configure
sudo __nodialog=1 ./retroarena_packages.sh moonlight clean
sudo __nodialog=1 ./retroarena_packages.sh retrohub install_bin
sudo __nodialog=1 ./retroarena_packages.sh retrohub configure
sudo __nodialog=1 ./retroarena_packages.sh skyscraper depends
sudo __nodialog=1 ./retroarena_packages.sh skyscraper sources
sudo __nodialog=1 ./retroarena_packages.sh skyscraper build
sudo __nodialog=1 ./retroarena_packages.sh skyscraper install
sudo __nodialog=1 ./retroarena_packages.sh skyscraper configure
sudo __nodialog=1 ./retroarena_packages.sh skyscraper clean
sudo __nodialog=1 ./retroarena_packages.sh splashscreen install_bin
sudo __nodialog=1 ./retroarena_packages.sh splashscreen enable
sudo __nodialog=1 ./retroarena_packages.sh usbromservice install_bin
sudo __nodialog=1 ./retroarena_packages.sh usbromservice configure
sudo __nodialog=1 ./retroarena_packages.sh usbromservice enable

# configure settings
sudo __nodialog=1 ./retroarena_packages.sh autostart enable
sudo __nodialog=1 ./retroarena_packages.sh bashwelcometweak install
sudo __nodialog=1 ./retroarena_packages.sh samba depends
sudo __nodialog=1 ./retroarena_packages.sh samba install_shares

# install libretro
sudo __nodialog=1 ./retroarena_packages.sh lr-4do install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-4do configure
sudo __nodialog=1 ./retroarena_packages.sh lr-81 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-81 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-atari800 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-atari800 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-lynx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-lynx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-ngp install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-ngp configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-pce-fast install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-pce-fast configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-pcfx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-pcfx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-psx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-psx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-psx-hw install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-psx-hw configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-supergrafx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-supergrafx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-vb install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-vb configure
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-wswan install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-beetle-wswan configure
sudo __nodialog=1 ./retroarena_packages.sh lr-bluemsx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-bluemsx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-caprice32 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-caprice32 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-dinothawr install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-dinothawr configure
sudo __nodialog=1 ./retroarena_packages.sh lr-dosbox install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-dosbox configure
sudo __nodialog=1 ./retroarena_packages.sh lr-fbalpha2012 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-fbalpha2012 configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-easyrpgplayer install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-easyrpgplayer configure
sudo __nodialog=1 ./retroarena_packages.sh lr-fbneo install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-fbneo configure
sudo __nodialog=1 ./retroarena_packages.sh lr-fceumm install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-fceumm configure
sudo __nodialog=1 ./retroarena_packages.sh lr-flycast install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-flycast configure
sudo __nodialog=1 ./retroarena_packages.sh lr-fmsx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-fmsx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-freechaf install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-freechaf configure
sudo __nodialog=1 ./retroarena_packages.sh lr-freeintv install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-freeintv configure
sudo __nodialog=1 ./retroarena_packages.sh lr-fuse install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-fuse configure
sudo __nodialog=1 ./retroarena_packages.sh lr-gambatte install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-gambatte configure
sudo __nodialog=1 ./retroarena_packages.sh lr-genesis-plus-gx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-genesis-plus-gx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-gpsp install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-gpsp configure
sudo __nodialog=1 ./retroarena_packages.sh lr-gw install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-gw configure
sudo __nodialog=1 ./retroarena_packages.sh lr-handy install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-handy configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-hatari depends
#sudo __nodialog=1 ./retroarena_packages.sh lr-hatari install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-hatari configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mame depends
sudo __nodialog=1 ./retroarena_packages.sh lr-mame install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mame configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-mame2000 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-mame2000 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mame2003 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mame2003 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mame2003-plus install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mame2003-plus configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mame2010 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mame2010 configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-mame2014 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-mame2014 configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-mame2015 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-mame2015 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mame2016 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mame2016 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-meowpc98 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-meowpc98 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mesen depends
sudo __nodialog=1 ./retroarena_packages.sh lr-mesen install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mesen configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mess depends
sudo __nodialog=1 ./retroarena_packages.sh lr-mess install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mess configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mess2015 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mess2015 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mess2016 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mess2016 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mgba install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mgba configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mrboom install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mrboom configure
sudo __nodialog=1 ./retroarena_packages.sh lr-mupen64plus-nx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-mupen64plus-nx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-nestopia install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-nestopia configure
sudo __nodialog=1 ./retroarena_packages.sh lr-np2kai install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-np2kai configure
sudo __nodialog=1 ./retroarena_packages.sh lr-nxengine install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-nxengine configure
sudo __nodialog=1 ./retroarena_packages.sh lr-o2em install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-o2em configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-parallel-n64 depends
#sudo __nodialog=1 ./retroarena_packages.sh lr-parallel-n64 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-parallel-n64 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-parallel-n64-nx depends
sudo __nodialog=1 ./retroarena_packages.sh lr-parallel-n64-nx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-parallel-n64-nx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-pcsx-rearmed depends
sudo __nodialog=1 ./retroarena_packages.sh lr-pcsx-rearmed install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-pcsx-rearmed configure
sudo __nodialog=1 ./retroarena_packages.sh lr-picodrive install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-picodrive configure
sudo __nodialog=1 ./retroarena_packages.sh lr-pokemini install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-pokemini configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-ppsspp depends
#sudo __nodialog=1 ./retroarena_packages.sh lr-ppsspp install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-ppsspp configure
sudo __nodialog=1 ./retroarena_packages.sh lr-prboom install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-prboom configure
sudo __nodialog=1 ./retroarena_packages.sh lr-prosystem install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-prosystem configure
sudo __nodialog=1 ./retroarena_packages.sh lr-px68k install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-px68k configure
sudo __nodialog=1 ./retroarena_packages.sh lr-quasi88 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-quasi88 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-quicknes install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-quicknes configure
sudo __nodialog=1 ./retroarena_packages.sh lr-reminiscence install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-reminiscence configure
sudo __nodialog=1 ./retroarena_packages.sh lr-scummvm install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-scummvm configure
sudo __nodialog=1 ./retroarena_packages.sh lr-snes9x install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-snes9x configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-snes9x2002 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-snes9x2002 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-snes9x2005 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-snes9x2005 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-snes9x2010 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-snes9x2010 configure
sudo __nodialog=1 ./retroarena_packages.sh lr-stella install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-stella configure
sudo __nodialog=1 ./retroarena_packages.sh lr-superflappybirds depends
sudo __nodialog=1 ./retroarena_packages.sh lr-superflappybirds install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-superflappybirds configure
sudo __nodialog=1 ./retroarena_packages.sh lr-tyrquake install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-tyrquake configure
sudo __nodialog=1 ./retroarena_packages.sh lr-vba-next install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-vba-next configure
sudo __nodialog=1 ./retroarena_packages.sh lr-vecx install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-vecx configure
sudo __nodialog=1 ./retroarena_packages.sh lr-vice install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-vice configure
sudo __nodialog=1 ./retroarena_packages.sh lr-virtualjaguar install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-virtualjaguar configure
sudo __nodialog=1 ./retroarena_packages.sh lr-x1 install_bin
sudo __nodialog=1 ./retroarena_packages.sh lr-x1 configure
#sudo __nodialog=1 ./retroarena_packages.sh lr-yabasanshiro install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lr-yabasanshiro configure

# install standalone
sudo __nodialog=1 ./retroarena_packages.sh advmame depends
sudo __nodialog=1 ./retroarena_packages.sh advmame install_bin
sudo __nodialog=1 ./retroarena_packages.sh advmame configure
sudo __nodialog=1 ./retroarena_packages.sh advmame-0.94 depends
sudo __nodialog=1 ./retroarena_packages.sh advmame-0.94 install_bin
sudo __nodialog=1 ./retroarena_packages.sh advmame-0.94 configure
sudo __nodialog=1 ./retroarena_packages.sh advmame-1.4 depends
sudo __nodialog=1 ./retroarena_packages.sh advmame-1.4 install_bin
sudo __nodialog=1 ./retroarena_packages.sh advmame-1.4 configure
#sudo __nodialog=1 ./retroarena_packages.sh ags depends
#sudo __nodialog=1 ./retroarena_packages.sh ags install_bin
#sudo __nodialog=1 ./retroarena_packages.sh ags configure
#sudo __nodialog=1 ./retroarena_packages.sh amiberry depends
#sudo __nodialog=1 ./retroarena_packages.sh amiberry install_bin
#sudo __nodialog=1 ./retroarena_packages.sh amiberry configure
#sudo __nodialog=1 ./retroarena_packages.sh atari800 depends
#sudo __nodialog=1 ./retroarena_packages.sh atari800 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh atari800 configure
sudo __nodialog=1 ./retroarena_packages.sh basilisk depends
sudo __nodialog=1 ./retroarena_packages.sh basilisk install_bin
sudo __nodialog=1 ./retroarena_packages.sh basilisk configure
#sudo __nodialog=1 ./retroarena_packages.sh creativision depends
#sudo __nodialog=1 ./retroarena_packages.sh creativision install_bin
#sudo __nodialog=1 ./retroarena_packages.sh creativision configure
sudo __nodialog=1 ./retroarena_packages.sh daphne depends
sudo __nodialog=1 ./retroarena_packages.sh daphne install_bin
sudo __nodialog=1 ./retroarena_packages.sh daphne configure
sudo __nodialog=1 ./retroarena_packages.sh dosbox depends
sudo __nodialog=1 ./retroarena_packages.sh dosbox install_bin
sudo __nodialog=1 ./retroarena_packages.sh dosbox configure
#sudo __nodialog=1 ./retroarena_packages.sh dosbox-sdl2 depends
#sudo __nodialog=1 ./retroarena_packages.sh dosbox-sdl2 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh dosbox-sdl2 configure
#sudo __nodialog=1 ./retroarena_packages.sh drastic install_bin
#sudo __nodialog=1 ./retroarena_packages.sh drastic configure
sudo __nodialog=1 ./retroarena_packages.sh frotz install_bin
sudo __nodialog=1 ./retroarena_packages.sh frotz configure
#sudo __nodialog=1 ./retroarena_packages.sh fruitbox depends
#sudo __nodialog=1 ./retroarena_packages.sh fruitbox install_bin
#sudo __nodialog=1 ./retroarena_packages.sh fruitbox configure
sudo __nodialog=1 ./retroarena_packages.sh gsplus depends
sudo __nodialog=1 ./retroarena_packages.sh gsplus install_bin
sudo __nodialog=1 ./retroarena_packages.sh gsplus configure
sudo __nodialog=1 ./retroarena_packages.sh hatari depends
sudo __nodialog=1 ./retroarena_packages.sh hatari install_bin
sudo __nodialog=1 ./retroarena_packages.sh hatari configure
#sudo __nodialog=1 ./retroarena_packages.sh jzintv depends
#sudo __nodialog=1 ./retroarena_packages.sh jzintv install_bin
#sudo __nodialog=1 ./retroarena_packages.sh jzintv configure
#sudo __nodialog=1 ./retroarena_packages.sh kodi install_bin
s#udo __nodialog=1 ./retroarena_packages.sh kodi configure
sudo __nodialog=1 ./retroarena_packages.sh linapple depends
sudo __nodialog=1 ./retroarena_packages.sh linapple install_bin
sudo __nodialog=1 ./retroarena_packages.sh linapple configure
#sudo __nodialog=1 ./retroarena_packages.sh love depends
#sudo __nodialog=1 ./retroarena_packages.sh love install_bin
#sudo __nodialog=1 ./retroarena_packages.sh love configure
#sudo __nodialog=1 ./retroarena_packages.sh love-0.10.2 depends
#sudo __nodialog=1 ./retroarena_packages.sh love-0.10.2 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh love-0.10.2 configure
#sudo __nodialog=1 ./retroarena_packages.sh minivmac depends
#sudo __nodialog=1 ./retroarena_packages.sh minivmac install_bin
#sudo __nodialog=1 ./retroarena_packages.sh minivmac configure
sudo __nodialog=1 ./retroarena_packages.sh mupen64plus depends
sudo __nodialog=1 ./retroarena_packages.sh mupen64plus install_bin
sudo __nodialog=1 ./retroarena_packages.sh mupen64plus configure
#sudo __nodialog=1 ./retroarena_packages.sh np2pi depends
#sudo __nodialog=1 ./retroarena_packages.sh np2pi install_bin
#sudo __nodialog=1 ./retroarena_packages.sh np2pi configure
sudo __nodialog=1 ./retroarena_packages.sh openbor depends
sudo __nodialog=1 ./retroarena_packages.sh openbor install_bin
sudo __nodialog=1 ./retroarena_packages.sh openbor configure
sudo __nodialog=1 ./retroarena_packages.sh openmsx depends
sudo __nodialog=1 ./retroarena_packages.sh openmsx install_bin
sudo __nodialog=1 ./retroarena_packages.sh openmsx configure
sudo __nodialog=1 ./retroarena_packages.sh oricutron depends
sudo __nodialog=1 ./retroarena_packages.sh oricutron install_bin
sudo __nodialog=1 ./retroarena_packages.sh oricutron configure
sudo __nodialog=1 ./retroarena_packages.sh ppsspp depends
sudo __nodialog=1 ./retroarena_packages.sh ppsspp install_bin
sudo __nodialog=1 ./retroarena_packages.sh ppsspp configure
sudo __nodialog=1 ./retroarena_packages.sh ppsspp cheats
#sudo __nodialog=1 ./retroarena_packages.sh px68k depends
#sudo __nodialog=1 ./retroarena_packages.sh px68k install_bin
#sudo __nodialog=1 ./retroarena_packages.sh px68k configure
sudo __nodialog=1 ./retroarena_packages.sh quasi88 depends
sudo __nodialog=1 ./retroarena_packages.sh quasi88 install_bin
sudo __nodialog=1 ./retroarena_packages.sh quasi88 configure
#sudo __nodialog=1 ./retroarena_packages.sh reicast depends
#sudo __nodialog=1 ./retroarena_packages.sh reicast install_bin
#sudo __nodialog=1 ./retroarena_packages.sh reicast configure
#sudo __nodialog=1 ./retroarena_packages.sh residualvm depends
#sudo __nodialog=1 ./retroarena_packages.sh residualvm install_bin
#sudo __nodialog=1 ./retroarena_packages.sh residualvm configure
sudo __nodialog=1 ./retroarena_packages.sh scummvm depends
sudo __nodialog=1 ./retroarena_packages.sh scummvm install_bin
sudo __nodialog=1 ./retroarena_packages.sh scummvm configure
#sudo __nodialog=1 ./retroarena_packages.sh sdltrs depends
#sudo __nodialog=1 ./retroarena_packages.sh sdltrs install_bin
#sudo __nodialog=1 ./retroarena_packages.sh sdltrs configure
sudo __nodialog=1 ./retroarena_packages.sh simcoupe depends
sudo __nodialog=1 ./retroarena_packages.sh simcoupe install_bin
sudo __nodialog=1 ./retroarena_packages.sh simcoupe configure
#sudo __nodialog=1 ./retroarena_packages.sh stella depends
#sudo __nodialog=1 ./retroarena_packages.sh stella install_bin
#sudo __nodialog=1 ./retroarena_packages.sh stella configure
sudo __nodialog=1 ./retroarena_packages.sh ti99sim depends
sudo __nodialog=1 ./retroarena_packages.sh ti99sim install_bin
sudo __nodialog=1 ./retroarena_packages.sh ti99sim configure
#sudo __nodialog=1 ./retroarena_packages.sh uae4arm depends
#sudo __nodialog=1 ./retroarena_packages.sh uae4arm install_bin
#sudo __nodialog=1 ./retroarena_packages.sh uae4arm configure
sudo __nodialog=1 ./retroarena_packages.sh vice depends
sudo __nodialog=1 ./retroarena_packages.sh vice install_bin
sudo __nodialog=1 ./retroarena_packages.sh vice configure
#sudo __nodialog=1 ./retroarena_packages.sh xm7 depends
#sudo __nodialog=1 ./retroarena_packages.sh xm7 install_bin
#sudo __nodialog=1 ./retroarena_packages.sh xm7 configure
sudo __nodialog=1 ./retroarena_packages.sh xroar depends
sudo __nodialog=1 ./retroarena_packages.sh xroar install_bin
sudo __nodialog=1 ./retroarena_packages.sh xroar configure
sudo __nodialog=1 ./retroarena_packages.sh yabause depends
sudo __nodialog=1 ./retroarena_packages.sh yabause install_bin
sudo __nodialog=1 ./retroarena_packages.sh yabause configure
#sudo __nodialog=1 ./retroarena_packages.sh zesarux depends
#sudo __nodialog=1 ./retroarena_packages.sh zesarux install_bin
#sudo __nodialog=1 ./retroarena_packages.sh zesarux configure

# install ports
#sudo __nodialog=1 ./retroarena_packages.sh abuse depends
#sudo __nodialog=1 ./retroarena_packages.sh abuse install_bin
#sudo __nodialog=1 ./retroarena_packages.sh abuse configure
#sudo __nodialog=1 ./retroarena_packages.sh alephone depends
#sudo __nodialog=1 ./retroarena_packages.sh alephone install_bin
#sudo __nodialog=1 ./retroarena_packages.sh alephone configure
#sudo __nodialog=1 ./retroarena_packages.sh bombermaaan depends
#sudo __nodialog=1 ./retroarena_packages.sh bombermaaan install_bin
#sudo __nodialog=1 ./retroarena_packages.sh bombermaaan configure
#sudo __nodialog=1 ./retroarena_packages.sh cannonball depends
#sudo __nodialog=1 ./retroarena_packages.sh cannonball install_bin
#sudo __nodialog=1 ./retroarena_packages.sh cannonball configure
#sudo __nodialog=1 ./retroarena_packages.sh cdogs-sdl depends
#sudo __nodialog=1 ./retroarena_packages.sh cdogs-sdl install_bin
#sudo __nodialog=1 ./retroarena_packages.sh cdogs-sdl configure
#sudo __nodialog=1 ./retroarena_packages.sh cgenius depends
#sudo __nodialog=1 ./retroarena_packages.sh cgenius install_bin
#sudo __nodialog=1 ./retroarena_packages.sh cgenius configure
#sudo __nodialog=1 ./retroarena_packages.sh darkplaces-quake depends
#sudo __nodialog=1 ./retroarena_packages.sh darkplaces-quake install_bin
#sudo __nodialog=1 ./retroarena_packages.sh darkplaces-quake configure
#sudo __nodialog=1 ./retroarena_packages.sh devilutionx install_bin
#sudo __nodialog=1 ./retroarena_packages.sh devilutionx configure
sudo __nodialog=1 ./retroarena_packages.sh digger depends
sudo __nodialog=1 ./retroarena_packages.sh digger install_bin
sudo __nodialog=1 ./retroarena_packages.sh digger configure
#sudo __nodialog=1 ./retroarena_packages.sh dxx-rebirth depends
#sudo __nodialog=1 ./retroarena_packages.sh dxx-rebirth install_bin
#sudo __nodialog=1 ./retroarena_packages.sh dxx-rebirth configure
sudo __nodialog=1 ./retroarena_packages.sh easyrpgplayer depends
sudo __nodialog=1 ./retroarena_packages.sh easyrpgplayer install_bin
sudo __nodialog=1 ./retroarena_packages.sh easyrpgplayer configure
sudo __nodialog=1 ./retroarena_packages.sh eduke32 depends
sudo __nodialog=1 ./retroarena_packages.sh eduke32 install_bin
sudo __nodialog=1 ./retroarena_packages.sh eduke32 configure
#sudo __nodialog=1 ./retroarena_packages.sh freeciv depends
#sudo __nodialog=1 ./retroarena_packages.sh freeciv install_bin
#sudo __nodialog=1 ./retroarena_packages.sh freeciv configure
sudo __nodialog=1 ./retroarena_packages.sh hcl depends
sudo __nodialog=1 ./retroarena_packages.sh hcl install_bin
sudo __nodialog=1 ./retroarena_packages.sh hcl configure
#sudo __nodialog=1 ./retroarena_packages.sh jumpnbump depends
#sudo __nodialog=1 ./retroarena_packages.sh jumpnbump install_bin
#sudo __nodialog=1 ./retroarena_packages.sh jumpnbump configure
#sudo __nodialog=1 ./retroarena_packages.sh lincity-ng depends
#sudo __nodialog=1 ./retroarena_packages.sh lincity-ng install_bin
#sudo __nodialog=1 ./retroarena_packages.sh lincity-ng configure
#sudo __nodialog=1 ./retroarena_packages.sh micropolis depends
#sudo __nodialog=1 ./retroarena_packages.sh micropolis install_bin
#sudo __nodialog=1 ./retroarena_packages.sh micropolis configure
#sudo __nodialog=1 ./retroarena_packages.sh mysticmine depends
#sudo __nodialog=1 ./retroarena_packages.sh mysticmine install_bin
#sudo __nodialog=1 ./retroarena_packages.sh mysticmine configure
sudo __nodialog=1 ./retroarena_packages.sh openblok depends
sudo __nodialog=1 ./retroarena_packages.sh openblok install_bin
sudo __nodialog=1 ./retroarena_packages.sh openblok configure
#sudo __nodialog=1 ./retroarena_packages.sh openfodder depends
#sudo __nodialog=1 ./retroarena_packages.sh openfodder install_bin
#sudo __nodialog=1 ./retroarena_packages.sh openfodder configure
#sudo __nodialog=1 ./retroarena_packages.sh openttd depends
#sudo __nodialog=1 ./retroarena_packages.sh openttd install_bin
#sudo __nodialog=1 ./retroarena_packages.sh openttd configure
#sudo __nodialog=1 ./retroarena_packages.sh opentyrian depends
#sudo __nodialog=1 ./retroarena_packages.sh opentyrian install_bin
#sudo __nodialog=1 ./retroarena_packages.sh opentyrian configure
#sudo __nodialog=1 ./retroarena_packages.sh pingus install_bin
#sudo __nodialog=1 ./retroarena_packages.sh pingus configure
sudo __nodialog=1 ./retroarena_packages.sh rawgl depends
sudo __nodialog=1 ./retroarena_packages.sh rawgl install_bin
sudo __nodialog=1 ./retroarena_packages.sh rawgl configure
sudo __nodialog=1 ./retroarena_packages.sh sdlpop depends
sudo __nodialog=1 ./retroarena_packages.sh sdlpop install_bin
sudo __nodialog=1 ./retroarena_packages.sh sdlpop configure
#sudo __nodialog=1 ./retroarena_packages.sh smw depends
#sudo __nodialog=1 ./retroarena_packages.sh smw install_bin
#sudo __nodialog=1 ./retroarena_packages.sh smw configure
sudo __nodialog=1 ./retroarena_packages.sh smw-netplay depends
sudo __nodialog=1 ./retroarena_packages.sh smw-netplay install_bin
sudo __nodialog=1 ./retroarena_packages.sh smw-netplay configure
#sudo __nodialog=1 ./retroarena_packages.sh solarus depends
#sudo __nodialog=1 ./retroarena_packages.sh solarus install_bin
#sudo __nodialog=1 ./retroarena_packages.sh solarus configure
sudo __nodialog=1 ./retroarena_packages.sh splitwolf depends
sudo __nodialog=1 ./retroarena_packages.sh splitwolf install_bin
sudo __nodialog=1 ./retroarena_packages.sh splitwolf configure
sudo __nodialog=1 ./retroarena_packages.sh srb2 depends
sudo __nodialog=1 ./retroarena_packages.sh srb2 install_bin
sudo __nodialog=1 ./retroarena_packages.sh srb2 configure
#sudo __nodialog=1 ./retroarena_packages.sh supertux install_bin
#sudo __nodialog=1 ./retroarena_packages.sh supertux configure
sudo __nodialog=1 ./retroarena_packages.sh tyrquake depends
sudo __nodialog=1 ./retroarena_packages.sh tyrquake install_bin
sudo __nodialog=1 ./retroarena_packages.sh tyrquake configure
#sudo __nodialog=1 ./retroarena_packages.sh uqm depends
#sudo __nodialog=1 ./retroarena_packages.sh uqm install_bin
#sudo __nodialog=1 ./retroarena_packages.sh uqm configure
#sudo __nodialog=1 ./retroarena_packages.sh wolf4sdl depends
#sudo __nodialog=1 ./retroarena_packages.sh wolf4sdl install_bin
#sudo __nodialog=1 ./retroarena_packages.sh wolf4sdl configure
sudo __nodialog=1 ./retroarena_packages.sh yquake2 depends
sudo __nodialog=1 ./retroarena_packages.sh yquake2 install_bin
sudo __nodialog=1 ./retroarena_packages.sh yquake2 configure
#sudo __nodialog=1 ./retroarena_packages.sh zdoom depends
#sudo __nodialog=1 ./retroarena_packages.sh zdoom install_bin
#sudo __nodialog=1 ./retroarena_packages.sh zdoom configure

# install bgm
cd /home/pigaming
git clone --depth 1 https://github.com/Retro-Arena/bgm.git RetroArena/bgm
rm -rf RetroArena/bgm/.git
rm -rf RetroArena/bgm/.gitattributes

# install mali
cd /home/pigaming
wget https://raw.githubusercontent.com/Retro-Arena/base-installer/master/n2_mali.tar.gz
tar -xzf n2_mali.tar.gz
rm -rf n2_mali.tar.gz
cd mali && sudo ./install.sh && cd ~

# make esdir
mkdir /home/pigaming/.emulationstation/themes

# copy configs
sudo cp /home/pigaming/RetroArena-Setup/configs/all/autostart.sh /opt/retroarena/configs/all/autostart.sh
sudo cp /home/pigaming/RetroArena-Setup/configs/all/launching.png /opt/retroarena/configs/all/launching.png

# cleanup
sudo rm -rf /root/n2_build_bin.sh
sudo rm -rf /root/n2_packages.txt
sudo rm -rf /home/pigaming/n2_build_bin.sh

# setup script
sudo /home/pigaming/RetroArena-Setup/retroarena_setup.sh
