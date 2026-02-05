#!/bin/bash

# En el que se crea el fichero pasado como primer parametro en el directorio pasado como segundo parametro. 
# Se debe de comprobar en cada momento si el fichero ya existe o si el directorio ya existe

crearDir=`mkdir $2`
crearFich=`touch $1`
acceder=`cd $2`

if test -d $2
then
   echo El directorio ya existe
else
   
fi


