#!/bin/bash -x

#Write a program in the following steps
#a. Roll a die and find the number between 1 to 6
#b. Repeat the Die roll and find the result each time
#c. Store the result in a dictionary
#d. Repeat till any one of the number has reached 10 times
#e. Find the number that reached maximum times and the one that was for minimum times

#VARIABLE
declare -A dice
min=10
length=0

#ARRAY
dice[1]=0
dice[2]=0
dice[3]=0
dice[4]=0
dice[5]=0
dice[6]=0

length=${#dice[@]}

#CHECK IF ANY DICE COUNT IS EQUAL TO 10 THEN STOP
function diceRoll(){
for (( count=1; count<=length; count++ ))
do
	if [ $(( ${dice[$count]} )) -eq 10 ]
		then
			echo $(( ${dice[$count]} ))
			break
		else
			continue
	fi
done
}

#ADDING COUNT OF DICE
while [ $(( "$( diceRoll )" )) -lt 10 ]
do
	random=$(( (RANDOM%6) + 1 ))
	if [ $random -eq 1 ]
		then
			dice[1]=$(( ${dice[1]} + 1 ))
	fi

	if [ $random -eq 2 ]
      then
         dice[2]=$(( ${dice[2]} + 1 ))
   fi

	if [ $random -eq 3 ]
      then
         dice[3]=$(( ${dice[3]} + 1 ))
   fi

	if [ $random -eq 4 ]
      then
         dice[4]=$(( ${dice[4]} + 1 ))
   fi

	if [ $random -eq 5 ]
      then
         dice[5]=$(( ${dice[5]} + 1 ))
   fi

	if [ $random -eq 6 ]
      then
         dice[6]=$(( ${dice[6]} + 1 ))
   fi
done

#CHECK MIN AND MAX DICE COUNT
for (( i=1; i<=length; i++ ))
do
	if [ $(( ${dice[$i]} )) -eq 10 ]
		then
			printf "dice $i is winner score= ${dice[$i]} \n"
		else
			echo ${i} "--" ${dice[$i]}
	fi

	if [ $(( ${dice[$i]} )) -lt $min ]
		then
			index=$i
			min=$(( ${dice[$i]} ))
	fi
done

printf "dice $index is  min $min \n"
<<<<<<< HEAD
=======

>>>>>>> 428369d363646661086fb20274d174803fcfa8d5
