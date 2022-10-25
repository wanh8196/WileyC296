#!/bin/sh

a=0
arr=(1 2 3 4 5)

while [ $a -lt 5 ]
do
	b=$((1 + $RANDOM % 50))
	arr[$a]=$b
	a=$(($a+1))
done

echo "Enter your lottery number:"
read input

i=0
count=0

while [ $i -lt 5 ]
do
	current_number=${arr[$i]}
	if [ current_number = input ]
	then
		count=$(($count+1))
		echo "Your lottery numbers matches!"
	else echo "Your lottery numbers don't match!"
	fi
	i=$(($i+1))
done

echo "Number of matches:" $count
echo $arr[a]  >> lottery`date +%Y%m%d`.txt

