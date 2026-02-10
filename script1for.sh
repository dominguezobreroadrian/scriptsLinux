#!/bin/bash

contador=0

for i in $*
do

    echo $i
    contador=`expr $contador + 1`

done

echo Has pasado $contador argumentos
