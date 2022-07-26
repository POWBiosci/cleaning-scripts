#!/bin/bash

#user input filename
read -p 'Input Filename: ' FILE

#awk basics
#print row (FNR==n for nth row)
#awk -F ',' 'FNR == 2 { print }' $FILE 
#print column, (print $NF for last column)
#awk -F "," '{ print $NF }' $FILE 

#get last column number
#last=$(awk -F "," '{ print NF }' $FILE | sort -nu | head -n 1)

#remove first and last column
#gcut --complement -d "," -f$last,1 $FILE  > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"

#remove 1st row
tail -n +2 $FILE  > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"

#cut first two columns
cut -d "," -f 3- $FILE > "$FILE.tmp" && mv "$FILE.tmp" "$FILE"

#run clean script
echo $FILE | python3 clean.py
