#!/bin/bash

#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and store them in an array

#VARIABLE
count=0

for (( index=0; index<=100; index++ ))
do
	lastNumber=$(( $index%10 ));
	remainingNumber=$(( $index/10 ));
   #CHECK NUMBER IS REPEATED
	if [ $lastNumber -eq $remainingNumber -a $lastNumber -ne 0 ]
		then
			arr[count]=$index
			count=$(( $count + 1 ))
	fi
done

printf "%d\n" ${arr[@]}
