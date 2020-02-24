#!/bin/bash -x

#Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise.

# $1 MONTH $2 DATE

#CONSTANTS
MONTH=$1
DATE=$2
MARCH=3
JUNE=6
MARCH_START=20
MONTH_END=31
MONTH_START=1
JUNE_END=20
APRIL=4
MAY=5

#VARIABLES
flag=0

#check month is greater than equal to 3 and month less than equal to 6
if (( $MONTH >= $MARCH && $MONTH <= $JUNE ))
	then
		#check (month==3) && (date >=20 && date<=31 ) && (month >=4 && month <= 5 && month >=2) then valid
     	if (( ( $MONTH == $MARCH && $DATE >= $MARCH_START && $DATE <= $MONTH_END ) || ( $MONTH == $JUNE && $DATE >= $MONTH_START && $DATE <= $JUNE_END ) ))
     		then
     			result="valid"
				flag=1
			else
				result="invalid"
     	fi

		#check (month == 6) && (date >=1) && (date<=20) the valid
      if (( flag==0 ))
			then
				if (( $MONTH >= $APRIL && $MONTH <= $MAY && $DATE >= $MONTH_START && $DATE <= $MONTH_END ))
      			then
        				result="valid"
        			else
						result="invalid"
				fi
		fi

	else 
   	result="invalid"
fi

printf "$result\n"


