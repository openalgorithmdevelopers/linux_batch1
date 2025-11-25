file=$1
name=$2

while read line
do
    prev=""
    for w in $line
    do
        if [ "$prev" = "$name" ]; then
            echo "$w"
        fi
        prev=$w
    done
done < "$file"

