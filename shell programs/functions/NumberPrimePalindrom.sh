#!/bin/bash

#Take a number from user and check if the number is a Prime then show that its palindrome is also prime
#a. Write function check if number is Prime
#b. Write function to get the Palindrome
#c. Check if the Palindrome number is also prime

#INPUT
printf "Enter The Number\n"
read number

#PALINDROME FUNCTION
function palindrom(){
local number2=""
local next=0
local oldNumber=$number;
while [ $number -ne 0 ]
do
   next=$(( $number % 10 ));
   number=$(( $number / 10 ));
   newNumber="$newNumber$next";
done

if [ $oldNumber -eq $newNumber ]
   then
      echo "palindrom"
   else
      echo "not Palindrom"
fi
}

#ISPRIME FUNCTION
function prime(){
local flag=0
for (( i=2; i<=$number/2; i++ ))
do
	if [ $(( $number%$i )) -eq 0 ]
   	then
			 flag=1
			 break
	fi
done

if [ $flag -eq 0 ]
	then
   	echo "prime"
   else
   	echo "not prime"
fi
}

function palindromAndPrime(){

palindrom="$( palindrom )";
prime="$( prime )";
printf "given number is  $palindrom  |  $prime\n"

}

printf "$( palindromAndPrime )"
