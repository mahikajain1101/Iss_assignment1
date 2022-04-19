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
sed -e  's/[^A-Za-z]/ /g' $file | tr ' ' '\n' | awk 'BEGIN { FS="[^a-zA-Z]+" } {
        for (i=1; i<=NF; i++) {
            word = tolower($i)
            words[word]++
        }
    }
    END {
        for (w in words)
            if (words[w]!=1)
            {
                printf("Word: <%s> - Count of repetition: [%d]\n", w, words[w]);
            }
    } '
