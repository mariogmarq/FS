#!/bin/bash
while [[ 1 ]]; do
	echo "Escoja una opcion: 1) Sumar 2) Restar 3) Multiplicar 4) salir";
	read -a opcion;
	case $opcion in
	 	1 )
			echo "Introduzca un numero: ";
			read -a numero1;
			echo "Introduzca otro numero: ";
			read -a numero2;
			let suma=numero1+numero2;
			echo "Numero1=$numero1  Numero2=$numero2  Suma=$suma";
	 		;;
	 	2 )
			echo "Introduzca un numero: ";
			read -a numero1;
			echo "Introduzca otro numero: ";
			read -a numero2;
			let resta=numero1-numero2;
			echo "Numero1=$numero1  Numero2=$numero2  Resta=$resta";
			;;
		3 )
			echo "Introduzca un numero: ";
			read -a numero1;
			echo "Introduzca otro numero: ";
			read -a numero2;
			let producto=numero1*numero2;
			echo "Numero1=$numero1  Numero2=$numero2  Producto=$producto";
			;;
		4 )
			exit 1
			;;
	 esac 
done