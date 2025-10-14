#!/bin/bash

read -p "Enter a number: " num

# 1) Print the number of digits
digits=${#num}
echo "Number of digits: $digits"

# 2) Print whether the number is odd or even
if [ $((num % 2)) -eq 0 ]; then
    echo "The number is even"
else
    echo "The number is odd"
fi

# 3) Print whether the number is palindrome or not
rev=$(echo "$num" | rev)
if [ "$num" == "$rev" ]; then
    echo "The number is a palindrome"
else
    echo "The number is not a palindrome"
fi
