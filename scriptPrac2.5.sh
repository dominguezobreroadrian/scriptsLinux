#!/bin/bash

# Permita hacer la suma o el producto de todos los valores pasados por parámetros

operacion=$1
shift   # Elimina el primer parámetro (suma o producto)

if [ "$operacion" = "suma" ]
then
    resultado=0
fi

if [ "$operacion" = "producto" ]
then
    resultado=1
fi

for numero in $@
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
