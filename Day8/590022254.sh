#!/bin/bash

while true
do
    echo "==============================="
    echo "        MENU"
    echo "==============================="
    echo "1. Check if a number is Palindrome"
    echo "2. Sort numbers"
    echo "3. Exit"
    echo "==============================="
    
    echo -n "Enter your choice (1-3): "
    read choice

  
    if [ "$choice" -eq 1 ]; then
        echo -n "Enter a number: "
        read num
        rev=""
        length=${#num}


        for (( i=length-1; i>=0; i-- ))
        do
            rev="$rev${num:$i:1}"
        done

        if [ "$num" = "$rev" ]; then
            echo "$num is a Palindrome."
        else
            echo "$num is NOT a Palindrome."
        fi


    elif [ "$choice" -eq 2 ]; then
        echo "Enter numbers one by one (type 'done' to finish):"
        numbers=()
        while true
        do
            read n
            if [ "$n" = "done" ]; then
                break
            fi
            numbers+=($n)
        done

        echo "Choose sorting order:"
        echo "1. Ascending"
        echo "2. Descending"
        echo -n "Enter your choice: "
        read order

        len=${#numbers[@]}
        for (( i=0; i<len-1; i++ ))
        do
            for (( j=i+1; j<len; j++ ))
            do
                if [ "$order" -eq 1 ]; then

                    if [ ${numbers[i]} -gt ${numbers[j]} ]; then
                        temp=${numbers[i]}
                        numbers[i]=${numbers[j]}
                        numbers[j]=$temp
                    fi
                else

                    if [ ${numbers[i]} -lt ${numbers[j]} ]; then
                        temp=${numbers[i]}
                        numbers[i]=${numbers[j]}
                        numbers[j]=$temp
                    fi
                fi
            done
        done

        echo "Sorted numbers: ${numbers[@]}"


    elif [ "$choice" -eq 3 ]; then
        echo "Goodbye!"
        break

    # Invalid choice
    else
        echo "Invalid choice! Please enter 1, 2, or 3."
    fi

    echo "-------------------------------"
done
