#!/bin/bash -x

#Extend the program to take a range of number as input and output the Prime Numbers in that range.

#INPUT
printf "Enter The Start rang\n"
read startNumber
printf "Enter The End Rang\n"
read endNumber

#ADDING NUMBER START - END RANG
for (( index=$startNumber; index<=$endNumber; index++ ))
do 
	flag=0
   	for (( index2=2; index2<=$index/2; index2++ ))
		do
      	#IS NUMBER IS DIVISIBLE BY ZERO
  			if [ $(( $index % $index2 )) -eq 0 ]
				then
    		 		flag=1;
     		 		break
			fi
   	done

      	#FLAG ZERO THEN PRIME
	   	if [ $flag -eq 0 ]
				then
  					printf $index
				else
   				continue
			fi
done
