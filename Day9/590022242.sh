#!/bin/bash

num=$1

if [ $num -gt 0 ]
then
    echo "It is a positive number!"
elif [ $num -lt 0 ]
then
    echo "It is a negative number!"
else
    echo "Number is Zero"
fi
