#!/bin/bash
if [[ $# != 2 ]]; then
    echo "Muy pocos argumentos";
    exit 1;
fi;

convert +append $@ resultado
