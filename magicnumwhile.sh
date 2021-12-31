#!/bin/bash -x
echo " think of number between 1 and 100"
left=0;
right=100;
while [ $((right-left)) -gt 0 ]
do
 	midval=$(((left+right)/2))
  	read -p "is  $midval your number?" ans
	if [ "$ans" == "y" ]
	then
	  echo "your number is $midval "
	  break
	fi
	read -p "is your number between $left and $midval?" userip
 	case $userip in
 		y)right=$midval;;
		n)left=$midval;;
	esac
done	

