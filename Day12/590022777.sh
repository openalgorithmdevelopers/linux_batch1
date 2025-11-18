file=$1
out="file_name_stats.txt"

# Check if file exists
if [ ! -f "$file" ]; then
    echo "file not exists"
    exit 1
fi

words=()
while read line; do
    for w in $line; do
        words+=("$w")
    done
done < "$file"

unique=()
freq=()

for word in "${words[@]}"; do
    found=0

    for ((i=0; i<${#unique[@]}; i++)); do
        if [ "${unique[$i]}" = "$word" ]; then
            freq[$i]=$((freq[$i] + 1))
            found=1
            break
        fi
    done

    if [ $found -eq 0 ]; then
unique+=("$word")
        freq+=("1")
    fi
done


echo "" >> "$out"
echo "2) Total unique words: ${#unique[@]}" >> "$out"


D
echo "Done! Created file_name_stats.txt"
