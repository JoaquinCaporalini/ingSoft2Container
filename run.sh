#!/bin/bash

if [ ! -f ./Dockerfile ]; then
    echo "El docker file para construir la imagen no se encuentra en el directorio actual 👀" 
    exit 1
fi

# Construir la imagen
docker build -t ingsoft2 .

echo \
"    ____            _____       ______     ________
   /  _/___  ____ _/ ___/____  / __/ /_   /  _/  _/
   / // __ \/ __ \`/\__ \/ __ \/ /_/ __/   / / / /  
 _/ // / / / /_/ /___/ / /_/ / __/ /_   _/ /_/ /   
/___/_/ /_/\__, //____/\____/_/  \__/  /___/___/   
          /____/                                   
"

echo "Contenedor creado con el fin de hacer el trabajo final de Ingeniería de Software"
echo "El contenedor tiene cargados:"
echo "    - Prolog: {log} esta en la carpeta \`/setlog\`. Para trabajar ejecutá "
echo "        \`cp /setlog/* .\` por única vez"
echo "    - Fastest: Esta en la carpeta \`/fastest\`. Para trabajar ejecutá "
echo "        \`java -jar fastest.jar\` Copiando en ese directorio la especificación"


# Correr el contenedor
docker run -it -v $(pwd):/workspace ingsoft2 bash