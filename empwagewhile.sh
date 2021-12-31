#!/bin/bash -x

isfulltime=1;
isparttime=2;
totalsalary=0;
emprateperhr=20;
totalworkinghours=0;
day=1;
while [[ $day -lt 20 && $totalworkinghours -lt 40 ]]
do
        empcheck=$(( RANDOM%3 ));

                case $empcheck in

                        $isparttime)
                                emphr=4;;
                        $isfulltime)
                                emphr=8;;
                        *)
                                emphr=0;;
                esac
		totalworkinghours=$(($totalworkinghours +$emphr));
		if [ $totalworkinghours -gt 40 ]
		then
			totalworkinghours=$(( $totalworkinghours - $emphr ));
			break;
		fi

                salary=$(($emphr*$emprateperhr*$totalworkinghours));
                totalsalary=$(($totalsalary+$salary));
		((day++));
done
         echo "total salary  " $totalsalary;
