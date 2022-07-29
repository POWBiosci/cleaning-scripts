#!/bin/bash

#user input filename
read -p 'Input Filename: ' FILE

#remove 1st row
tail -n +2 $FILE  > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"

#cut first two columns
cut -d "," -f 3- $FILE > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"

#run clean script
echo $FILE | python3 clean.py
