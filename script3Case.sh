#!/bin/bash

# Crea un fichero con las siguientes opciones:
# 1.-Introduce el usuario que quieres buscar(indicara si existe el usuario o no en el sistema)
# 2.-Introduce el grupo que quieres buscar (indicara si existe o no dicho grupo en el sistema)
# 3.-Indica el fichero a buscar (indicara si existe el fichero o no y dara la ruta completa del mismo)

echo Selecciona una opcion
echo 1.-Introduciras un usuario que quieres buscar
echo 2.-Introduciras un grupo que quieres buscar
echo 3.-Indicaras el fichero a buscar
read opcion

case $opcion in
1)
	read -p "Introduce el usuario a buscar": usuario
	grep -w "^$usuario" /etc/passwd
	if  [ $? -eq 0 ]
	then
		echo El usuario existe
	else
		echo El usuario no existe
	fi;;
2)
	read -p "Introduce el grupo a buscar": grupo
	grep -w "^$grupo" /etc/group
	if [ $? -eq 0 ]
	then
		echo El grupo existe
	else
		echo El grupo no existe
	fi;;
3)
	read -p "Indica el fichero a buscar": fichero
	resultado=$(find / -type f -name "$fichero" 2>/dev/null)

	if [ -z "$resultado" ]
	then
		echo "El fichero no existe."
	else
    		echo "El fichero existe."
		echo "Ruta completa:"
		echo "$resultado"
	fi;;
*)
	echo Opcion no valida;;
esac
