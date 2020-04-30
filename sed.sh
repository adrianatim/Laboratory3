#!/bin/bash

#everything is working properly 
echo 1. Every line from the file need to start with 'abc':i
sed 's/^/abc/gi' text.txt

echo 2. Replace every empty line with 'empty':
sed 's/^$/empty/gi' text.txt

echo 3. Conevert the tabs in 3 spaces:
sed 's/[	]/   /gi' text.txt

echo 4. Rotate with one position every triplet of 3 characters:
sed 's/\([a-z]\)\([a-z]\)\([a-z]\)/\3\1\2/gi' text.txt
