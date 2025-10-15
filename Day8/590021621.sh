read -p "How many numbers do you want to enter? " n
read -p "Enter number 1: " num
max=$num
min=$num

for ((i=2; i<=n; i++))
do
    read -p "Enter number $i: " num
    
    if [ $num -gt $max ]; then
        max=$num
    fi

    if [ $num -lt $min ]; then
        min=$num
    fi
done

echo "Maximum number: $max"
echo "Minimum number: $min"

