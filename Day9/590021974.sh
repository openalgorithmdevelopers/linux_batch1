num1=$1
count=0
while [ $num1 -ne 0 ]
do
    num1=$((num1 / 10))
    count=$((count + 1))
done
echo "$count"
