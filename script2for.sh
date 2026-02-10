#!/bin/bash

for fich in *
do
    if [ ! -w $fich ]
    then
       echo No puedes escribir el fichero $fich
    fi
done
