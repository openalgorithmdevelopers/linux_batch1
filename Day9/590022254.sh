#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Please run like: ./script.sh <number> <position>"
else
    num=$1
    pos=$2

    if [ $num -lt 0 ]
    then
        num=$(( -num ))
    fi

    len=${#num}

    if [ $pos -le 0 ] || [ $pos -gt $len ]
    then
        echo "Invalid"
    else
        i=1
        temp=$num

        while [ $i -lt $pos ]
        do
            temp=$(( temp / 10 ))
            i=$(( i + 1 ))
        done

        digit=$(( temp % 10 ))
        echo "Digit at position $pos is: $digit"
    fi
fi





