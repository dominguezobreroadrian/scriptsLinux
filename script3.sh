#!/bin/bash

suma=`expr $1 + $2`
echo la suma de $1 y $2 es:$suma

if test $1 -lt $2
then
  echo $2 es mayor que $1
else
  echo La resta de $1 y $2  es:
expr $1 - $2
fi
