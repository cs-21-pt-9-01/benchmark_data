#!/usr/bin/env sh

self=`realpath "$0"`
cur_dir=${self%/*}

/usr/bin/chocolate-doom -iwad "${cur_dir}"/wad/NUTSMERGE.WAD -playdemo "${cur_dir}"/nutsloadrun.lmp -strictdemos
