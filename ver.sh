#!/bin/bash

# Autor: Adrián Domínguez Obrero

# En el que si le pasas como parametro la palabra usuarios como parametro te dara un listado con
# los usuarios del sistema(solo su nombre) y si la palabra pasada es configuracion dara un listado de los ficheros
# de la carpeta /etc


if [ $1 == "usuarios" ]
then
   cat /etc/passwd | cut -d ":" -f 1
elif [ $1 == "configuracion" ]
then
   ls /etc
else
   echo "Usa: $0 {usuarios|configuracion}"
fi
