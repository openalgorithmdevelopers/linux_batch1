Q1

#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi
num=$1
if [ $num -gt 0 ]; then
    echo "$num is positive."
elif [ $num -lt 0 ]; then
    echo "$num is negative."
else
    echo "$num is zero."
fi

Q2

#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi
num=$1
num=${num#-}
count=${#num}
echo "Number of digits: $count"

