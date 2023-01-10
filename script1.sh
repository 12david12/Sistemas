#!/bin/bash
limite=`cat nombres.txt | wc -l`
for i in `seq 1 $limite`
    do
    nombre=`cat nombres.txt | head -n$i | tail -n+1`
    mkdir $nombre
    for j in `seq 1 $1`
        do
        mkdir $nombre/personal$j
        done
done
