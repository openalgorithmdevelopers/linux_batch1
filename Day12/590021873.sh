file="$1"

read_words() {
    words=($(tr -c 'a-zA-Z' '\n' < "$file" | tr 'A-Z' 'a-z'))
}

count_unique_words() {
    unique=()
    freq=()

    for w in "${words[@]}"; do
        [[ -z "$w" ]] && continue
        found=0

        for i in "${!unique[@]}"; do
            if [[ "${unique[$i]}" == "$w" ]]; then
                freq[$i]=$((freq[$i] + 1))
                found=1
                break
            fi
        done

        if [[ $found -eq 0 ]]; then
            unique+=("$w")
            freq+=(1)
        fi
    done
}

write_output() {
    echo "Total number of unique words: ${#unique[@]}" > stats.txt
    echo "" >> stats.txt
    echo "Unique words and their frequencies:" >> stats.txt

    for i in "${!unique[@]}"; do
        echo "${unique[$i]} : ${freq[$i]}" >> stats.txt
    done
}

read_words
count_unique_words
write_output

echo "Output saved to stats.txt"
