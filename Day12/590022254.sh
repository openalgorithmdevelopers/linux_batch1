#!/bin/bash

file=$1

if [ -z "$file" ]
then
    echo "Usage: ./script.sh <path-to-file>"
    exit 1
fi

if [ ! -f "$file" ]
then
    echo "File not found!"
    exit 1
fi

filename=$(basename "$file")
name="${filename%.*}"
output="${name}_stats.txt"

echo "Top 5 most occurring words:" > "$output"
echo "----------------------------" >> "$output"
echo -e "Count\tWord" >> "$output"
tr " " "\n" < "$file" | sort | uniq -c | sort -nr | head -5 | awk '{printf "%s\t%s\n", $1, $2}' >> "$output"

echo "" >> "$output"
echo "Total unique words:" >> "$output"
tr " " "\n" < "$file" | sort | uniq | wc -l >> "$output"

echo "" >> "$output"
echo "All unique words with frequency:" >> "$output"
echo "----------------------------" >> "$output"
echo -e "Count\tWord" >> "$output"
tr " " "\n" < "$file" | sort | uniq -c | sort -nr | awk '{printf "%s\t%s\n", $1, $2}' >> "$output"

echo "Output saved as $output"



