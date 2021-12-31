#!/bin/bash -x
minval=1000;
maxval=0;

for ((i=0;i<5;i++))
do
  randomnum=$((RANDOM%900+100))
   if [ $randomnum -gt $maxval ]
   then
    maxval=$randomnum
   elif [ $randomnum -lt $minval ]
   then  
      minval=$randomnum
#    break;
   fi
 echo $randomnum "random number"
done
  echo "min val" $minval
 echo "maxval " $maxval
