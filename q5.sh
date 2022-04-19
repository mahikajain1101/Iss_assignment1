#!/bin/bash
read string
len="${#string}"
## part a
for ((i=1;i<=len;i++))
do
    temp=${string: -i}
    rest="${temp#?}"
    first=${temp%"$rest"}
    printf $first
done
echo
echo 
## part b
for ((i=1;i<=len;i++))
do
    temp=${string: -i}
    rest="${temp#?}"
    first=${temp%"$rest"}
    first="$(echo $first | tr "0-9a-zA-Z" "1-9a-zA-Z_")"
    printf $first
done  
echo
echo
## part c
temp=${string:0:len/2}
for ((i=1;i<=len/2;i++))
do
    temp1=${temp: -i}
    rest="${temp1#?}"
    first=${temp1%"$rest"}
    printf $first
done
printf ${string: -len/2}
echo

