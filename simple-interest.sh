#!/bin/bash
# Simple Interest Calculator

# Check if exactly 3 arguments are provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  exit 1
fi

p=$1
r=$2
t=$3

# Calculate simple interest
si=$(echo "$p * $r * $t / 100" | bc -l)
echo "Simple Interest is: $si"
