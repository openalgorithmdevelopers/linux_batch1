
echo "Enter a number:"
read num

n=$num

if [ $n -lt 0 ]; then
    n=$(( -n ))
fi

while [ $n -ge 2 ]
do
    n=$((n - 2))
done

if [ $n -eq 0 ]
then
    echo "$num is even"
else
    echo "$num is odd"
fi

