#!/bin/bash

# Que te cuente el número de ficheros ejecutables que hay en un directorio que sera solicitado por teclado
# Primero que diga el numero de ficheros y luego el nombre de los mismos

read -p "Introduce el nombre del directorio": nombreDir

buscar=`find / -type d -name "$nombreDir" 2>/dev/null`
contador=0
almacenaNom=""

if [ -z $buscar ]
then
	echo El directorio no existe
else
	for i in *
	do
		if [ -x "$i" ]
		then
			((contador++))
			almacenaNom=`"$almacenaNom"$'\n'"$i"`
		fi
	done
fi

echo El numero de ficheros es:
echo "$contador"
echo Los nombre de los ficheros son:
echo "$almacenaNom"
