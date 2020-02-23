#!/bin/bash -x

#Write a program that does the following
# a.Generates 10 Random 3 Digit number.
# b.Store this random numbers into a array.
# c.Then find the 2nd largest and the 2nd smallest element without sorting the array.

#CONSTANTS
RANDOM_NUMBER_START=100
RANDOM_NUMBER_END=899

#VARIABLES
randomNumber=0
declare -a randomArr
length=0
count=0
max=0
min=1000
secondMax=0
secondMin=1000

for (( index=0; index<10 ; index++ ))
do
	randomNumber=$(( (RANDOM	%	RANDOM_NUMBER_END) +	RANDOM_NUMBER_START ));
	randomArr[$index]=$randomNumber;
done

length=${#randomArr[@]}

for (( index=0; index<10 ; index++ ))
do
	randomNumber=$(( (RANDOM % RANDOM_NUMBER_END) + RANDOM_NUMBER_START ));
   echo ${randomArr[index]}
done

echo  "--------------------------------"

for (( index=0; index<length; index++ ))
do
	if [ ${randomArr[index]} -lt $min ]
		then
			secondMin=$min
			min=${randomArr[index]}
		elif [ ${randomArr[index]} -lt $secondMin -a ${randomArr[index]} -ne $min ]
			then
				secondMin=${randomArr[index]}
	fi

	if [ ${randomArr[index]} -gt $max ]
		then
          secondMax=$max;
          max=${randomArr[index]}
          	elif [ ${randomArr[index]} -gt $secondMax -a ${randomArr[index]} -ne $max ]
		   		then
                	secondMax=${randomArr[index]}
	fi
done
echo "smallest Number " $min "|  Largest Number"  $max

echo "Second Smallest Number" $secondMin "| Second Largest Number" $secondMax
