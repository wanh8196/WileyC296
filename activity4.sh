#!/bin/sh

echo "Enter your password: "
read password
#check length
if [ ${#password} -gt  7 ]
then
	con="TRUE"
else
	echo "Password length should be 8 or more characters."
	exit 1
fi
#check numbers
i=`echo $password | grep "[0-9]"`
if [ -z "$i" ]
then
	echo "Password must contain at least 1 digit."
	exit 1
else
	con="TRUE"
fi
#check letter
i=`echo $password | grep "[a-z]"`
if [ -z "$i" ]
then
	echo "Password must contain at  least 1 letter."
	exit 1
else
	con="TRUE"
fi
#check uppercase
i=`echo $password | grep "[A-Z]"`
if [ -z "$i" ]
then
	echo "Password must contain at least 1 uppercase."
	exit 1
else
	con="TRUE"
fi
#check lowercase
i=`echo $password | grep "[a-z]"`
if [ -z "$i" ]
then
	echo "Password must contain at least 1 lowercase."
	exit 1
else
	con="TRUE"
fi

echo "Password accepted."

