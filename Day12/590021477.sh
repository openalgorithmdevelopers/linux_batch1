#!/bin/bash

file=$1

if [ $# -ne 1 ]; then
    echo "Usage: $0 file_name_stats.txt"
    exit 1
fi

if [ ! -f "$file" ]; then
    echo "File not found"
    exit 1
fi

words=()

while read line
do
    for w in $line
    do
        words+=("$w")
    done
done < "$file"


unique_words=()
counts=()

i=0
while [ $i -lt ${#words[@]} ]
do
    word="${words[$i]}"
    found=0
    
    j=0
    while [ $j -lt ${#unique_words[@]} ]
    do
        if [ "$word" = "${unique_words[$j]}" ]; then
            counts[$j]=$(( counts[$j] + 1 ))
            found=1
            break
        fi
        j=$((j+1))
    done
    
    if [ $found -eq 0 ]; then
        unique_words+=("$word")
        counts+=(1)
    fi

    i=$((i+1))
done

n=${#unique_words[@]}

x=0
while [ $x -lt $n ]
do
    y=$((x+1))
    while [ $y -lt $n ]
    do
        if [ ${counts[$y]} -gt ${counts[$x]} ]; then
           
            temp=${counts[$x]}
            counts[$x]=${counts[$y]}
            counts[$y]=$temp

            
            tempw=${unique_words[$x]}
            unique_words[$x]=${unique_words[$y]}
            unique_words[$y]=$tempw
        fi
        y=$((y+1))
    done
    x=$((x+1))
done


echo "Top 5 Most Occurring Words:" > file_name_stats.txt

limit=5
if [ $n -lt 5 ]; then
    limit=$n
fi

k=0
while [ $k -lt $limit ]
do
    echo "${counts[$k]} ${unique_words[$k]}" >> file_name_stats.txt
    k=$((k+1))
done

echo "" >> file_name_stats.txt
echo "Total Unique Words:" >> file_name_stats.txt
echo "$n" >> file_name_stats.txt

echo "" >> file_name_stats.txt
echo "All Unique Words and Their Frequency:" >> file_name_stats.txt

k=0
while [ $k -lt $n ]
do
    echo "${counts[$k]} ${unique_words[$k]}" >> file_name_stats.txt
    k=$((k+1))
done
