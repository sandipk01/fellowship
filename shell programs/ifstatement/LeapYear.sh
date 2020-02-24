#Write a program that takes a year as input and outputs the Year is a Leap Year or not
#a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless
#divisible by 400.

#INPUT
printf "Enter The Year\n"
read year

#check year is divisible by 4 Or year is divisible by 100 And year is divisible by 100 then only leap year
if [ $(( $year % 4 ))  -eq 0  -o $(( $year % 100 )) -eq 0 -a $(( $year % 400 )) -eq 0 ]
	then
		printf "leap year\n"
	else
		printf "not leap year\n"
fi
