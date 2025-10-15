#!/bin/bash

echo -n "Enter a number: "
read num


count=0

temp=$num


while [ $temp -ne 0 ]
do
    temp=$((temp / 10))
    count=$((count + 1))
done

echo "Number of digits in $num is: $count"
