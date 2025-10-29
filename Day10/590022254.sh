#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Please give a filename!"
else
    file=$1

    if [ -f "$file" ]; then
        spaces=$(tr -cd " " < "$file" | wc -c)
        is_count=$(grep -Eowi "is" "$file" | wc -l)
        characters=$(wc -m < "$file")

        echo "Number of spaces: $spaces"
        echo "Number of \"is\": $is_count"
        echo "Total characters: $characters"
    else
        echo "File does not exist!"
    fi
fi

