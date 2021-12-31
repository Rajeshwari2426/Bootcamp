#!/bin/bash -x

isfulltime=1;
isparttime=2;
totalsalary=0;
emprateperhr=20;
numworkingdays=20;
for ((day=1;day<=numworkingdays;day++))
do
	empcheck=$((RANDOM%3));

		case $empcheck in

        		$isparttime)
                		emphr=4;;
        		$isfulltime)
                        	emphr=8;;
        		*)
                	        emphr=0;;
		esac

		salary=$(($emphr*$emprateperhr*$numworkingdays));
 		totalsalary=$(($totalsalary+$salary));
done		
	 echo "total salary  " $totalsalary;
