#!/bin/bash

# Get a number from the user
read -p "Enter a number: " num

# 1) Print number of digits
digits=${#num}
echo "Number of digits: $digits"

# 2) Check if number is odd or even
if (( num % 2 == 0 ))
then
    echo "The number is even"
else
    echo "The number is odd"
fi

# 3) Check if number is palindrome
rev=$(echo "$num" | rev)
if [ "$num" == "$rev" ]
then
    echo "The number is a palindrome"
else
    echo "The number is not a palindrome"
fi
