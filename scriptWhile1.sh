#!/bin/bash

while true
do
	read -p "Introduzca el nombre del directorio: " directorio
	if test -e $directorio
	then
		ls $directorio
	else
		break
	fi
done
