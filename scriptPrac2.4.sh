#!/bin/bash
# Autor: Adrián Domínguez Obrero

if [ $# -eq 1 ]
then
	existe=`grep "$1" /etc/passwd`
	if [ -z "$existe" ]
	then
		echo El usuario no existe

	else
		echo La Home del usuario $1 es:
		echo "$existe" | cut -d ":" -f 6
		echo Y la shell es:
		echo "$existe" | cut -d ":" -f 7

		read -p "Desea incluir a dicho usuario en un grupo 1=Si, 2=No": resp
		if [ "$resp" -eq 1 ]
		then
			read -p "Indica en que grupo desea insertar el usuario": grupo
			grep -w "$grupo" /etc/group
			if [ $? -eq 0 ]
			then
				sudo adduser $1 $grupo
			else
				echo El grupo $grupo no existe
			fi
		else
			exit 0
		fi
	fi
else
	echo No has pasado 1 argumento has pasado $# argumentos
fi


