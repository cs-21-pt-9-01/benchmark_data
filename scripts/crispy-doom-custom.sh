#!/usr/bin/env sh

self=`realpath "$0"`
cur_dir=${self%/*}

/usr/bin/crispy-doom -iwad "${cur_dir}"/wad/DOOM2.WAD -merge "${cur_dir}"/wad/1kmaphk.wad -playdemo "${cur_dir}"/1kmaphk -strictdemo
