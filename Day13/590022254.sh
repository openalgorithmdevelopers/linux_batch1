#!/bin/bash

file="top_output.txt"

top -b -n 1 > "$file"

pids=()
names=()
mems=()

i=0
start=0

while read line
do
    set -- $line

    if [ "$1" = "PID" ]; then
        start=1
        continue
    fi

    if [ $start -eq 1 ]; then
        pids[$i]=$1
        mems[$i]=$10
        names[$i]=$12

        i=$((i+1))

        if [ $i -eq 5 ]; then
            break
        fi
    fi

done < "$file"

echo "Top 5 Memory Consuming Processes:"
echo "---------------------------------"

for ((k=0; k<5; k++))
do
    echo "PID: ${pids[$k]}  MEM(%): ${mems[$k]}  NAME: ${names[$k]}"
done
