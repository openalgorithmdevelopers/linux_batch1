n=$1
k=$2

if [ $# -eq 2 ]
then
currentDig=$((n%10))
while [ $n -ne 0 ]
do
	if [ $currentDig -eq $k ] 
	then
		echo "Found $k"
		exit 0
	fi
	currentDig=$((n%10))
	n=$((n/10))
done
echo "Not found"
else 
	echo "Invalid Input"
fi
