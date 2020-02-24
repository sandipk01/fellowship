#!/bin/bash -x

# Enter 3 Numbers do following arithmetic operation and find the one that is maximum and minimum

#INPUTS
echo "Enter the first number" 
read firstnumber 
echo "Enter the second number" 
read secondnumber 
echo "Enter the Third number" 
read thirdnumber

#ARTHMATIC OPERATIONS
firstOperation=$(( $firstnumber + ( $secondnumber * $thirdnumber ) ));
secondOperation=$(( $thirdnumber + ( $firstnumber / $secondnumber ) ));
thirdOperation=$(( ( $firstnumber % $secondnumber) + $thirdnumber ));
fourthOperation=$(( ( $firstnumber * $secondnumber ) + $thirdnumber ));

#CHECK MIN NUMBER
if [ $firstOperation -lt $secondOperation -a $firstOperation -lt $thirdOperation -a $firstOperation -lt $fourthOperation ]
then
	min=$firstOperation;
elif [ $secondOperation -lt $firstOperation -a $secondOperation -lt $thirdOperation -a $secondOperation -lt $fourthOperation ]
then 
	min=$secondOperation;
elif [ $thirdOperation -lt $firstOperation -a $thirdOperation -lt $secondOperation -a $thirdOperation -lt $fourthOperation ]
then 
	min=$thirdOperation;
elif [ $fourthOperation -lt $firstOperation -a $fourthOperation -lt $secondOperation -a $fourthOperation -lt $thirdOperation ]
then 
   min=$fourthOperation;

fi

#CHECK MAXIMUM NUMBER
if [ $firstOperation -gt $secondOperation -a $firstOperation -gt $thirdOperation -a $firstOperation -gt $fourthOperation ]
then
   max=$firstOperation;
elif [ $secondOperation -gt $firstOperation -a $secondOperation -gt $thirdOperation -a $secondOperation -gt $fourthOperation ]
then 
   max=$secondOperation;
elif [ $thirdOperation -gt $firstOperation -a $thirdOperation -gt $secondOperation -a $thirdOperation -gt $fourthOperation ]
then 
   max=$thirdOperation;
elif [ $fourthOperation -gt $firstOperation -a $fourthOperation -gt $secondOperation -a $fourthOperation -gt $thirdOperation ]
then 
   max=$fourthOperation;

fi

echo $firstOperation $secondOperation $thirdOperation $fourthOperation

echo "minmum number=" $min "maximum number=" $max
