#/bin/bash

# nombre de la carpeta o archivo
DIR="carpeta_prueba"
FILE="hola.txt"
CONTENT="este es el contenido del archivo hola.txt"

# verificamos si la carpeta existe
if [-d "$DIR"]; then
    echo "La Carpeta Existe"

    # verifica si existe el archivo hola.txt
    if [ -f "$DIR/$FILE" ]; then
        echo "Existe el archivo $FILE"

        # verificamos si tiene contenido el archivo
        if [ -s "$DIR/$FILE" ]; then
            echo "El archivo $FILE"
        else
            echo "archivo no posee contenido, agregando"
            echo "$CONTENT" > "$FILE"
        fi
    else
        echo "El archivo $FILE no existe dentro de la carpeta $DIR"
        echo "Se creará y se agregará contenido en ella"
        echo "$CONTENT" > "$DIR/$FILE"
    fi
else
    echo "La Carpeta no existe. Se creará"
    mkdir "$DIR"
    echo "Creando el archivo $FILE y agregando contenido"
    echo "$CONTENT" > "$DIR/$FILE"
fi