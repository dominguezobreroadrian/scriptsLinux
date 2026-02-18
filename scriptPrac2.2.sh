#!/bin/bash

read -p "Introduce el fichero resultante": nombreCompri

while [ -e $nombreCompri  ]
do
	read -p "Introduce el fichero resultante": nombreCompri
done

tar -czvf $nombreCompri.tar.gz --files-from /dev/null

read -p "Cuantos ficheros quiere insertar": numero

for i in $numero
do
	read -p "Introduce el fichero a meter": nombreFich
	if [ -e $nombreFich  ]
	then
		gunzip $nombreCompri.tar.gz
		tar -rvf $nombreCompri.tar $nombreFich
		gzip $nombreCompri.tar
	fi
done
