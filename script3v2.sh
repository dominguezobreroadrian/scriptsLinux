#!/bin/bash

echo introduce el numero1
read n1
echo introduce el numero2
read n2

suma=`expr $n1 + $n2`
echo La suma de $n1 y $n2 es:$suma

if test $n1 -lt $n2
then
  echo $n2 es mayor que $n1
else
  echo La resta de $n1 y $n2  es:
expr $n1 - $n2
fi
