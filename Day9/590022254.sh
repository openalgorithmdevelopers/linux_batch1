#!/bin/bash


if [ $# -eq 0 ]; then
    echo "Please provide a number as argument!"
    exit 1
fi

num=$1


if [ $num -gt 0 ]; then
    echo "$num is Positive"
elif [ $num -lt 0 ]; then
    echo "$num is Negative"
else
    echo "$num is Zero"
fi


abs_num=${num#-}
count=${#abs_num}

echo "Number of digits in $num = $count"


