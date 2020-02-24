#!/bin/bash -x

#Write a program that takes User Inputs and does Unit Conversion of different Length units

#CHOICES
echo "Enter 1 for Feet to inch  Conversion"
echo "Enter 2 for Feet to Meter Conversion"
echo "Enter 3 for Inch to Feet Conversion"
echo "Enter 4 for Meter to Feet Conversion"
#INPUT
read value

case $value in
1)
	echo "---Feet to Inches Conversion---"
	echo "Enter the value in Feet"
	read feet
  	#converting Feet to inch
	inch=$(( $feet * 12 ));
	echo $inch "inch"
;;
2)
	echo "---Feet to Meter Conversion---"
   echo "Enter The value in Feet"
   read feet

	#converting feet to meter 

   meter=`echo "$feet * 0.3048" | bc -l`;
   echo $meter "meter"
;;
3)
	echo "---Inch to feet Conversion---"
   echo "Enter The Value in Inches"
	read inch

   #converting inch to feet
   feet=`echo "$inch * 0.0833333" | bc -l`;
   echo $feet "feet"
;;
4)
	echo "---Meter To feet Conversion---"
	echo "Enter The value in metere"
	read meter
   feet=`echo " $meter * 3.28084" | bc -l `;
   echo $feet "feet"
;;
esac
