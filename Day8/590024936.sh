#!/bin/bash


read -p "Enter a number: " num
rev=$(echo "$num" | rev)

if [ "$num" == "$rev" ]; then
    echo " $num is a palindrome number."
else
    echo " $num is not a palindrome number."
fi

