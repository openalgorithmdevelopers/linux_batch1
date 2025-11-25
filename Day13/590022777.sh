if [ $# -ne 2 ];
then
echo "Wrong Input"
exit 1
fi
file=$1
target=$2
while IFS=" " read -r sno name marks ;
do
if [ "$name" = "$target" ];
then
echo "$marks"
exit 0
fi
done < "$file"

