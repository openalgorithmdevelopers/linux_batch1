read -p "Enter a number: " num

if [ $((num % 3)) -eq 0 ] && [ $((num % 5)) -eq 0 ]
then
    echo "Yes"
else
    echo "No"
fi





