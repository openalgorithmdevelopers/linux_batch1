#!/bin/bash
if [ $1 -gt 0 ]; then
echo "$1 is Positive"
elif [ $1 -lt 0 ]; then
echo "$1 is Negative"
else
echo"$1 is Zero"
fi

