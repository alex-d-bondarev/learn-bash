#!/bin/bash

# Write a script in which you assign two integer values to two variables. 
# The script should calculate the surface of a rectangle which has these proportions. 
# It should be aired with comments and generate elegant output.

# Read input parameters
SIDE1=$1
SIDE2=$2

printf "\nGiven Recatangle has sides ${SIDE1} and ${SIDE2}\n\n"

echo "Calculating rectangle surface area by multiplying ${SIDE1} and ${SIDE2}"

echo "Surface area is $[${SIDE1}*${SIDE2}]"
echo
