#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <palabra> <carpeta>"
    exit 1
fi

PALABRA="$1"
CARPETA="$2"

if [ ! -d "$CARPETA" ]; then
    echo "Error: '$CARPETA' no es una carpeta"
    exit 1
fi
grep -nI -i --include='*.txt' "$PALABRA" "$CARPETA"/*.txt

