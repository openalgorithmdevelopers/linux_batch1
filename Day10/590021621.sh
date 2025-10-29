filename="RohanSharma.txt"



echo "Echo the number of spaces present in the file"


count=0


searchforchar=" " 


while IFS= read -n1 char


do 


if [ "$char" = "$searchforchar" ] 


then 


((count++))


fi


done < "$filename"


echo "$count"








echo  "----------------------------------------------------------------------------------------------------------" 





echo "Echo the number of times "is" is present in the file"


count=0


searchforchar="is"


while read -n2 char


do 


if [ "$char" = "$searchforchar" ]


then


((count++))


fi


done < "$filename"


echo "$count"








echo "--------------------------------------------------------------------------------------------------------------"





echo "Echo total number of characters present in the file"





count=0


while read -n1 char


do


((count++))


done < "$filename"


echo "$count"
