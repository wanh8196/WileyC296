#!/bin/sh
#Define the questions in an array
questions=(
	"Poodle is one of the smartest dog breeds."
	"In the US, there are four poodle sizes that are officially recognized by the AKC (American Kennel Club)."
	"Poodles were originally bred as hunting dogs."
	"Poodles are medium energy dogs."
	"Poodles have hair instead of fur."
	"Poodle is a great breed for those who suffer allergy to dogs."
	"Poodle is a low maintenance breed."
	"Poodle's iconic coat cut (the continental cut) is used only for dog shows."
	"There are (almost) endless poddle crossbreeds."
	"Poodle needs a big home with a backyard to live in. An apartment would be too small and restricted for them."
)

#Define the answers in an array
answers=(
	"True"
	"False"
	"True"
	"False"
	"True"
	"True"
	"False"
	"False"
	"True"
	"False"
)
#number of questions
num_questions=10
#set number of correct answers to 0
correct=0

echo "Answer the following questions with True or False:"

#quiz loop
for i in $(seq 1 $num_questions)
do 
	echo "Question $i of $num_questions:" 
	echo "${questions[$i-1]}"
	echo "Your answer is (True/False):"
	read user_answer
	if [ "${user_answer,,}" = "${answers[$i-1],,}" ]
	then
	echo "Correct!"
	correct=$((correct+1))
		else
		echo "Incorrect!"
	fi
done

#Print the conclusion
echo "You got $correct correct answers out of $num_questions"

