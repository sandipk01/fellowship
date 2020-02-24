#!/bin/bash -x

#Write a program that reads 5 Random 2 Digit values , then find their sum and the average

#VARIABLE
firstRandomNumber=0
secondRandomNumber=0
thirdRandomNumber=0
fourthRandomNumber=0
fifthRandomNumber=0
sum=0
avg=0

#CONSTANTS
FIRST_RANDOM=10
LAST_RANDOM=89

#FIVE RANDOM NUMBERS
firstRandomNumber=$(( (RANDOM % $LAST_RANDOM) + $FIRST_RANDOM ));
secondRandomNumber=$(( (RANDOM % $LAST_RANDOM) + $FIRST_RANDOM ));
thirdRandomNumber=$(( (RANDOM % $LAST_RANDOM) + $FIRST_RANDOM ));
fourthRandomNumber=$(( (RANDOM % $LAST_RANDOM) + $FIRST_RANDOM ));
fifthRandomNumber=$(( (RANDOM % $LAST_RANDOM) + $FIRST_RANDOM ));

#calculating sum
sum=$(( $firstRandomNumber+$secondRandomNumber+$thirdRandomNumber+$FourthRandomNumber+$fifthRandomNumber));

#calculating avg
average=$(( $sum/5 ));

printf "sum : $sum\n";
printf "average :  $average\n";
