#!/bin/bash

echo 1. The sum of the first 2 numbers from each line:
awk 'x=$1+$2 {print x}' awk.txt

echo 2. The sum of the first 2 numbers from odd lines:
awk 'NR%2!=0 && x=$1+$2 {print x}' awk.txt

echo 3. The sum of the first 2 numbers from odd lines which has more than 5 numbers:
awk 'NR%2!=0 && NF>5 && x=$1+$2 {print x}' awk.txt

echo 4. The sum of the first number from each line:
awk -F: -f ex4.awk awk.txt

#the NF is taking just the value 1 and I don't know why
echo 5. The sum of the numbers:
awk -F: -f ex5.awk awk.txt

