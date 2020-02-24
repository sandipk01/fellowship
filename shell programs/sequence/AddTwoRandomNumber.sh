#!/bin/bash -x

#Add two Random Dice Number and Print the Result

#CONSTANTS
START_RANDOM=1
END_RANDOM=6

#VARIABLE
firstRandomNumber=0
secondRandomNumber=0
addition=0

#TWO RANDOM NUMBER
firstRandomNumber=$(( (RANDOM % $END_RANDOM) + $START_RANDOM ));
secondRandomNumber=$(( (RANDOM% $END_RANDOM) + $START_RANDOM ));

#adding two random Numbers
addition=$(( $firstRandomNumber+$secondRandomNumber ));

#displaying addition of two random Numbers
echo $firstRandomNumber "+" $secondRandomNumber "=" $addition;
