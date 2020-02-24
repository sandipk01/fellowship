#!/bin/bash -x
#Write a program to simulate a coin flip and print out Heads or Tails accordingly.

#VARIABLE
random=0

#CONSTANT
RANDOM_END=2

#RANDOM NUMBER BETWEEN 0 AND 1
random=$(( RANDOM % $RANDOM_END ));

#ZERO THEN HEAD ELSE TAILS
if [ $random -eq 0 ]
	then
		printf "Head\n"
	else 
		printf "Tails\n"
fi


