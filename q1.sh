#!/bin/bash
file="quotes.txt"
## to remove spaces
awk 'NF' $file
echo 
echo Part b
## to remove duplicate lines
awk '!seen[$0]++' $file
