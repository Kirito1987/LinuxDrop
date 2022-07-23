#!/bin/bash

echo "These are the winning lottery numbers: "

for i in {0..5}
do
	num=$[$RANDOM % 50 + 1]
	echo "Number $i: $num"
done

num=$[$RANDOM % 10 + 1]
echo "Bonus ball number is: $num"
