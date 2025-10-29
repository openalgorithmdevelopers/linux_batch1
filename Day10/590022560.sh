file="RohanSharma.txt"
spaceCount=0
isCount=0
totalChar=0 
prevChar=""
while IFS= read -n1 -r char
do
	pair="${prevChar}${char}"
		if [ "$char" =  " " ]
		then
			spaceCount=$((spaceCount+1))
		elif [ "$pair" = "is" ]
		then
			isCount=$((isCount+1))
		fi
		prevChar="$char"
		totalChar=$((totalChar+1))
	done < "$file"
	echo "Total Space count: $spaceCount"
	echo "Total is count: $isCount"
	echo "Total Characters: $totalChar"



