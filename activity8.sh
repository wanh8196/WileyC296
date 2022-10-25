#!/bin/sh

#declare variables
sum=0
multiply=1
avg=0
user_input='yes'

echo "Enter a minimum of 5 integers:"
for((i=0;i<10;i++))
do
	if [ $i -gt 4 ]
	then
		echo "Do you want to enter the" $(($i+1))"th number? (yes/no)"
	read user_input

	if [ $user_input = 'no' ]
	then
	break
	fi

	fi
	
	read number
	arr[i]=$number
done

min="${arr[0]}"
max="${arr[0]}"
for v in ${arr[@]}
do
	#calculate sum
	sum=$(($sum+v))
	
	#find min
	if [ $v  -lt $min ]
	then
		min=$v
	fi
	#find max
	if [ $v -gt $max ]
	then
		max="$v"
	fi
	#calculate product
	multiply=$(($multiply*v))
done
#Calculate average
avg=$(($sum/$i))

echo "The integers you have entered are:" ${arr[@]} 
echo "Product of the intergers is:" $multiply
echo "Average of the integers is:" $avg
echo "Sum of the integers is:" $sum
echo "Min of the integers is:" $min
echo "Max of the integers is:" $max
