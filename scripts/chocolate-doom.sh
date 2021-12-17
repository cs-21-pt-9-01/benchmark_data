#!/usr/bin/env sh

self=`realpath "$0"`
cur_dir=${self%/*}

/usr/bin/chocolate-doom -config /home/usr/.local/share/chocolate-doom/default.cfg -extraconfig /home/usr/.local/share/chocolate-doom/chocolate-doom.cfg -iwad "${cur_dir}"/wad/DOOM.WAD -playdemo "${cur_dir}"/doomrun -strictdemos
