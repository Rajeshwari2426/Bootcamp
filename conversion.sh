#!/bin/bash -x.

in=42;
ft=12;
echo $(($in/$ft))"ft"



l=60;
b=40;
#feet=0.3;
area=$(($l*$b));
echo $(($area*929/10000)) "m"

totalarea=$(($area*25*229/10000000))
echo $totalarea"acres"

