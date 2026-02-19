#!/bin/bash

while true
do
echo ¿Qué deseas hacer?
echo 1.-Listar los ficheros de configuración del sistema
echo 2.-Quien está conectado en el sistema
echo 3.-Busca un texto en un fichero
echo 4.-Terminar
read respuesta

case $respuesta in
1)
echo Los ficheros de configuracion del sistema son:
ls /etc
echo -----------------------------------------------------------
;;
2)
echo Las personas conectadas al sistema son:
who
echo -----------------------------------------------------------
;;
3)
read -p "Indica el fichero en el que quieres buscar un texto": fichero
read -p "Indica que texto quieres buscar": textoBuscar
resultado=`find / -type f -name $fichero 2>/dev/null`

if [ -z $resultado ]
then
	echo No se encontro el fichero
else
	echo Se encontro:
	grep "$textoBuscar" $resultado
fi
echo -----------------------------------------------------------
;;
4)
exit;;
esac
done
