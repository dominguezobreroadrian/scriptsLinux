#!/bin/bash

# Que te permita saber cuantos usuarios existen en el sistema pero que no son del propio sistema sino
# creados por usuarios con privilegios de root(estos usuarios son aquellos cuyo UID es 1000 o superior)
# El resultado sera el numero de usuario y sus nombres


total=`awk -F: '$3 >= 1000 { print $1 }' /etc/passwd | wc -l`

echo La lista de usuarios con UID mayor igual que 1000 es:

awk -F: '$3 >= 1000 { print $1 }' /etc/passwd

echo En /etc/passwd hay "$total" usuarios creados por usuarios con privilegios de root
