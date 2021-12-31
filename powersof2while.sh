#!/bin/bash -x
read -p "enter n" n
i=1;
while [ $i -lt $n ]
do
  
    p=$((2**$i))	
    ((i++))
 
 if [ $p -lt 256 -o $p -eq 256 ]
 then
   echo "2^$i" $p
 else
  break;
  fi
done



