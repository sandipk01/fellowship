#!/bin/bash -x

#magic Number

#INPUT
echo "Think The Number Between  1-100"
read number


#VARIABLE
startNumber=1
endNumber=100

#find mid number between star and end
midNumber=$(( ( $startNumber+$endNumber ) / 2 ));

#checking mid is greater than number
if [ $number -lt  $midNumber ]
	then
		endNumber=$midNumber;
fi

#checking mid is less than number
if [ $number -ge $midNumber ]
	then
		startNumber=$midNumber;
fi

#while number is not found iterating loop 
while [[ $startNumber -lt $endNumber ]]
do
	if [ $startNumber -eq $number ]
   	then
      	printf "$startNumber\n";
         printf "Number Found\n";
		   break
      else
         printf "$startNumber\n";
         startNumber=$(( $startNumber +1 ));
   fi
done
