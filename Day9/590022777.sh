if [ $# -eq 0 ];
then
echo "PLEASE INPUT ARRGUMENTS"
else
num=$1
echo "Digits are ${#num} "
count=0
while [ $num -ne 0 ] 
do 
  num=$((num/10))
  count=$((count+1))
done 

echo " $count "
fi

echo "------------------------------------------------------------------------------------------------------"
num=$1
if [ $num -lt 0 ];
then 
echo "Negative "
elif [ $num -gt 0 ];
then 
echo "Positive"
else
echo "Zero"
fi
