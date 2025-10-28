n=$1
k=$2
read -p "Enter first number (k): " k
read -p "Enter choice: " choice
if [ "$choice" -lt 0 ]; then
    echo "Enter a valid choice"
else
    for (( i=0; i<k; i++ )); do
        if [ "$k" -eq "$choice" ]; then
            echo "$choice"
        fi
    done
fi
read -p "Enter second number (n): " n
read -p "Enter choice: " choice
if [ "$choice" -lt 0 ]; then
    echo "Enter a valid choice"
else
    for (( i=0; i<n; i++ )); do
        if [ "$n" -eq "$choice" ]; then
            echo "$choice"
        fi
    done
fi

