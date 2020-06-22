#1. mkdir repaso repaso/prueba1 repaso/prueba2 repaso/prueba1/ejercicio1
#2. touch arch1.txt arch2.txt arch3.txt arch4.pdf arch5.pdf
#3. let --help | grep "expresiones" > arch1.txt
#4. cp ejercicio1/*.*x* ejercicio1/prueba2
#5. man find | head -15 >> ejercicio1/prueba2/arch1.txt
#6. let w="2+3+4+5/2" && echo $w
	echo '2+3+4+5/2' | bc -l
#7. touch repaso


#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Necesitas introducir dos parametros, el primero un directorio y el segundo un archivo";
exit 1
fi
if [[ -f $2 ]]; then
	head -3 $2 > salida
	echo "Se ha pasado a salida las 3 primeras lineas del archivo";
else
	echo "$2 no es un archivo";
	exit 1
fi
if [[ -d $1 ]]; then
	files=`ls $1 | wc -w`;
	echo "$1 contiene $files archivos";
else
	mkdir $1
fi
archivos=`find $1 -perm -u+r`;
find $1 -perm -u+r >> salida;
number=`find $1 -perm -u+r | wc -l`;
n=`ls -LR $1 | wc -l`;
echo "De un total de $n archivos, hay $number archivos con permiso de lectura"
