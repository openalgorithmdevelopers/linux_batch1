<<<<<<< HEAD
while true
do
    # Get number from user
    read -p "Enter a number (0 to exit): " num

    # Exit condition
    if [ "$num" -eq 0 ]; then
        echo "Exiting..."
        break
    fi

    # 1) Print number of digits
    digits=${#num}
    echo "Number of digits: $digits"

    # 2) Check odd or even
    if (( num % 2 == 0 )); then
        echo "The number is Even."
    else
        echo "The number is Odd."
    fi

    # 3) Check palindrome
    rev=$(echo $num | rev)
    if [ "$num" == "$rev" ]; then
        echo "The number is a Palindrome."
    else
        echo "The number is not a Palindrome."
    fi

    echo "----------------------------"
done
=======
read -p "Enter a number: " num

# 1) Print the number of digits
digits=${#num}
echo "Number of digits: $digits"

# 2) Print whether the number is odd or even
if [ $((num % 2)) -eq 0 ]; then
    echo "The number is even"
else
    echo "The number is odd"
fi

# 3) Print whether the number is palindrome or not
rev=$(echo "$num" | rev)
if [ "$num" == "$rev" ]; then
    echo "The number is a palindrome"
else
    echo "The number is not a palindrome"
fi
>>>>>>> 432a75f (priyanshu 14th oct)
