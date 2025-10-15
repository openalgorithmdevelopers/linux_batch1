while true
do
    echo "==============================="
    echo "        MENU"
    echo "==============================="
    echo "1. Check if a number is Palindrome"
    echo "2. Sort multiple numbers"
    echo "3. Exit"
    echo "==============================="
    read -p "Enter your choice (1-3): " choice

    case $choice in
        1)
            # Palindrome check
            read -p "Enter a number: " num
            rev=$(echo $num | rev)

            if [ "$num" == "$rev" ]; then
                echo "$num is a Palindrome number."
            else
                echo "$num is NOT a Palindrome number."
            fi
            ;;
        2)
            # Sorting numbers
            read -p "Enter numbers separated by spaces: " -a nums
            echo "Choose sorting order:"
            echo "1. Ascending"
            echo "2. Descending"
            read -p "Enter your choice (1 or 2): " order

            if [ "$order" -eq 1 ]; then
                echo "Sorted in Ascending order:"
                printf "%s\n" "${nums[@]}" | sort -n
            elif [ "$order" -eq 2 ]; then
                echo "Sorted in Descending order:"
                printf "%s\n" "${nums[@]}" | sort -nr
            else
                echo "Invalid order choice!"
            fi
            ;;
        3)
            echo "Exiting... Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice! Please enter 1, 2, or 3."
            ;;
    esac

    echo "-------------------------------"
done
