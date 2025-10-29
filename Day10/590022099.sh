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
isCount=$(grep -ow 'is' RohanSharma.txt | wc -l)
echo "$isCount"
echo "$count"
echo "$totalCount"

