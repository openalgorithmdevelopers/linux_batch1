


while true
do
    
    read -p "Enter a number (0 to exit): " num

    # Exit condition
    if [ "$num" -eq 0 ]; then
        echo "Exiting..."
        break
    fi

    
    digits=${#num}
    echo "Number of digits: $digits"

    
    if (( num % 2 == 0 )); then
        echo "The number is Even."
    else
        echo "The number is Odd."
    fi

   
    rev=$(echo $num | rev)
    if [ "$num" == "$rev" ]; then
        echo "The number is a Palindrome."
    else
        echo "The number is not a Palindrome."
    fi

    echo "----------------------------"
done

