#!/usr/bin/env sh

self=`realpath "$0"`
cur_dir=${self%/*}

/usr/bin/crispy-doom -config /home/usr/.local/share/crispy-doom/default.cfg -extraconfig /home/usr/.local/share/crispy-doom/crispy-doom.cfg -iwad "${cur_dir}"/wad/DOOM.WAD -playdemo "${cur_dir}"/doomrun -strictdemo
