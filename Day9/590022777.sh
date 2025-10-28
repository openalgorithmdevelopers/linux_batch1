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

