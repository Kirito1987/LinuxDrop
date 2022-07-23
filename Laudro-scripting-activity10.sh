#!/bin/bash

[ -e $1 ] && ( echo "ERROR 49: File existed" ; exit 0 ) || ( touch $1 ; echo "$1 created" )

i=0

while [ $i -le $2 ]

do

echo $RANDOM >> $1

((i++))

done
