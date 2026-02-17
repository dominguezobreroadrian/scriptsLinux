#!/bin/bash

# Que haga las funciones de una calculadora en el debe solicitar al usuario 2 valores al usuario y posteriormente
# mostrar un menu con las opciones sumar restar multiplicar dividir y salir

read -p "Introduce un numero": num1
read -p "Introduce otro numero": num2

echo Elige una opcion
echo 1.-sumar
echo 2.-restar
echo 3.-multiplicar
echo 4.-dividir
echo 5.-salir
read respuesta

case $respuesta in
1)
	echo La suma de los dos valores es $(expr $num1 + $num2);;
2)
	echo La resta de los dos valores es $(expr $num1 - $num2);;
3)
	echo La multiplicacion de los dos valores es $(expr $num1 \* $num2);;
4)
	if test $num1 -ge $num2
	then
		echo La division de $num1 y $num2 es $(expr $num1 / $num2)
	else
		echo La division no se puede realizar porque $num1 es menor que $num2
	fi;;
5)
	exit;;
*)
	echo La opcion no es valida;;
esac
