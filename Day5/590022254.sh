#!/bin/bash
# Simple calculator

echo "Enter first number:"
read a

echo "Enter second number:"
read b

echo "Enter operation (+, -, *, /):"
read op

if [ "$op" = "+" ]; then
  echo "Result: $((a + b))"
elif [ "$op" = "-" ]; then
  echo "Result: $((a - b))"
elif [ "$op" = "*" ]; then
  echo "Result: $((a * b))"
elif [ "$op" = "/" ]; then
  if [ "$b" -eq 0 ]; then
    echo "Cannot divide by zero!"
  else
    echo "Result: $((a / b))"
  fi
else
  echo "Invalid operation!"
fi

#!/bin/bash
# Find file path in current folder

echo "Enter file name:"
read fname

if [ -f "$fname" ]; then
  echo "File found at: $(realpath "$fname")"
else
  echo "File not found in this directory!"
fi
