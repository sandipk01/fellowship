#!/bin/bash

#Write a Program to show Sum of three Integer adds to ZERO

#CONSTANT
END_VALUE=4

#variable
startValue=-2
count=0
declare -a array
length=0
sum=0

#ADDING NUMBERS IN ARRAY FROM -2 To 2
while [ $count -le $END_VALUE ]
do
	array[$count]=$startValue;
   startValue=$(( $startValue + 1 ))
	count=$(( $count + 1 ))
done

length=${#array[@]}

#ADDING ALL COMBINATION OF NUMBERS FROM ARRAY 
for (( index=0; index<length; index++ ))
do
	for (( index2=0 ; index2<length; index2++ ))
	do
		for (( index3=0 ; index3<length; index3++ ))
		do
			sum=$(( ${array[index]} + ${array[index2]} + ${array[index3]} ))
			if (( $sum == 0 ))
				then
					echo ${array[index]} "+" ${array[index2]} "+" ${array[index3]} "=" $sum
			fi
		done
	done
done 
