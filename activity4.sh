#!/bin/sh

echo "Enter your password: "
read password
length=`echo  "$password" | wc -m`
letter=`echo  "$password" | grep -i "[a-z]"`
number=`echo  "$password" | grep "[0-9]"`
upperCase=`echo  "$password" | grep "[A-Z]"`
lowerCase=`echo  "$password" | grep "[a-z]"`

#Check if length is 8 or more character
if (length < 8)
then
	echo "Password must contain 8 or more characters"	
	#Check if password contain letters
	elif [ -z "$letter" ]
	then
		echo "Password must contain at least 1 letter"		
		#Check if password contain numbers
	       elif [-z "$number"]
	       then
			echo "Password must contain at least 1 number" 	 		
			#Check if password contain uppercase
			elif [-z "$upperCase"]
			then
				echo "Password must contain at least 1 uppercase letter"				
				#Check if password contain lowercase
				elif [-z "$lowerCase"]
				then
					echo "Password must contain at least 1 lowercase letter"
else
	echo "Your password is accepted!"
fi

exit 0

