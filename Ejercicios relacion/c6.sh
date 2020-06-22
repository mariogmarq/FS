#!/bin/bash
while read -d ";" num; do
	arr=("${arr[@]}" $num)
done
res=`bc -l <<< "${arr[0]}*${arr[4]}*${arr[8]} + ${arr[1]}*${arr[5]}*${arr[6]} + ${arr[2]}*${arr[3]}*${arr[7]} - ${arr[3]}*${arr[4]}*${arr[6]} - ${arr[1]}*${arr[3]}*${arr[8]} - ${arr[0]}*${arr[5]}*${arr[7]}"`
echo $res
