#!/bin/bash -x

#Help user find degF or degC based on their Conversion Selection. 
# Use Case Statement and ensure that the inputs are within the Freezing Point 
# (0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
# a. degF = (degC * 9/5) + 32
# b. degC = (degF – 32) * 5/9

#INPUT
printf "Enter  1 for celsius to fahrenheit\n"
printf "Enter  2 for fahrenheit to celsius\n"
read choice

function inputTemp(){
	read temp
	echo $temp
}

#FIND DEGREE IN FARENHEIT 
function findDegF(){
   fahrenheit=`echo "( "$( inputTemp )" * 9/5 ) + 32" | bc -l`;
   printf "fahrenheit= $fahrenheit F\n"
}

#FIND DEGREE UIN CELSIUS
function findDegC(){
	celsius=`echo "( "$( inputTemp )" - 32 ) * 5/9"  | bc -l`;
   printf "celsius= $celsius C\n"
}

#CHOICE
case $choice in
1)
   printf "Enter the Temprature\n"
   printf "$( findDegF )\n"; 
;;
2)
	printf "Enter The Temprature\n"
   printf "$( findDegC )\n";
;;
*)
	printf "Please Enter The Valid Option\n"
;;
esac



