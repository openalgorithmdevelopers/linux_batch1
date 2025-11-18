if [ $# -eq 0 ]
then
    echo "Please give a file name."
    exit 1
fi

file=$1
output="${file}_stats.txt"

unique_words=()

while read -r line
do
    for w in $line
    do
        word=$(echo "$w" | tr 'A-Z' 'a-z' | tr -cd 'a-z')

        if [ -z "$word" ]; then
            continue
        fi

        found=0
        for u in "${unique_words[@]}"; do
            if [ "$u" = "$word" ]; then
                found=1
                break
            fi
        done

        if [ $found -eq 0 ]; then
            unique_words+=("$word")
        fi
    done
done < "$file"

unique_count=${#unique_words[@]}

echo "Total number of unique words in the file: $unique_count" > "$output"

echo "Done! Output saved in $output"

