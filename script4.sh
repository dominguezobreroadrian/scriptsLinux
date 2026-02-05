#!/bin/bash

cadena1=`pwd`

if test $cadena1 = $HOME
   then
	echo se esta ejecutando en tu home
   else
	echo no se esta ejecutando en tu home estas en $cadena1
fi
