file=$1
out="file_name_stats.txt"


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


for word in "${words[@]}"; do
    found=0

    for u in "${unique[@]}"; do
        if [ "$u" = "$word" ]; then
            found=1
            break
        fi
    done

    if [ $found -eq 0 ]; then
        unique+=("$word")
    fi
done


echo "Total unique words: ${#unique[@]}" > "$out"

echo "Done! Created file_name_stats.txt"

