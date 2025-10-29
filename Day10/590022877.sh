
fileName=RohanSharma.txt

spacecount=0
charactercount=0

while IFS= read -n1 char
do
((charactercount++))
if [ "$char" = " " ]
    then
        ((spaceCount++))
    fi
done < "$fileName"


echo "Number of spaces: $spaceCount"
echo "Total number of characters: $charactercount"
