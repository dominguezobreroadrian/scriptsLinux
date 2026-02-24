#!/bin/bash

# Que te cuente el número de ficheros ejecutables que hay en un directorio que sera solicitado por teclado
# Primero que diga el numero de ficheros y luego el nombre de los mismos

read -p "Indique la ruta completa del directorio del que quieras la información: " directorio

if [ -d $directorio ]
then
cd "$directorio"
ficheros=0

for i in *
do
    if [ -x $i ]
    then
        ((ficheros++))
    fi
done

echo En el directorio $directorio hay $ficheros ficheros ejecutables.

for i in *
do
    if [ -x $i ]
    then
        echo $i
    fi
done
fi
