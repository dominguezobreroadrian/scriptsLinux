#!/bin/bash



for num in "$@"
do
	if [[ "$num" =~ ^-?[0-9]+$ ]]
	then
		echo $num - Es un numero
	else
		echo $num - Es un String
	fi
done
