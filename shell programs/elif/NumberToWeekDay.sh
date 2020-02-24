#!/bin/bash -x

#Read a Number and Display the week day (Sunday, Monday,...)

#INPUT
echo "Enter the Number between 0 to 1"
read number

#CHECH DAY EQUAL TO NUMBER.
if [ $number -eq 0 ]
then 
	echo "sun"
	elif [ $number -eq 1 ]
	then
		echo "mon"
	elif [ $number -eq 2 ]
	then
		echo "tue"
	elif [ $number -eq 3 ]
	then 
		echo "wed"
	elif [ $number -eq 4 ]
	then
		echo "thu"
	elif [ $number -eq 5 ]
	then
		echo "fri"
	elif [ $number -eq 6 ]
	then
		echo "sat"
 else 
		echo "invalid day"
fi











