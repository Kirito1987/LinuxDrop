#!/bin/bash

echo "enter first number:"
read a 
echo "enter second number"
read b

echo "a = $a"
echo "b = $b"

if (( a == b )) 
then
	echo "Numbers are equal"
else
	echo "Numbers are not equal"
fi

echo "Activity Finished"
