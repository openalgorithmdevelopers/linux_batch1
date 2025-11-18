count_unique_words() {
    word_count=""
    unique_words=""
    while IFS= read -r line
    do
        for word in $line
        do
            cleaned_word=$(echo "$word" | sed 's/[^a-zA-Z0-9]//g' | tr '[:upper:]' '[:lower:]')
            if [ -n "$cleaned_word" ]
            then
                if [[ ! " $word_count " =~ " $cleaned_word " ]]
                then
                    word_count="$word_count $cleaned_word"
                    unique_words="$unique_words$cleaned_word"$'\n'
                fi
            fi
        done
    done < "$1"
    unique_word_count=$(echo "$word_count" | wc -w)
    echo "Total number of unique words: $unique_word_count"
    echo "Unique words:"
    echo "$unique_words"
}

if [ $# -ne 1 ]
then
    echo "Invalid command line arguments! Only one file name allowed!"
    exit 1
fi

file_path=$1

if [ ! -f "$file_path" ]
then
    echo "The file '$file_path' does not exist."
    exit 1
fi

file_name=$(basename "$file_path")
file_name_without_extension="${file_name%.*}"
output_file="${file_name_without_extension}_stats.txt"

count_unique_words "$file_path" > "$output_file"
echo "Stats saved to $output_file"

