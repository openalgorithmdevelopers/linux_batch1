count=0        
totalCount=0   
while IFS= read -r -n1 ch
do
    totalCount=$((totalCount + 1))
    if [ "$ch" = " " ]; 
then
        count=$((count + 1))
    fi
done < "RohanSharma.txt"
echo "number of spaces $count"
echo "total number of character $totalCount"

