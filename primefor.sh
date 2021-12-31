#!/bin/bash -x
read -p "enter a number" n

isprime=1;
for ((i=1;i<=n;i++))
do
 if [ $((n%i)) -eq 0 ]
 then 
  isprime=0
  break;
 fi
done
if [ $isprime -eq 1 ]
then 
   echo "it is prime number"
elif [ $n -eq 2 ]
then
    echo "it is prime"
else
   echo "it is not prime number"
fi
