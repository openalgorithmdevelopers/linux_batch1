file="$1"
out_file="${file}_stats.txt"

uniq_words=()

while IFS= read -r line; do
    for token in $line; do
        clean_word=$(echo "$token" | tr 'A-Z' 'a-z' | tr -cd 'a-z')

        # skip empty results
        [ -z "$clean_word" ] && continue

        exists=0
        for item in "${uniq_words[@]}"; do
            if [ "$item" = "$clean_word" ]; then
                exists=1
                break
            fi
        done

        if [ "$exists" -eq 0 ]; then
            uniq_words+=("$clean_word")
        fi
    done
done < "$file"

word_count=${#uniq_words[@]}

echo "Total number of unique words in the file: $word_count" > "$out_file"
echo "Completed! Stats saved to $out_file"
