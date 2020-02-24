#!/bin/bash -x

#Read a single digit number and write the number in word------

#INPUT
echo "Enter the Number"
read number

#CHECK NUMBER BETWEEN 0 - 9
if [ $number -gt 9 -o $number -lt  0 ]
then
	echo "please Enter the valid Number"
	else 
   	if [ $number -eq 0 ]
			then	
				echo "zero"
			elif [ $number -eq 1 ]
				then
					echo "one"
			elif [ $number -eq 2 ]
				then
					echo "two"
			elif [ $number -eq 3 ]
				then
					echo "three"
			elif [ $number -eq 4 ]
				then
					echo "four"
			elif [ $number -eq 5 ]
				then
					echo "five"
			elif [ $number -eq 6 ]
				then
					echo "six"
			elif [ $number -eq 7 ]
				then
					echo "seven"
			elif [ $number -eq 8 ]
				then
					echo "eight"
			elif [ $number -eq 9 ]
				then 
					echo "nine" 
   	fi
fi


