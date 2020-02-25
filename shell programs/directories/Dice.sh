#!/bin/bash -x

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

