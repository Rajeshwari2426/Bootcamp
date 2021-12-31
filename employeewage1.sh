#!/bin/bash -x

ispresent=1;
randomcheck=$((RANDOM%2));

if [ $ispresent -eq $randomcheck ];
then
	empratePerHr=20;
	emphrs=8;
	salary=$(($emphrs*$empratePerHr));
	echo $salary;
else
	echo "salary=0";
fi

