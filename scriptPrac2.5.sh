#!/bin/bash

# Permita hacer la suma o el producto de todos los valores pasados por parámetros

read -p "¿Quieres hacer suma o producto? ": operacion

resultado=0

if [ "$operacion" = "producto" ]
then
	resultado=1
fi

for numero in "$@"
do
if [ $# -ge 2 ]
then
    if [ "$operacion" = "suma" ]
    then
        resultado=`expr $resultado + $numero`
    fi

    if [ "$operacion" = "producto" ]
    then
        resultado=`expr $resultado \* $numero`
    fi
else
	echo Has introducido menos 2 dos parametros
fi
done

echo "El resultado es: $resultado"
