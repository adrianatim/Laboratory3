#!/bin/bash

#it's not what it's supposed to be
echo 1. The lines which have the word "cat" will be displayed:
grep -P ' cat' -i  text.txt

#if we have ^ before an expression, this means that we search for that expression at the begining of the lines
echo 2. The lines that contains the prefix "ing" will be dispalyed:
grep -P '^ing' text.txt

#(..) this means that we search in line for groups of 2 characters and '+' means that we expect one more character
echo 3. The lines which has the number of caracters is an odd number will be displayed:
grep -v '^\(..\)\+$' text.txt

#it's not what it's supposed to be
echo 4. The words that contains 3 consecutive vocals will be displayed:
grep -i '^[^ ]*\([^aeiou][^ ]*\)\{3,\}$' text.txt
