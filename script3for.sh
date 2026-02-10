#!/bin/bash

# Se solicita al usuario el nombre del directorio en el que quiere comprobar cuantos ficheros hay

echo Indica el directorio ya sea de manera absoluta o relativa para saber cuantos ficheros hay
read dir

contador=0

cd "$dir"

for fich in *
do
   contador=`expr $contador + 1`
done

echo En el directorio $dir hay $contador ficheros
