#!/bin/bash -x

read -p "enter year" y

if [ $((y%100)) -eq 0 ]
then 
  if [ $((y%400)) -eq 0 ]
   then 
 	echo "$y is  leap year"
   else 
	echo " $y is not leap year"
    fi
else
  if [ $((y%4)) -eq 0 ]
   then
  	echo "$y is a leap year"
   else
        echo " $y is not a leap year"
  fi
fi
