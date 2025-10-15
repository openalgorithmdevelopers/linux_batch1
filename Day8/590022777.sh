revnum=$(echo "$num" | rev)
if [[ "$num" == "$revnum" ]];
then 
    echo "$num is a pallindrome "
else 
    echo "$num is not a pallindrome"
fi
echo "Enter Numbers and enter 0 when do you want to exit"
while true 
do
  read num
  if [ $num -eq 0 ]
  then 
  break 
  fi
  echo $num1 >> remp.txt
done
if [ -z "$min" ]; then
    min=$num
    max=$num
  else
    if [ "$num" -lt "$min" ]; then
      min=$num
    fi
    if [ "$num" -gt "$max" ]; then
      max=$num
    fi

if [ -z "$min" ]; then
  echo "No numbers were entered."
else
  echo "Minimum number: $min"
  echo "Maximum number: $max"
fi 
