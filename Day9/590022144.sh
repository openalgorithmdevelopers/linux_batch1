num=$1
while [ $num -ne 0 ]
do
	num=$((num / 10))
	count=$((count + 1))
done
echo "$count"
