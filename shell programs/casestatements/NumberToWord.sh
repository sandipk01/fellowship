#!/bin/bash -x
#Read a single digit number and write the number in word using Case

#INPUT
echo "Enter The Number"
read number

#IS NUMBER BETWEEN 0-9
if [ $number -lt 0 -o $number -gt 9 ]
then 
	echo "number must be between 0-9"
else

	case $number in
	0)
   	echo "zero"
	;;
	1)
   	echo "one"
	;;
	2)
   	echo "two"
	;;
	3)
   	echo "three"
	;;
	4)
   	echo "four"
	;;
	5)
  		echo "five"
	;;
	6)
   	echo "six"
	;;
	7)
   	echo "seven"
	;;
	8)
   	echo "eigth"
	;;
	9)
   	echo "nine"
	;;	
	esac
fi



