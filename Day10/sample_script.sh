#fileName="string.sh"
fileName=RohanSharma.txt

count=0
searchForChar="i"

while read -n1 character 
do
	echo "character is $character"
	if [ "$character" = $searchForChar ]
	then
		((count++))
	fi		
done < "$fileName"

echo "Character $searchForChar appeared $count number of times"
