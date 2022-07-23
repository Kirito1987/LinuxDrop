#!/bin/bash

#readarray -t arr < example.txt

input=`cat example.txt`

arr=($input)

l=${#arr[*]}

i=1

arr=(`echo "${arr[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '`)

swap=1

while (( swap == 1 ))

do

i=1

swap=0

while (( i <= $(( l - 1 )) ))

do

if (( arr[$((i-1))] < arr[$i] ))

then

temp=${arr[$((i-1))]}

arr[$((i-1))]=${arr[$i]}

arr[$i]=$temp

swap=1

fi

((i++))

done

done

echo ${arr[@]}

exit 0


