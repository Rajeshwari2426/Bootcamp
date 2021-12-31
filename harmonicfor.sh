#!/bin/bash -x
read -p "enter n" n
sum=0;
for ((i=1;i<=n;i++))
do
  sum=$(($sum+1/$i))
done
echo "nth harmonic is :"$sum
