#!/bin/bash -x
#Write a program that takes a input and determines if the number is a prime.

#INPUT
printf "Enter The Number\n"
read number

#VARIABLE
flag=0

if [ $number -eq 0 -o $number -eq 1 ]
	then
		flag=1
fi

for (( index=2; index<=$number/2; index++ ))
do
	#Checking if number is divisible by zero or not
	if [ $(( $number % $index )) -eq 0 ]
		then
			flag=1;
			break
	fi
done

if [ $flag -eq 0 ]
	then
   	printf "prime\n"
   else
   	printf "not prime\n"
fi
