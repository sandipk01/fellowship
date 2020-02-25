#!/bin/bash

#Write a Program to generate a birth month of 50 individuals between the
#year 92 & 93. Find all the individuals having birthdays in the same month.
#Store it to finally print.

#VARIABLE
declare -A month
declare -A person
length=0
personCount=1

#DICTIONARY
month[1]=0
month[2]=0
month[3]=0
month[4]=0
month[5]=0
month[6]=0
month[7]=0
month[8]=0
month[9]=0
month[10]=0
month[11]=0
month[12]=0


length=${#month[@]}

for (( i=1; i<=50; i++ ))
do
	random=$(( (RANDOM % 12 ) + 1 ))
	case $random in
		1)
			person[$i]=$random
			month[1]=$(( ${month[1]} + 1 ))
		;;
		2)
			person[$i]=$random
			month[2]=$(( ${month[2]} + 1 ))
		;;
		3)
         person[$i]=$random
         month[3]=$(( ${month[3]} + 1 ))
      ;;
		4)
         person[$i]=$random
         month[4]=$(( ${month[4]} + 1 ))
      ;;
		5)
         person[$i]=$random
         month[5]=$(( ${month[5]} + 1 ))
      ;;
		6)
         person[$i]=$random
         month[6]=$(( ${month[6]} + 1 ))
      ;;
		7)
         person[$i]=$random
         month[7]=$(( ${month[7]} + 1 ))
      ;;
		8)
         person[$i]=$random
         month[8]=$(( ${month[8]} + 1 ))
      ;;
		9)
         person[$i]=$random
         month[9]=$(( ${month[9]} + 1 ))
      ;;
		10)
         person[$i]=$random
         month[10]=$(( ${month[10]} + 1 ))
      ;;
		11)
         person[$i]=$random
         month[11]=$(( ${month[11]} + 1 ))
      ;;
		12)
         person[$i]=$random
         month[12]=$(( ${month[12]} + 1 ))
      ;;
		*)
		printf "error\n"
		;;
		esac
done

personLength=$(( ${#person[@]} )) 
monthLength=$(( ${#month[@]} ))

for (( i=1; i<=personLength; i++ ))
do
			echo ${i} "--" ${person[$i]}
done

max=$(( ${month[1]} ))
month=0

for (( j=1; j<=monthLength; j++ ))
do
	echo ${j} "--" ${month[$j]}

   if [ $(( ${month[$j]} )) -ge $max ]
		then
			max=$(( ${month[$j]} ))
			month=$j
	fi
done

echo "month" $month  "max" $max
