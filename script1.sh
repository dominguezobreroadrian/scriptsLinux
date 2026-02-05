#!/bin/bash
# Script que diga como se llama el propio script, cuantos argumentos se le han pasado,
# lugar donde me encuantro en la ejecucion, hora actual.

dondeSeEjecuto=`pwd`
horaActual=`date +%T`

echo El nombre del script es $0
echo Ha recibido $# parametros
echo Se esta ejecutando desde $dondeSeEjecuto
echo Y son las $horaActual

