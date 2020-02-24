#!/bin/bash -x

#Write a function to check if the two numbers are Palindromes

#INPUT
printf "Enter The Number\n"
read number

function isPalindrom(){
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
		printf "palindrom\n"
	else
		printf "not Palindrom\n"
fi
}

printf "$( isPalindrom )\n"
