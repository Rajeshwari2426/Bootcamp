#!/bin/bash -x
read -p "enter a number" n
factorial=1;
for ((i=2;i<=n;i++))
do
factorial=$(($factorial*i))

done
echo $factorial
