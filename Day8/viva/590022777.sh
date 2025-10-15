read -p "Enter your sapid " num
echo "Digits are ${#num} "
count=0
while [ $num-ne0 ] 
do 
  num=$((num/10))
  count=$((count+1))
done 

echo " $count "
