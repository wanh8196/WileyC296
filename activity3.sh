#!/bin/sh

echo "Enter your lottery number:"
read input

arr=`shuf -n 5 -e {1..50}`
arr+=`shuf -n 1 -e {1..10}`

match=0
count=0

for i in "${arr[@]}"
do
	if [ "$input" = "$i" ]
	then
		echo "You match!"
		((count++))
		((match++))
elif [ "$input" = "$i" ] && [ "$count" = 6 ]
then
	((match++))
	echo "You match the bonus ball!"
	fi
done

if [ "$match" = 0 ]
then
	echo "You have no matches!"
fi


echo "Number of matches:" $match
echo $arr  > lottery`date +%Y%m%d`.txt

