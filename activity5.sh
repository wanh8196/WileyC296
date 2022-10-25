#!/bin/sh

echo "Enter a number:"
read number

a=0
while [ $number -gt 0 ]
do
	a=$(($a*10))
	b=$(($number%10))
	a=$(($a+$b))
	number=$(($number/10))
done
echo "The number is:" $a

