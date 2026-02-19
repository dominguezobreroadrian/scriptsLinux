#!/bin/bash

if [ $# -eq 1 ]
then
	existe=`grep "$1" /etc/passwd`
	if [ -z $existe ]
	then
		echo El usuario no existe

	else
		echo La Home del usuario $1 es `cut -d ":" -f 6` y la shell es `cut -d ":" -f 7`
		read -p "Desea incluir a dicho usuario en un grupo 1=Si, 2=No": resp
		if [ $resp -eq 1 ]
		then
			read -p "Indica en que grupo desea insertar el usuario": grupo
			grep -w "$grupo" /etc/passwd
			if [ $? -eq 0 ]
			then
				sudo adduser $1 $grupo
			else
				echo El grupo $grupo no existe
			fi
		else
			break
		fi
	fi
else
	echo No has pasado 1 argumento has pasado $# argumentos
fi


