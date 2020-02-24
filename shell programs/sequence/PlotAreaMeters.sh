#!/bin/bash -x

#b. Rectangular Plot of 60 feet x 40 feet in meters

#VARIABLES
area=0
meter=0

#INPUT
printf "Enter The length\n"
read length
printf "Enter The Width\n"
read width

#CACULATING AREA
area=$(( length * width ));

#AREA TO METERS
meter=`echo "$area * 0.3048" | bc -l`
printf "$meter meter\n"
