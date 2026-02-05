#!/bin/bash

# Comprueba si un fichero o directorio existe y si esta vacío o no

if test -s $1
then
   echo El fichero $1 existe y no está vacío
else
   echo El fichero $1 o no existe o está vacío
fi
