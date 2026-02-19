#!/bin/bash

# 3.-Debe indicar hoy es dia de mes de año
# 6.-Calendario del mes que diga el usuario
while true
do
echo ¿Qué deseas hacer?
echo 0.-Terminar
echo 1.-Listar los ficheros de configuracion del sistema
echo 2.-Quien está conectado en el sistema
echo 3.-Fecha actual
echo 4.-Memoria Libre
echo 5.-Nombre Máquina
echo 6.-Calendario
read respuesta

case $respuesta in
0)
exit
;;
1)
echo Esto son los ficheros de configuracion del sistema:
ls /etc
echo ----------------------------------------------------
;;
2)
echo Esto son los usuarios conectados en el sistema:
who
echo ----------------------------------------------------
;;
3)
echo Hoy es dia `date +%d` del mes `date +%m` del año `date +%Y`
echo ----------------------------------------------------
;;
4)
echo La memoria libre es de: `grep -w "MemAvailable" /proc/meminfo | awk '{print $2,$3}'`
echo ----------------------------------------------------
;;
5)
echo El nombre de la maquina es:
hostname
echo ----------------------------------------------------
;;
6)
read -p "Introduce el numero del mes del que quieres ver el calendario": cal
cal -m $cal
echo ----------------------------------------------------
;;
esac
done
