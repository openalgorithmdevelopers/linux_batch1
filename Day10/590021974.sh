fileName="RohanSharma.txt"
count=0
while IFS= read  -r -n1 char
do
if [ "$char" = " " ]
then
((count++))
fi
done < "$fileName"
echo "$count"
count=0
searchforchar="is"
while read -n2 char
do
if [ "$char" = $searchforchar ]
then
((count++))
fi
done < "$fileName"
echo "$count"
count=0
while read -n1 char
do
((count++))
done < "$fileName"
echo "$count"

