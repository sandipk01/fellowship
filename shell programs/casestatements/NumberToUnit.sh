#!/bin/bash -x

#Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...

#taking input from user
read number

#declaring variable
i=4

#check unit of a number
while [ $next -gt 0 ]
do
case $i in
4)
	next=$number;
   number=$(( $number%10 ))
   next=$(( $next/10 ))
   echo "$number" "unit"
   i=$(( $i-1 ))
;;
3)
	number=$(( $next%10 ))
   next=$(( $next/10 ))
   echo "$number" "ten"
   i=$(( $i-1 ));
;;
2)
	number=$(( $next%10 )
   next=$(( $next/10 ))
   echo "$number" "hundred"
   i=$(( $i-1 ))
;;
1)
 	number=$(( $next%10 ));
	echo "$number" "thousand"
   i=$(( $i-1 ))
;;
esac
done


