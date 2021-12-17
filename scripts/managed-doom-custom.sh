#!/usr/bin/bash

self=`realpath "$0"`
cur_dir=${self%/*}

/home/usr/managed-doom/ubuntu.21.04-x64/managed-doom -iwad "${cur_dir}"/wad/tnt.wad -playdemo "${cur_dir}"/1kmaphk
