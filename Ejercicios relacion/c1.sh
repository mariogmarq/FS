#!/bin/bash
if [[ -e $1 ]]; then
    echo "El fichero $1 ya existe";
    exit 1;
fi

for var in "$@"; do
    if [[ $var != $1 ]]; then
        more $var >> $1;
    fi
done
