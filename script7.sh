#!/bin/bash

# Comprobar si dos ficheros pasados como parametros existen si alguno de los dos no existe indicarlo

if test -e $1
then
   echo el fichero $1 ya existe
else
   echo el fichero $1 no existe
fi

if test -e $2
then
   echo el fichero $2 ya existe
else
   echo el fichero $2 no existe
fi

