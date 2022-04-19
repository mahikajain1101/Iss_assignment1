#!/bin/bash
file="quotes.txt"
outfile="speech.txt"
i=0
while read line;
do
i=$(( i + 1 ))
string=$line
if [ -z "$string" ]
then
    echo
    continue;
fi
searchstr="~"
temp1=${string#*$searchstr}
temp2=${string%$searchstr*}
echo $temp1 once said, \"$temp2\"
done <"$file">"$outfile"
