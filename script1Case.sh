#!/bin/bash
# Probando case

echo Elige una opcion
echo 1.-animal
echo 2.-persona
echo 3.-salir
read opcion


case $opcion in
1)
	echo Ha elegido la opcion animal;;
2)
	echo Ha elegido la opcion persona;;
3)
	exit;;
*)
	echo La opcion no es correcta;;
esac
