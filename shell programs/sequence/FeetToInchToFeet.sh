#!/bin/bash -x

#Unit Conversion
#a. 1ft = 12 in then 42 in = ? ft

#INPUT
printf "Enter The value in ft\n"
read inputFeet

#Converting Feet to Inches
inch=$(( $inputFeet*12 ))
printf "$inch Inch\n"

#taking input in Inches
printf "Enter The Value in Inch\n"
read inputInch

#Converting Inch to feet
Feet=`echo "$inputInch * 0.0833333" | bc -l`
printf "$Feet Ft\n"
