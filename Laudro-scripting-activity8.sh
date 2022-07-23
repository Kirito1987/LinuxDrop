#! /bin/sh

i=1

arr=()

while (( i < 6 ))

do

echo "ENTER input NUMBER ${i}"

read input

arr+=($input)

((i++))

done

echo ${arr[@]}

echo "DO YOU WANT TO CONTINUE?(yes/no)"

read input

YES=${input}

while [ $YES == "yes" ] && [ $i -lt "11" ]

do

echo "ENTER input NUMBER ${i}"

read input

arr+=($input)

((i++))

if (( "$i" < 11 ))

then

echo "Do YOU WANT TO CONTINUE?(yes/no)"

read input

YES=${input}

fi

done

mult=1

sum=0

min=${arr[0]}

max=${arr[0]}

for ii in ${arr[@]}

do

mult=$((mult*ii))

sum=$((sum+ii))

if (( min > ii ))

then

min=$ii

fi

if (( max < ii ))

then

max=$ii

fi

done

echo "product is $mult"

avg=$((sum/i))

echo "average is $avg"

echo "sum is $sum"

echo "max is $max"
