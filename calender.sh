#!/bin/bash -x

read -p "enter date" d
read -p "enter month" m
read -p "enter year" y
echo $d $m $y
y0=$((y-((14-m)/12)));
x=$(( y0+y0/4-y0/100+y0/400));
m0=$((m+12*((14-m)/12)-2))
d0=$(((d+x+31*m0/12)%7));
case $d0 in 
 	0)echo "sunday";;
	1)echo "monday";;
	2)echo "tuesday";;
	3)echo "wednnesday";;
	4)echo "thursday";;
	5)echo "friday";;
	6)echo "saturday";;
esac
