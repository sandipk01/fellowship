#!/bin/bash -x
#Read a Number and Display the week day (Sunday, Monday,...)

#INPUT
echo "Enter The Number"
read number

#CHECK NUMBER IS EQUAL TO DAY
case $number in
	0)
		echo "sun"
	;;
	1)
		echo "mon"
	;;
	2)
		echo "tue"
	;;
	3)
		echo "wed"
	;;
	4)
		echo "thu"
	;;
	5)
		echo "fri"
	;;
	6)
		echo "sat"
	;;
esac
