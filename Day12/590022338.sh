if [ $# -eq 0 ]
then
   echo "Please give a file name."
   exit 1
fi

file=$1
output="file_name_stats.txt"

echo "Top 5 most occurring words:" > $output
cat $file | tr " " "\n" | sort | uniq -c | sort -nr | head -5 >> $output

echo "Total number of unique words:" >> $output
cat $file | tr " " "\n" | sort | uniq | wc -l >> $output

echo "All words and their frequency:" >> $output
cat $file | tr " " "\n" | sort | uniq -c | sort -nr >> $output

echo "Done!"
