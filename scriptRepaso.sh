#!/bin/bash

while true
do
echo ============================"BUSCADOR AVANZADO"=========================
echo 1.- Buscar archivo por nombre
echo 2.- Buscar texto dentro de un archivo
echo 3.- Buscar archivos por extension
echo 4.- Mostrar 10 archivos más grandes
echo 5.- Salir
echo ========================================================================
read opcion

case $opcion in
1)
	read -p "Introduce el nombre del fichero a buscar": fichero
	buscar=`find / -type f -name "$fichero" 2>/dev/null`

	if [[ -n "$buscar" ]]; then
		echo El fichero ha sido encontrado
		echo "$buscar"
	else
		echo El fichero $fichero no ha sido encontrado
	fi
;;
2)
	read -p "Introduce el nombre del fichero donde se buscara un texto": fich
	buscarlo=`find / -type f -name "$fich" 2>/dev/null`

	if [[ -n "$buscarlo" ]]; then
		read -p "Introduce el texto a buscar en el fichero": texto

		if grep -q "$texto" "$buscarlo"; then
			echo El texto a sido encontrado
			echo `grep "$texto" "$buscarlo"`
		else
			echo El texto no a sido encontrado
		fi
	else
		echo El fichero no existe
	fi

;;
3)
	read -p "Indica que extension de archivo quieres buscar": extension
	encontrar=`ls *.$extension`

	for fich in "$encontrar"
	do
		echo "$fich"
	done
;;
4)
	find . -type f -size +1k 2>/dev/null | head -10
;;
5)
	exit
;;
*)
	echo Has introducido un valor incorrecto
;;
esac
done
