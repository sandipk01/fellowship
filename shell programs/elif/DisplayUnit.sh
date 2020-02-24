#!/bin/bash -x

#Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...

#INPUT
echo "Please Enter the Number" 
read number 

#VARIABLE
i=4

#Checking each unit of a number
if [ $i -eq 4 ]
then
   next=$number;
   number=$(( $number%10 )); 
   next=$(( $next/10 ));
   echo "$number" "unit"
   i=$(( $i-1 ));
fi

if [ $i -eq 3 ]
then
   number=$(( $next%10 ));
   next=$(( $next/10 ));
   echo "$number" "ten" 
   i=$(( $i-1 ));
fi

if [ $i -eq 2 ]
then 
   number=$(( $next%10 ));
   next=$(( $next/10 ));
   echo "$number" "hundred" 
   i=$(( $i-1 ));
fi

if [ $i -eq 1 ]
then 
   number=$(( $next%10 ));
   echo "$number" "thousand" 
   i=$(( $i-1 ))
fi
