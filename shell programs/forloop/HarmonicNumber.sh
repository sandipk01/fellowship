#!/bin/bash -x

#Write a program that takes a command-line argument n and prints the nth harmonic number. Harmonic Number is of the form

# $1 COMMAND LINE ARGUMENT
printf "Hn = "

for (( index=1; index<=$1; index++ ))
do
	printf "1/$index"
   	if [ $index -eq $1 ]
  			then
     			break
			else
   			printf "+"
 		 fi
done

printf "\n"

