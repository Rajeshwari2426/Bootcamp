#!/bin/bash -x

startdate=20
enddate=20;
startmonth=3;
endmonth=6;
read -p "enter month" m
read -p "enter date" d
if [ $m -gt $endmonth -o $m -lt $startmonth ]
then 
	echo "false"
elif [ $m -eq $endmonth -a $d -lt $startdate ]
then
 	echo "false"
elif [ $m -eq $endmonth -a $d -gt $enddate ]
then
	echo "false"
else
	echo "true"
fi

