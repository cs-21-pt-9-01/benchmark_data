#!/usr/bin/bash

self=`realpath "$0"`
cur_dir=${self%/*}

/home/usr/doom-binaries/eternity-engine/eternity -user /home/usr/.config/eternity/user -iwad "${cur_dir}"/wad/DOOM.WAD -playdemo "${cur_dir}"/doomrun.lmp 
