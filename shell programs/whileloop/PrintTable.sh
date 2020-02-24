#!/bin/bash -x

POWER_OF_LIMIT=$1
value=1
calculatePower=1;

while (( $value <= $POWER_OF_LIMIT ))
do
    calculatePower=`echo "2 ^ $value" | bc -l`
        if [ $calculatePower -le 256 ]
           then
			     printf "$calculatePower\n"
    		     value=$(( $value + 1 ))
           else
              printf "power of 2 reached its limit which is 256\n"
              break
        fi
done
