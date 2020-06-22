printf "Los archivos del directorio %s que han sido accedidos en los ultimos %d dias son:" $1 $2
find $1 -atime -$2
