read -p "How many numbers u wanna input? " n
i=1
nums=()

while [ $i -le $n ]
do
    read -p "Enter number $i: " num
    nums+=("$num")
    i=$((i + 1))
done

max=${nums[0]}
min=${nums[0]}

i=0
while [ $i -lt $n ]
do
    if [ "${nums[$i]}" -gt "$max" ]; then
        max=${nums[$i]}
    fi

    if [ "${nums[$i]}" -lt "$min" ]; then
        min=${nums[$i]}
    fi

    i=$((i + 1))
done

echo "Maximum number: $max"
echo "Minimum number: $min"

