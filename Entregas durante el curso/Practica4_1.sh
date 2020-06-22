#!/bin/bash
let primero=$1
if [[ $? == 1 ]]; then
	echo "$1 no es un numero"
	exit 1
fi
let segundo=$2
if [[ $? == 1 ]]; then
	echo "$2 no es un numero"
	exit 1
fi
if [[ "$primero" == "$segundo" ]]; then
	archivos=`ls .`
	echo $PWD
else
	archivos=`ls $HOME`
	printf "$HOME \n"
fi
printf "$archivos\n"