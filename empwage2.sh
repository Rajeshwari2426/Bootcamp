#!/bin/bash -x

isfulltime=1;
isparttime=2;
emprateperhr=20;
randomcheck=$((RANDOM%3));

if [ $isfulltime -eq $randomcheck ];
then
	emphr=8;
elif [ $isparttime -eq $randomcheck ];
then
	emphr=4;

else
	emphr=0;
fi

salary=$(($emphr*$emprateperhr));
echo "salary:" $salary
	
