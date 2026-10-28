#!/bin/bash


if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <palabra> <archivo.txt>"
    exit 1
fi

PALABRA="$1"
ARCHIVO="$2"


grep -n -i "$PALABRA" "$ARCHIVO"
