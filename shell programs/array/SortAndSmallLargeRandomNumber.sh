#!/bin/bash

#Extend the above program to sort the array and then find the 2nd largest and the 2nd smallest element.

#CONSTANTS
START_RANDOM_NUMBER=100
END_RANDOM_NUMBER=899

#VARIABLES
randomNumber=0
declare -a randomArray
count=0
max=0
min=0
secondMax=0
secondMin=0

for (( index=0; index<10 ; index++ ))
do
   randomNumber=$(( (RANDOM % END_RANDOM_NUMBER) + START_RANDOM_NUMBER ));
   randomArray[$index]=$randomNumber;
done

length=${#randomArray[@]}

for (( index=0; index<10 ; index++ ))
do
   randomNumber=$(( (RANDOM % END_RANDOM_NUMBER) + START_RANDOM_NUMBER ));
   echo ${randomArray[index]}
done

echo "--------------------------------------"

#SORTING NUMBERS
for (( index=0; index<length; index++ ))
do
	for(( index2=index+1; index2<length; index2++ ))
	do
		if [ ${randomArray[index]} -gt ${randomArray[index2]} ]
		then
			temp=${randomArray[index]}
			randomArray[index]=${randomArray[index2]}
			randomArray[index2]=$temp
		fi
	done
done

for (( index=0; index<length; index++ ))
do
	echo ${randomArray[index]}
done


first=$(( $length-1 ));
second=$(( $length-2 ));

echo "first Largest number"  ${randomArray[first]};
echo "first smallest number"  ${randomArray[0]};
echo "second Largest number"  ${randomArray[second]};
echo "second smallest number" ${randomArray[1]};
