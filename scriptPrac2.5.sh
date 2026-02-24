#!/bin/bash

# Permita hacer la suma o el producto de todos los valores pasados por parámetros

read -p "¿Quieres hacer suma o producto? " operacion

resultado=0

if [ "$operacion" = "producto" ]
then
    resultado=1
fi

if [ "$#" -eq 0 ]
then
    echo "No has introducido números."
    exit 1
fi

for numero in "$@"
do
    if [ "$operacion" = "suma" ]
    then
        resultado=`expr $resultado + $numero`
    fi

    if [ "$operacion" = "producto" ]
    then
        resultado=`expr $resultado \* $numero`
    fi
done

echo "El resultado es: $resultado"
