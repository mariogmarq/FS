declare -i h=$1
declare -i z=$2

echo "Primer parametro: " $h;
echo "Segundo parametro: "$z;

echo "Son iguales: " $(($h==$z))
echo "Primero mayor que segundo: " $(($h>$z))
echo "Primero menor que segundo: " $(($h<$z))