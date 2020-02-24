#!/bin/bash -x
#Write a program that computes a factorial of a number taken as input. 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

#INPUT
echo "enter the number"
read number

#VARIABLES
factorial=1;

# ITERATING LOOP 1 TO N
for (( index=1; inxed<=$number; index++ ))
do
  #FACTORIAL
   factorial=$(( $factorial * $index ));
	echo -n "$index"
		#INDEX REQUALS TO NUMBER THEN STOP
 	   if [ $index -eq  $number ]
      then
         break
      fi
   echo -n "*"
done

echo -n "="$factorial 
echo -e ""
