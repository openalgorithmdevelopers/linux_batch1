num=$1

if [ $num ]
then
if [ $num -eq 0 ]
then
	echo "Zero number"
elif [ $num -gt 0 ]
then
	echo "Positive number"
else
	echo "Negative number"
fi

while  [ $num -ne 0 ]
do
	digCount=$((digCount+1))
	num=$((num/10))
done

echo "The given number has $digCount digits"
else 
	echo "No number given"
fi
