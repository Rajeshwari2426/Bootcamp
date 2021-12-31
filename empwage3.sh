#!/bin/bash -x

isfulltime=1;
isparttime=2;
emprateperhr=20;
empcheck=$((RANDOM%3));

case $empcheck in

	$isparttime)
   		emphr=4;;
	$isfulltime)
			emphr=8;;
	*)
			emphr=0;;
esac

salary=$(($emphr*$emprateperhr));
echo "salary:" $salary
