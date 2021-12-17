#!/usr/bin/env sh

self=`realpath "$0"`
cur_dir=${self%/*}

if [ ! -f mochadoom.cfg ]; then
	echo "copying mochadoom.cfg"
	cp "${cur_dir}"/config/mochadoom/mochadoom.cfg .
fi

if [ ! -f .doomrc ]; then
	echo "copying .doomrc"
	cp "${cur_dir}"/config/mochadoom/.doomrc .
fi

/usr/bin/java -Dsun.java2d.d3d=false -cp /home/usr/benchmark_data/ports/mochadoom-fix.jar mochadoom.Engine %* -multiply 5 -novert -iwad "${cur_dir}"/wad/DOOM.WAD -playdemo "${cur_dir}"/doomrun -strictdemos
