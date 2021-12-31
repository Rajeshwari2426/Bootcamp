#!/bin/bash -x

sum=0;
for(( i=0;i<5;i++))
do
   Tdigitnum=$((RANDOM%90+10))
   echo $Tdigitnum
   sum=$(($sum+$Tdigitnum))
done
echo "sum:" $sum
echo "avg:" $(($sum/5))
