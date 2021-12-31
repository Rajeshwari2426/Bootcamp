#!/bin/bash -x

arr=unset

for((i=0;i<10;i++))
do
 random=$((RANDOM%900+100))

 arr[$i]=$random

done

sortedArr=(`for j in ${arr[@]};do echo $j;done | sort -n`)

echo ${sortedArr[@]}

echo ${sortedArr[1]}
echo ${sortedArr[8]}

#echo "2nd smallest is ${2ndSmallest} and second largest is ${2ndLargest}"
