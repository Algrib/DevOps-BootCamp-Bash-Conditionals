#!/bin/bash
result=0
for i in $(echo $1 | tr ',' '\n')
do
[[ $((i%2)) -eq 0 ]] && result=$((result+$i))
done
echo $result
