#!/bin/bash -x

#declaring variables
win=0
headCount=0
tailsCount=0

#checking from both of them who reached till count 11 take the count of head and tails
while [[ $headCount != 11 && $tailsCount != 11 ]]
do
	randomFlipCoin=$(( (RANDOM%2) ));
 	if [ $randomFlipCoin -eq 1 ]
   	then
	   	headCount=$(( $headCount + 1 ));
	fi
   if [ $randomFlipCoin -eq 0 ]
   	then
      	tailsCount=$(( $tailsCount + 1 ));
	fi
done

printf "head=$headCount tails=$tailsCount\n";
