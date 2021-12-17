#!/usr/bin/env sh

self=`realpath "$0"`
cur_dir=${self%/*}
echo "$cur_dir/wad/DOOM.WAD"


/usr/bin/prboom-plus -config "/home/usr/.prboom-plus/opengl.cfg" -iwad "$cur_dir/wad/DOOM.WAD" -playdemo "${cur_dir}"/doomrun -strictdemo

