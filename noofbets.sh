#!/bin/bash -x
balance=100
losscount=0
wincount=0
noofbets=0
while [ $balance -gt 0 -a $balance -lt 200 ]
do
	bet=$((RANDOM%2))
	case $bet in
	   0)((losscount++));((balance--));;
	    1)((wincount ++));((balance++));;
	esac
((noofbets++))
done
echo "game ended with balance: $balance,
wincount: $wincount,
losscount: $losscount,total: $noofbets"
