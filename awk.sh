#!/bin/bash

echo 1. Display all the usernames:
awk -F: '{print $1}' seminar.txt
# -F is to tell awk that the input file is separated by ':'

echo 2. Display all the names:
awk -F: 'NR%2==1 {print $5}' seminar.txt

echo 3. Display all the names which starts vith a vowel:
awk -F: '/^[aeiouAEIOU]/ {print $1}' seminar.txt

echo 4. Display all the names with the id a enen number:
awk -F: '$3%2==0 {print $5}' seminar.txt

echo 5. Display all the usernames having their last field end eith bash:
awk -F: '$NF ~ /bash$/ {print $1}' seminar.txt

echo 6. Display the full names of the students from group 917:
awk -F: '$6 ~ /\/gr917\// {print $5}' seminar.txt

echo 7. Display just the second name of the sturdents:
awk -F: '$5 ~ /^[A-Z]/ {print $5}' seminar.txt | cut -d' ' -f1

echo 8. Display all the names that starts with m and the id divizible with 7:
cat seminar.txt| awk -F: '$1 ~ /^m/ && $3%7==0 {print$5}'
