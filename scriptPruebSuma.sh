#!/bin/bash

num1=$2
num2=$3
operador=$1

case $1 in
+)
	echo El resultado de la suma es `expr $2 + $3`;;
-)
	if [[ $2 -ge $3 ]]
	then
		echo El resultado de la resta es `expr $2 - $3`
	else
		echo La resta no se puede realizar ya que $3 es mayor que $2
	fi;;
/)
	if [[ $3 == 0 ]]
	then
		echo La division no se puede realizar entre 0
	else
		if [[ $2 -ge $3 ]]
		then
			echo El resultado de la division es `expr $2 / $3`
		else
			echo No se puede realizar la division
		fi
	fi;;
\*)
	echo El producto de $2 y $3 es `expr $2 \* $3`;;
*)
	echo No me sirve ese operador;;
esac
