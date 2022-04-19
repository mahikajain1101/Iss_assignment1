#!/bin/bash
read file
## part a
wc -c < "$file"
## part b
wc -l < "$file"
#part c
wc -w < "$file"
echo
## part d
i=0
while read line;
do
i=$(( i + 1 ))
printf "Line No: <$i> - Count of Words:[$(echo $line | wc -w)]\n"
done <"$file" 
echo
## part e
sed -e  's/[^A-Za-z]/ /g' $file | tr 'A-Z' 'a-z' | tr ' ' '\n' | grep -v '^$'| sort | uniq -c | awk '{print "Word: <" $2 "> - Count of repetition: [" $1 "]"}'