#!/usr/bin/bash

#benchmarks=('managed-doom' 'crispy-doom' 'mochadoom' 'chocolate-doom' 'eternity' 'prboom-software' 'prboom-opengl')
#benchmarks=('prboom-software' 'prboom-opengl')
#benchmarks=('mochadoom-fix' 'eternity-uncapped' 'crispy-doom-uncapped')
benchmarks=('chocolate-doom' 'crispy-doom-uncapped' 'crispy-doom')
#benchmarks=('prboom-software' 'prboom-opengl')
n=400
delay=300

cd "$1"

for benchmark in "${benchmarks[@]}"
do
	mkdir "${benchmark}"
	cd "${benchmark}"
	cp /home/usr/rapl.rs/benchmark/macro/doom/prboom-plus.wad .
	raplrs -i /home/usr/idle-data.json -n "$benchmark" benchmark /home/usr/rapl.rs/benchmark/macro/doom/"$benchmark".sh -n "$n"
	echo "sleeping for $delay seconds before next benchmark"
	cd ..
	sleep "${delay}"
done
