#!/bin/bash

# se solicita al usuario su nombre y su edad si es mayor de edad que le de un
# saludo y si no que le de un aviso de que no puede entrar porque es menor

echo Introduce tu nombre y edad
read nombre edad

if test $edad -ge 18
then
	echo Buenas $nombre bienvenido eres mayor de edad
else
	echo Hola $nombre no eres mayor de edad
fi
