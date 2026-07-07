#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso correto: ./backup_dados.sh <nome_do_ficheiro>"
    exit 1
fi

FICHEIRO=$1

if [ ! -f "$FICHEIRO" ]; then
    echo "Erro: O ficheiro $FICHEIRO não foi encontrado."
else
    cp "$FICHEIRO" "$FICHEIRO.bak"
    echo "Backup de $FICHEIRO criado com sucesso!"
fi

