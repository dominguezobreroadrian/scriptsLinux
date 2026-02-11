#!/bin/bash

# Solicita un valor al usuario y va a devolver el numero de valores pares que hay
# hasta dicho valor (desde el 0 hasta el numero que me diga)

read -p "Introduce un valor: " numero

contador=0

while (( numero >= 0 ))
do
	if (( numero % 2 == 0 ))
	then
		((contador++))
	fi
	((numero--))
done

echo Hay $contador numeros pares
