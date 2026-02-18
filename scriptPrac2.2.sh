#!/bin/bash

#!/bin/bash

read -p "Introduce el fichero resultante: " nombreCompri

while [ -e "$nombreCompri.tar.gz" ]
do
    read -p "El fichero ya existe. Introduce otro nombre: " nombreCompri
done

# Crear tar vacío
tar -cf "$nombreCompri.tar" --files-from /dev/null

read -p "Cuantos ficheros quiere insertar: " numero

for ((i=1; i<=numero; i++))
do
    read -p "Introduce el fichero a meter: " nombreFich
    
    if [ -e "$nombreFich" ]
    then
        tar -rf "$nombreCompri.tar" "$nombreFich"
    else
        echo "El fichero no existe"
    fi
done

# Comprimir al final
gzip "$nombreCompri.tar"

echo "Archivo $nombreCompri.tar.gz creado correctamente"
