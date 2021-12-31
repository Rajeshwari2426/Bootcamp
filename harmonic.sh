#!/bin/bash -x
read -p "enter n" n
sum=0;
for ((i=1;i<=$n;i++))
do
  reciprocal=`echo $i | awk '{print(1/$i)}'`
  sum=`echo $sum $reciprocal | awk '{print($1+$2)}'`
done
echo "nth harmonic is :"$sum
