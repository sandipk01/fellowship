#!/bin/bash -x

#---Write a program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value

#CONSTANTS
RANDOM_START=100
RANDOM_END=899

#VARIABLES
firstRandomNumber=0
secondRandomNumber=0
thirdRandomNumber=0
fourthRandomNumber=0
fifthRandomNumber=0
min=0
max=0

#FIVE RANDOM NUMBERS
firstRandomNumber=$(( (RANDOM % $RANDOM_END) + $RANDOM_START ));
secondRandomNumber=$(( (RANDOM % $RANDOM_END) + $RANDOM_START ));
thirdRandomNumber=$(( (RANDOM % $RANDOM_END) + $RANDOM_START ));
fourthRandomNumber=$(( (RANDOM % $RANDOM_END) + $RANDOM_START ));
fifthRandomNumber=$(( (RANDOM % $RANDOM_END) + $RANDOM_START ));

#MAX NUMBER
if (( $firstRandomNumber > $secondRandomNumber && $firstRandomNumber > $thirdRandomNumber && $firstRandomNumber > $fourthRandomNumber && $firstRandomNumber > $fifthRandomNumber ))
then
	max=$firstRandomNumber
fi

if (( $secondRandomNumber > $firstRandomNumber && $secondRandomNumber > $thirdRandomNumber && $secondRandomNumber > $fourthRandomNumber && $secondRandomNumber > $fifthRandomNumber ))
then
	max=$secondRandomNumber
fi
 
if (( $thirdRandomNumber > $firstRandomNumber && $thirdRandomNumber > $secondRandomNumber && $thirdRandomNumber > $fourthRandomNumber && $thirdRandomNumber > $fifthRandomNumber ))
then
   max=$thirdRandomNumber
fi

if (( $fourthRandomNumber > $firstRandomNumber && $fourthRandomNumber > $secondRandomNumber && $fourthRandomNumber > $thirdRandomNumber && $fourthRandomNumber > $fifthRandomNumber ))
then
   max=$fourthRandomNumber
fi   

if (( $fifthRandomNumber > $firstRandomNumber && $fifthRandomNumber > $secondRandomNumber && $fifthRandomNumber > $thirdRandomNumber && $fifthRandomNumber > $fourthRandomNumber ))
then
   max=$fifthRandomNumber
fi

#MIN NUMBER

if (( $firstRandomNumber < $secondRandomNumber && $firstRandomNumber < $thirdRandomNumber && $firstRandomNumber < $fourthRandomNumber && $firstRandomNumber < $fifthRandomNumber ))
then
	min=$firstRandomNumber
fi

if (( $secondRandomNumber < $firstRandomNumber  &&  $secondRandomNumber < $thirdRandomNumber && $secondRandomNumber < $fourthRandomNumber && $secondRandomNumber < $fifthRandomNumber ))
then
	min=$secondRandomNumber
fi
 
if (( $thirdRandomNumber < $firstRandomNumber && $thirdRandomNumber < $secondRandomNumber && $thirdRandomNumber < $fourthRandomNumber && $thirdRandomNumber < $fifthRandomNumber ))
then
   min=$thirdRandomNumber
fi

if (( $fourthRandomNumber < $firstRandomNumber && $fourthRandomNumber < $secondRandomNumber && $fourthRandomNumber < $thirdRandomNumber && $fourthRandomNumber < $fifthRandomNumber ))
then
   min=$fourthRandomNumber
fi   

if (( $fifthRandomNumber < $firstRandomNumber && $fifthRandomNumber < $secondRandomNumber && $fifthRandomNumber < $thirdRandomNumber &&  $fifthRandomNumber < $fourthRandomNumber ))
then
   min=$fifthRandomNumber
fi

printf "$firstRandomNumber $secondRandomNumber $thirdRandomNumber $fourthRandomNumber $fifthRandomNumber\n"
printf "Maximum $max\n"
printf "min $min\n"
