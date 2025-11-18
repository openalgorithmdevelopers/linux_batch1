if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi
file="$1"
if [ ! -f "$file" ]; then
    echo "File does not exist."
    exit 1
fi
declare -A unique=()
while read -r line; do
    for word in $line; do
        word=$(echo "$word" | tr -cd '[:alnum:]')
        if [ ! -z "$word" ]; then
            if [ -z "${unique[$word]}" ]; then
                unique[$word]=1
            else
                unique[$word]=$((unique[$word] + 1))
            fi
        fi
    done
done < "$file"
echo "Unique words and their frequencies:"
for word in "${!unique[@]}"; do
    echo "$word: ${unique[$word]}"
done

