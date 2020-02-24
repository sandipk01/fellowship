#!/bin/bash -x

#Write a program that takes a date as input and prints the day of the week
#that date falls on. Your program should take three command-line arguments:
#m (month), d (day), and y (year). For m use 1 for January, 2 for February, and
#so forth. For output print 0 for Sunday, 1 for Monday, 2 for Tuesday, and so
#forth. Use the following formulas, for the Gregorian calendar (where /
#denotes integer division):
#• y0 = y − (14 − m) / 12
#• x = y0 + y0/4 − y0/100 + y0/400
#• m0 = m + 12 × ((14 − m) / 12) − 2
#• d0 = (d + x + 31m0 / 12) mod 7

# 1= month 2=day 3=year

#VARIABLE
MONTH1=$1
DATE1=$2
YEAR1=$3

year=$(( $YEAR1 - $(( 14 -$MONTH1 )) /12 ));
leap=$(( year+year/4-year/100+year/400 ));
month=$(( $MONTH1+12* $(( $(( 14-$MONTH1 )) / 12 )) -2 ));
day=$(( $(( $DATE1+leap+31*month/12 )) % 7 ))

#displaying Day
printf "$day\n" 

