#!/bin/bash -x

#Use Random to get Dice Number between 1 to 6

#CONSTANTS
START_RANDOM=1
END_RANDOM=6

#VARIABLE 
randomNumber=0

#generating random number 1-6
randomNumber=$(( (RANDOM % $END_RANDOM) + $START_RANDOM ))

#displaying random number
printf "$randomNumber\n"
