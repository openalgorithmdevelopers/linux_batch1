#!/bin/bash

if [ $# -ne 1 ]; then
    echo "ERROR: Please provide ONE number as command line argument!"
    echo "Example: ./task.sh 123"
else
    num=$1

    if [ $num -gt 0 ]; then
        echo "$num is POSITIVE."
    elif [ $num -lt 0 ]; then
        echo "$num is NEGATIVE."
    else
        echo "$num is ZERO."
    fi

    num_without_sign=${num#-}
    digits=$(echo -n "$num_without_sign" | wc -c)

    echo "Number of digits in $num = $digits"
fi



