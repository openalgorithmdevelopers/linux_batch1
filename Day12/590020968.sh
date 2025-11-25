#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file="$1"
output_file="file_name_stats.txt"

tr '[:upper:]' '[:lower:]' < "$input_file" | tr -c 'a-z0-9\n' '\n' | grep -v '^$' | sort | uniq -c | sort -nr > temp_counts.txt

echo "Top five most occurring words:" > "$output_file"
head -n 5 temp_counts.txt | awk '{print $2": "$1}' >> "$output_file"

unique_count=$(wc -l < temp_counts.txt)

echo "" >> "$output_file"
echo "Total number of unique words:" >> "$output_file"
echo "$unique_count" >> "$output_file"

rm temp_counts.txt

echo "Output written to file_name_stats.txt"
