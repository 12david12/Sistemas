#!/bin/bash
limite=`cat precipitaciones.txt | wc -l`
suma=0

for i in `seq 1 $limite`
do
    temp=`cat precipitaciones.txt | awk '{print($2)}' | head -n$i | tail -n1`
    suma=$((suma+temp))
    echo "$temp"
done

promedio=$((suma/limite))
echo "El promedio es $promedio"
