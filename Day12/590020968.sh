#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 input_filename"
    exit 1
fi

FILENAME="$1"
OUTFILE="file_name_stats.txt"

if [ ! -r "$FILENAME" ]; then
    echo "File does not exist or is not readable: $FILENAME"
    exit 1
fi

word_stats=$(tr -cs 'a-zA-Z' '[\n*]' < "$FILENAME" | tr 'A-Z' 'a-z' | sort | uniq -c | sort -nr)

echo "1) Top five most occurring words:" > "$OUTFILE"
echo "$word_stats" | head -5 | awk '{print $2 ": " $1 " times"}' >> "$OUTFILE"

unique_count=$(echo "$word_stats" | wc -l)
echo -e "\n2) Total number of unique words: $unique_count" >> "$OUTFILE"

echo -e "\n3) All unique words and their frequency:" >> "$OUTFILE"
echo "$word_stats" | awk '{print $2 ": " $1 " times"}' >> "$OUTFILE"

echo "Results written to $OUTFILE"

