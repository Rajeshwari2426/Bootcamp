#!/bin/bash -x

isfulltime=1;
isparttime=2;
absent=0;
maxhrsinmonth=4;
numworkingdays=20;

function calculateWorkingHour() {
	local $empcheck=$1
	case $empcheck in
		$absent)
			workingHour=0;
			;;

		$isfulltime)
			workingHour=8;
			;;
		$isparttime)
			workingHour=4;
			;;
	esac;
	echo $workingHour;
}

perHourSalary=20;
totalSalary=0;
totalWorkingHour=0;
totalworkingdays=0;

function getempwage() {
	local emphr=$1
	echo $(($emphr*$perHourSalary))
}

while [[ $day -le $numworkingdays && $totalWorkingHour -lt $maxhrsinmonth ]]
do
	((totalworkingdays++));
	empcheck=$((RANDOM%3));
	wHour="$(calculateWorkingHour $empcheck )"
	totalWorkingHour=$(($totalWorkingHour + $wHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
   
	salary=$(($perHourSalary * $wHour));
	totalSalary=$(($totalSalary + $salary));
#	 dailywage[$totalworkingdays]=$(($wHour*$perHourSalary))
#	((totalworkingdays++));
 	dailywage[$totalworkingdays]="$(getempwage $wHour)"
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";
echo ${dailywage[@]}
