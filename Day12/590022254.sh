#!/bin/bash

file=$1

if [ ! -f "$file" ]
then
    echo "File not found!"
    exit 1
fi

output="${file}_stats.txt"

words=()
while read line
do
    for word in $line
    do
        words+=("$word")
    done
done < "$file"

unique=()
for w in "${words[@]}"
do
    found=0
    for u in "${unique[@]}"
    do
        if [ "$w" = "$u" ]; then
            found=1
            break
        fi
    done
    if [ $found -eq 0 ]; then
        unique+=("$w")
    fi
done

echo "File: $file" > "$output"
echo "Total words: ${#words[@]}" >> "$output"
echo "Unique words: ${#unique[@]}" >> "$output"
echo "" >> "$output"
echo "Word counts:" >> "$output"

for u in "${unique[@]}"
do
    count=0
    for w in "${words[@]}"
    do
        if [ "$u" = "$w" ]; then
            count=$((count + 1))
        fi
    done
    echo "$u - $count" >> "$output"
done

echo "Output saved as $output"




