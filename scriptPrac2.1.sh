#!/bin/bash

var=`ls *.txt`

for fich in $var
do
  echo El contenido del fichero $fich es:
  cat $fich
done
