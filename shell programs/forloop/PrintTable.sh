#!/bin/bash -x

# Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n.

# $1 COMMAND LINE ARGUMENTS

#VARIABLES
count=0
table=0
power=0

#CALCULATING 2^n
power=`echo "2 ^ $1" | bc -l`;

#ITERATING TABLE TILL N
for (( index=1; index<=$1; index++ ))
do
	#COUNTING TABLE
   table=$(( $1 * $index ));

   #CALCULATING TABLE ^ 2
   count=`echo  "$table ^ 2" | bc -l`;
   #CHECKING TABLE ^2 LESS THAN EQUAL TO 2^n
   if [ $count -le $power ]
  		then
   		echo $count;
	fi
done
