#!/bin/bash

# En el que se crea el fichero pasado como primer parametro en el directorio pasado como segundo parametro. 
# Se debe de comprobar en cada momento si el fichero ya existe o si el directorio ya existe

if test -d "$2"
then
   echo El directorio ya existe
else
   mkdir "$2"
   echo Directorio creado correctamente
fi

cd "$2"

if test -e "$1"
then 
   echo El fichero ya existe
else
   touch "$1"
   echo Fichero creado correctamente
fi


